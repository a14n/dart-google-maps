#library("jsni");

#import('dart:html');
#import('dart:json');

//-------------------------
// basic types for wrapping
//-------------------------


typedef Object Instanciator(JsRef);

/// Reference to a js element
class JsRef {
  int _jsId;

  JsRef._(int this._jsId);
}

class JsOperations {
  JsRef jsRef;

  JsOperations._(JsRef this.jsRef);

  Object operator [](String propertyName) => getProperty(propertyName);
  void operator []=(String propertyName, Object value) { setProperty(jsRef, propertyName, value); }

  JsRef callForJsRef(String functionName, [List args]) => _callFunction(jsRef, functionName, args, true);
  Object call(String functionName, [List args, Instanciator onNotNull]) => _transformIfNotNull(_callFunction(jsRef, functionName, args, onNotNull != null), onNotNull);
  JsRef getPropertyAsJsRef(String name) => _getProperty(jsRef, name, true);
  Object getProperty(String name, [Instanciator onNotNull]) => _transformIfNotNull(_getProperty(jsRef, name, onNotNull != null), onNotNull);
  void free() => _free(jsRef);

  Object get value => _getValue(jsRef);

  Object _transformIfNotNull(Object o, Instanciator onNotNull) {
    if (onNotNull != null && o != null) {
      return onNotNull(o);
    } else {
      return o;
    }
  }
}

JsOperations $$(JsRef jsRef) => new JsOperations._(jsRef);

/// Represent a dart Object that wrap a js element
class JsObject {
  JsRef jsRef;
  JsOperations _jsOperations;

  JsObject() : this.fromJsRef(_newInstance("Object"));
  JsObject.fromJsRef(JsRef this.jsRef) { _jsOperations = new JsOperations._(jsRef); }
  JsObject.newInstance(String objectName, [List args]) : this.fromJsRef(_newInstance(objectName, args));

  JsOperations get $ => _jsOperations;

  bool operator ==(Object other) {
    return _areEquals(this, other);
  }
}

class JsIterator<E> implements Iterator<E> {
  JsList<E> jsList;
  Instanciator instanciator;
  int current = 0;

  JsIterator.fromJsRef(JsList<E> this.jsList, Instanciator this.instanciator);

  // Iterator
  E next() => jsList.$.getProperty((current++).toString(), instanciator);
  bool hasNext() => current < jsList.$["length"];
}

class JsList<E> extends JsObject implements List<E> {
  Instanciator instanciator;

  JsList.fromJsRef(JsRef jsRef, Instanciator this.instanciator) : super.fromJsRef(jsRef);

  // Object
  String toString() => (this.$.value as List).toString();

  // Iterable
  JsIterator<E> iterator() => new JsIterator.fromJsRef(this, instanciator);

  // Collection
  void forEach(void f(E element)) => (this.$.value as List).forEach(f);
  Collection map(f(E element)) => (this.$.value as List).map(f);
  Dynamic reduce(Dynamic initialValue, Dynamic combine(Dynamic previousValue, E element)) => (this.$.value as List).reduce(initialValue, combine);
  Collection<E> filter(bool f(E element)) => (this.$.value as List).filter(f);
  bool every(bool f(E element)) => (this.$.value as List).every(f);
  bool some(bool f(E element)) => (this.$.value as List).some(f);
  bool isEmpty() => (this.$.value as List).isEmpty();
  int get length => (this.$.value as List).length;

  // List
  E operator [](int index) => this.$.getProperty(index.toString(), instanciator);
  void operator []=(int index, E value) { this.$[index.toString()] = value; }
  void set length(int newLength) => null;
  void add(E value) { this.$.call("push", [value]); }
  void addLast(E value) { this.$.call("push", [value]); }
  void addAll(Collection<E> collection) { collection.forEach(add); }
  void sort(int compare(E a, E b)) {
    final sortedList = (this.$.value as List)
      ..sort(compare);
    this.clear();
    this.addAll(sortedList);
  }
  int indexOf(E element, [int start]) => (this.$.value as List).indexOf(element, start);
  int lastIndexOf(E element, [int start]) => (this.$.value as List).lastIndexOf(element, start);
  void clear() { this.$.call("splice", [0, length]); }
  E removeLast() => this.$.call("pop", instanciator);
  E last() => (this.$.value as List).last();
  List<E> getRange(int start, int length) => (this.$.value as List).getRange(start, length);
  void setRange(int start, int length, List<E> from, [int startFrom=0]) {
    final args = [start, 0];
    for(int i = startFrom; i < length; i++) {
      args.add(from[i]);
    }
    this.$.call("splice", args);
  }
  void removeRange(int start, int length) { this.$.call("splice", [start, length]); }
  void insertRange(int start, int length, [E initialValue]) {
    final args = [start, 0];
    for(int i = 0; i < length; i++) {
      args.add(initialValue);
    }
    this.$.call("splice", args);
  }
}

typedef Object CallbackFunction(List args);

//
final jsWindow = new JsObject.fromJsRef(_getWindowRef());

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
final _results = new Map<int, Object>();

int _callbackId = 1;
final _callbacks = new Map<int, _Callback>();

