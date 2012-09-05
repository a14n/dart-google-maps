#library("jsni");

#import('dart:html');
#import('dart:json');

//-------------------------
// basic types for wrapping
//-------------------------

/// Reference to a js element
class JsRef {
  int _jsId;
  
  JsRef._(this._jsId);
}

/// Represent a dart Object that wrap a js element
interface IsJsObject {
  JsRef get jsRef();
}

/// Default implementation of IsJsObject
class JsObject implements IsJsObject {
  JsRef jsRef;

  JsObject() { this.jsRef = newInstance("Object"); }
  JsObject.fromJsRef(this.jsRef);
  JsObject.newInstance(String objectName, [List args]) { jsRef = newInstance(objectName, args); }

  Object operator [](String name) => getProperty(this, name);
  void operator []=(String name, Object value) { setProperty(this, name, value); }

  Object callJs(String name, [List args]) => callFunction(this, name, args);
  JsRef getJsRef(String name) => getPropertyRef(this, name);
}

typedef Object CallbackFunction(List args);

//-----------------------
// constant/enum handling
//-----------------------

class JsConst implements IsJsObject, Hashable {
  static Map<Hashable, JsRef> _constRefs;
  static Object findIn(Object o, List elements) {
    final matchingElements = elements.filter((e){ return areEquals(e, o); });
    if (matchingElements.length === 1) {
      return matchingElements.iterator().next();
    } else {
      return null;
    }
  }

  final String jsName;

  const JsConst.fromJsName(String this.jsName);

  int hashCode() => jsName.hashCode();

  JsRef get jsRef()  {
    if (_constRefs === null){
      _constRefs = new Map();
    }
    if (!_constRefs.containsKey(this)){
      _constRefs[this] = getPropertyRef(null, jsName);
    }
    return _constRefs[this];
  }
  Object get value() => getProperty(null, jsName);
}


//--------------------------
// js <-> dart communication
//--------------------------

class _Callback {
  int callbackId;
  CallbackFunction _callbackFunction;
  _Callback(this.callbackId, this._callbackFunction);
}

bool _registered = false;
int _tmpDomId = 1;
int _jsQueryId = 1;
Map<int, Object> _results;

int _callbackId = 1;
Map<int, _Callback> _callbacks;

void _ensureRegistered() {
  if (_registered) {
    return;
  }
  _registered = true;

  // initialize globals
  _results = new Map();
  _callbacks = new Map();
  
  // register to answer
  window.on['answer_of_dart_to_js'].add((TextEvent event) {
    final answer = JSON.parse(event.data);
    _results[answer["queryId"]] = answer;
  }, false);
  
  // register for callback
  window.on['callback_for_dart'].add((TextEvent event) {
    final query = JSON.parse(event.data);
    final callbackQueryId = query["callbackQueryId"];
    final callbackId = query["callbackId"];
    final callback = _callbacks[callbackId];
    final params = query["params"];
    final args = params.map(_deserialize);
    final result = callback._callbackFunction(args);
    
    final answer = new Map();
    answer["callbackQueryId"] = callbackQueryId;
    answer["result"] = _serialize(result);

    // call synchronously
    //print("jsQuery : $jsQuery");
    final TextEvent eventToSend = document.$dom_createEvent('TextEvent');
    eventToSend.initTextEvent("answer_of_callback_for_dart", false, false, window, JSON.stringify(answer));
    window.$dom_dispatchEvent(eventToSend);
  }, false);
  
  // add js bridge
  final script = new ScriptElement();
  script.type = 'text/javascript';
  script.innerHTML = '''
(function(){
  var _jsId = 0;
  var _tmpDomId = 0;
  var _objects = {};
  var _callbackQueryId = 1;
  var _callbackResults = {};

  var isElement = function(o){
    return typeof HTMLElement === "object" ? o instanceof HTMLElement : //DOM2
      o && typeof o === "object" && o.nodeType === 1 && typeof o.nodeName==="string";
  };

  var createNew = function (functionName, args) {
    var functionObject = getObject(functionName);
    return createNewWithFunctionObject(functionObject, args);
  };
  var createNewWithFunctionObject = function(functionObject, args) {
    function tempCtor() {};
    tempCtor.prototype = functionObject.prototype;
    var instance = new tempCtor();
    functionObject.apply(instance,args);
    return instance;
  };
  var getObject = function(name){
    var currentObject = window;
    var properties = name.split(".");
    for (var i = 0; i < properties.length; i++) {
        currentObject = currentObject[properties[i]];
    }
    return currentObject;
  };

  var deserialize = function(o) {
    if (o === null) {
      return null;
    } else if (o.type === "null") {
      return null;
    } else if (o.type === "number") {
      return o.value;
    } else if (o.type === "string") {
      return o.value;
    } else if (o.type === "boolean") {
      return o.value;
    } else if (o.type === "date") {
      return new Date(o.value);
    } else if (o.type === "list") {
      var result = [];
      for (var i = 0; i < o.value.length; i++) {
        result.push(deserialize(o.value[i]));
      }
      return result;
    } else if (o.type === "jsObject") {
      return _objects[o.value];
    } else if (o.type === "DomElement") {
      var result = document.getElementById(o.value);
      if (!o.attached) {
        // element wasn't attached, we detach it
        var top = result;
        while (top.parentNode !== document.documentElement) {
          top = top.parentNode;
        }
        document.documentElement.removeChild(top);
      }
      if (o.idGenerated) {
        result.id = null;
      }
      return result;
    } else if (o.type === "callback") {
      return function() {
        var params = [];
        for (var i = 0; i < arguments.length; i++) {
          params.push(serialize(arguments[i]));
        }

        var callbackQueryId = _callbackQueryId++;
        var returnEvent = document.createEvent('TextEvent');
        returnEvent.initTextEvent("callback_for_dart", false, false, window, JSON.stringify({callbackQueryId: callbackQueryId, callbackId: o.value, params: params}));
        window.dispatchEvent(returnEvent);

        // get response
        var result = _callbackResults[callbackQueryId];
        delete _callbackResults[callbackQueryId];
        return result;
      };
    } else {
      throw "Unsupported type";
    }
  };
  var serialize = function(o) {
    if (o === null) {
      return { type: "null", value: null };
    } else if (typeof(o) === "number") {
      return { type: "number", value: o };
    } else if (typeof(o) === "string") {
      return { type: "string", value: o };
    } else if (typeof(o) === "boolean") {
      return { type: "boolean", value: o };
    } else if (o instanceof Date) {
      return { type: "date", value: o.getTime() };
    } else if (o instanceof Array) {
      var list = [];
      for (var i = 0; i < o.length; i++) {
        list.push(serialize(o[i]));
      }
      return { type: "list", value: list };
    } else if (isElement(o)) {
      var idGenerated = o.id === null || o.id.length === 0;
      if (idGenerated) {
        o.id = "tmp-js-to-dart-" + _tmpDomId++;
      }
      var attached = document.documentElement.contains(o);
      if(!attached){
        // hack : o must be attached to dom to be retrieve in dart part.
        // Attach top parent of "o". We do attach top parent to avoid loose of parent when appending o directly to document
        var top = o;
        while (top.parent != null) {
          top = top.parent;
        }
        document.documentElement.appendChild(top);
      }
      return { "type" : "DomElement", 
               "value" : o.id, 
               "attached" : attached, 
               "idGenerated" : idGenerated }; 
    } else {
      return { type: "jsObject", value: addJsObject(o) };
    }
  }

  var addJsObject = function(o) {
    var jsId = _jsId++;
    _objects[jsId] = o;
    return jsId;
  };

  window.addEventListener('answer_of_callback_for_dart', function(e){
    var query = JSON.parse(e.data);
    var callbackQueryId = query.callbackQueryId;
    var result          = deserialize(query.result);
    _callbackResults[callbackQueryId] = result;
  });

  window.addEventListener('dart_to_js', function(e){
    var query = JSON.parse(e.data);
    var queryId = query.queryId;

    // query infos
    var type      = query.type;
    var jsId      = query.jsId;
    var name      = query.name;
    var args      = deserialize(query.arguments || null);
    var returnRef = query.returnRef;

    // evaluate
    var result = null;
    if (type === "new") {
      result = createNew(name, args);      
    } else if (type === "function") {
      if (jsId !== null) {
        var obj = _objects[jsId];
        var functionObject = obj[name];
        result = functionObject.apply(obj, args);
      } else {
        var functionObject = getObject(name);
        result = functionObject.apply(null, args);
      }
    } else if (type === "set") {
      var obj = _objects[jsId];
      obj[name] = args[0];
    } else if (type === "get") {
      if (jsId !== null) {
        var obj = _objects[jsId];
        result = obj[name];
      } else {
        result = getObject(name);
      }
    } else if (type === "areEquals") {
      var o1 = args[0];
      var o2 = args[1];
      result = o1 === o2;
    } else if (type === "isInstanceOf") {
      var o1 = args[0];
      var o2 = getObject(args[1]);
      result = o1 instanceof o2;
    }

    // prepare answer
    var answer;
    if (returnRef) {
      answer = { type: "jsObject", value: addJsObject(result) };
    } else {
      answer = serialize(result);
    }
    answer.queryId = queryId;
    var returnEvent = document.createEvent('TextEvent');
    returnEvent.initTextEvent("answer_of_dart_to_js", false, false, window, JSON.stringify(answer));
    window.dispatchEvent(returnEvent);
  });
})();
''';
  document.body.nodes.add(script);
}