void _ensureRegistered() {
  if (_registered) {
    return;
  }
  _registered = true;

  // register to answer
  window.on['answer_of_dart_to_js'].add((TextEvent event) {
    final answer = JSON.parse(event.data);
    _results[answer["queryId"]] = answer;
  }, false);

  // register for callback
  window.on['callback_for_dart'].add((TextEvent event) {
    final query = JSON.parse(event.data);
    // print("query : $query");
    final callbackQueryId = query["callbackQueryId"];
    final callbackId = query["callbackId"];
    final callback = _callbacks[callbackId];
    final params = query["params"];
    final args = params.map(_deserialize);
    final result = callback._callbackFunction(args);
    // print("result : $result");

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
  script.innerHTML = r'''
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
    var functionObject = getObject(window, functionName);
    return createNewWithFunctionObject(functionObject, args);
  };
  var createNewWithFunctionObject = function(functionObject, args) {
    function tempCtor() {};
    tempCtor.prototype = functionObject.prototype;
    var instance = new tempCtor();
    functionObject.apply(instance,args);
    return instance;
  };
  var getObject = function(currentObject, name) {
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
    } else if (o.type === "document") {
      return document;
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
        result.id = "";
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
    } else if (typeof(o) === "undefined") {
      return { type: "undefined", value: null };
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
    } else if (o === document) {
      return { type: "document", value: null };
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
    // console.log(Object.keys(_objects).length);
    _objects[jsId] = o;
    return jsId;
  };

  var freeJsObject = function(jsId) {
    delete _objects[jsId];
    // console.log(Object.keys(_objects).length);
  }

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
        var functionObject = getObject(obj, name);
        result = functionObject.apply(obj, args);
      } else {
        var functionObject = getObject(window, name);
        result = functionObject.apply(null, args);
      }
    } else if (type === "set") {
      if (jsId !== null) {
        var obj = _objects[jsId];
        obj[name] = args[0];
      } else {
        window[name] = args[0];
      }
    } else if (type === "get") {
      if (jsId !== null) {
        var obj = _objects[jsId];
        result = getObject(obj, name);
      } else if (name !== null) {
        result = getObject(window, name);
      } else {
        result = window;
      }
    } else if (type === "areEquals") {
      var o1 = args[0];
      var o2 = args[1];
      result = o1 === o2;
    } else if (type === "isInstanceOf") {
      var o1 = args[0];
      var o2 = getObject(window, args[1]);
      result = o1 instanceof o2;
    } else if (type === "getValue") {
      var obj = _objects[jsId];
      result = obj;
    } else if (type === "getWindowRef") {
      result = window;
    } else if (type === "free") {
      freeJsObject(jsId);
    }

    // console.log(result);

    // prepare answer
    var answer;
    if (result !== null && typeof(result) !== "undefined" && returnRef) {
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
  if (result === null) {
    print("something strange appends : no response was received from js side");
    return null;
  } else {
    // print("result : $result");
    return _deserialize(result);
  }
}

JsRef _newInstance(String name, [List args]) {
  return _call(void _(Map jsQuery) {
    jsQuery["type"] = "new";
    jsQuery["name"] = name;
    jsQuery["arguments"] = _serialize(args != null ? args : []);
  });
}

Object _callFunction(JsRef jsRef, String name, List args, bool returnRef) {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "function";
    jsQuery["jsId"] = jsRef != null ? jsRef._jsId : null;
    jsQuery["name"] = name;
    jsQuery["arguments"] = _serialize(args != null ? args : []);
    jsQuery["returnRef"] = returnRef;
  });
}

void setProperty(JsRef jsRef, String name, Object value) {
  _call(void _(jsQuery) {
    jsQuery["type"] = "set";
    jsQuery["jsId"] = jsRef != null ? jsRef._jsId : null;
    jsQuery["name"] = name;
    jsQuery["arguments"] = _serialize([value]);
  });
}

Object _getProperty(JsRef jsRef, String name, bool returnRef) {
  return _call(void _(jsQuery) {
    jsQuery["type"]      = "get";
    jsQuery["jsId"]      = jsRef != null ? jsRef._jsId : null;
    jsQuery["name"]      = name;
    jsQuery["returnRef"] = returnRef;
  });
}

bool _areEquals(Object o1, Object o2) {
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

Object _getValue(JsRef jsRef) {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "getValue";
    jsQuery["jsId"] = jsRef._jsId;
  });
}

JsRef _getWindowRef() {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "getWindowRef";
  });
}

JsRef _free(JsRef jsRef) {
  return _call(void _(jsQuery) {
    jsQuery["type"] = "free";
    jsQuery["jsId"] = jsRef._jsId;
  });
}

Object _serialize(Object o) {
  if (o === null) {
    return { "type" : "null", "value" : o };
  } else if (o is JsObject) {
    return { "type" : "jsObject", "value" : o.jsRef._jsId };
  } else if (o is JsRef) {
    return { "type" : "jsObject", "value" : o._jsId };
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
  } else if (o === document) {
    return { "type" : "document", "value" : null };
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
  } else if (type == "undefined") {
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
  } else if (type == "document") {
    return document;
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
      result.id = "";
    }
    return result;


    return document.$dom_getElementById(value);
  } else if (type == "jsObject") {
    return new JsRef._(value);
  } else {
    throw new UnsupportedOperationException("type is not supported");
  }
}