Object _call(void f(Map jsQuery)) {
  _ensureRegistered();

  final jsQueryId = _jsQueryId++;
  final jsQuery = new Map();
  jsQuery["queryId"] = jsQueryId;
  f(jsQuery);

  // call synchronously
  // print("jsQuery : $jsQuery");
  final TextEvent event = document.$dom_createEvent('TextEvent');
  event.initTextEvent("dart_to_js", false, false, window, JSON.stringify(jsQuery));
  window.$dom_dispatchEvent(event);

  // get response
  final result = _results.remove(jsQueryId);
  // print("result : $result");
  return _deserialize(result);
}

JsRef newInstance(String name, [List args]) {
  return _call(void _(Map jsQuery) {
    jsQuery["type"] = "new";
    jsQuery["name"] = name;
    jsQuery["arguments"] = _serialize(args != null ? args : []);
  });
}

Object callFunction(IsJsObject isJsObject, String name, [List args]) {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "function";
    jsQuery["jsId"] = isJsObject!=null ? isJsObject.jsRef._jsId : null;
    jsQuery["name"] = name;
    jsQuery["arguments"] = _serialize(args != null ? args : []);
  });
}

void setProperty(IsJsObject isJsObject, String name, Object value) {
  _call(void _(jsQuery) {
    jsQuery["type"] = "set";
    jsQuery["jsId"] = isJsObject.jsRef._jsId;
    jsQuery["name"] = name;
    jsQuery["arguments"] = _serialize([value]);
  });
}

Object _getProperty(IsJsObject isJsObject, String name, bool returnRef) {
  return _call(void _(jsQuery) {
    jsQuery["type"]      = "get";
    jsQuery["jsId"]      = isJsObject!=null ? isJsObject.jsRef._jsId : null;
    jsQuery["name"]      = name;
    jsQuery["returnRef"] = returnRef;
  });
}

Object getProperty(IsJsObject isJsObject, String name) {
  return _getProperty(isJsObject, name, false);
}

JsRef getPropertyRef(IsJsObject isJsObject, String name) {
  return _getProperty(isJsObject, name, true);
}

bool areEquals(Object o1, Object o2) {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "areEquals";
    jsQuery["arguments"] = _serialize([o1, o2]);
  });
}

bool isInstanceOf(Object o1, String type) {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "isInstanceOf";
    jsQuery["arguments"] = _serialize([o1, type]);
  });
}

Object _serialize(Object o) {
  if (o === null) {
    return { "type" : "null", "value" : o };
  } else if (o is num) {
    return { "type" : "number", "value" : o };
  } else if (o is String) {
    return { "type" : "string", "value" : o };
  } else if (o is bool) {
    return { "type" : "boolean", "value" : o };
  } else if (o is Date) {
    return { "type" : "date", "value" : o.millisecondsSinceEpoch };
  } else if (o is List) {
    return { "type" : "list", "value" : o.map(_serialize) };
  } else if (o is IsJsObject) {
    return { "type" : "jsObject", "value" : o.jsRef._jsId };
  } else if (o is JsRef) {
    return { "type" : "jsObject", "value" : o._jsId };
  } else if (o is Element) {
    final idGenerated = o.id === null || o.id.isEmpty();
    if (idGenerated) {
      o.id = "tmp-dart-to-js-${_tmpDomId++}";
    }
    final attached = document.documentElement.contains(o);
    if(!attached){
      // hack : element must be attached to dom to be retrieve in js part.
      // Attach top parent of "o". We do attach top parent to avoid loose of parent when appending o directly to document
      var top = o;
      while (top.parent != null) {
        top = top.parent;
      }
      document.documentElement.elements.add(top);
    }
    return { "type" : "DomElement", 
             "value" : o.id, 
             "attached" : attached, 
             "idGenerated" : idGenerated };
  } else if (o is CallbackFunction) {
    final callbackId = _callbackId++;
    _callbacks[callbackId] = new _Callback(callbackId, o);
    return { "type" : "callback", "value" : callbackId };
  } else {
    throw new UnsupportedOperationException("type is not supported");
  }
}
Object _deserialize(Map o) {
  final String type = o["type"];
  final value = o["value"];
  if (type == "null") {
    return null;
  } else if (type == "number") {
    return value;
  } else if (type == "string") {
    return value;
  } else if (type == "boolean") {
    return value;
  } else if (type == "date") {
    return new Date.fromMillisecondsSinceEpoch(value);
  } else if (type == "list") {
    return value.map(_deserialize);
  } else if (type == "jsObject") {
    return new JsRef._(value);
  } else if (type == "DomElement") {
    final result = document.$dom_getElementById(value);
    if (!o["attached"]) {
      // o wasn't attached, we detach it
      var top = result;
      while (top.parent !== document.documentElement) {
        top = top.parent;
      }
      document.documentElement.$dom_removeChild(top);
    }
    if (o["idGenerated"]) {
      result.id = null;
    }
    return result;
    
    
    return document.$dom_getElementById(value);
  } else {
    throw new UnsupportedOperationException("type is not supported");
  }
}
