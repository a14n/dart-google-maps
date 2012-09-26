#library("jswrap");

#import('package:js/js.dart', prefix:'js');

typedef Object Instanciator(js.Proxy proxy);

Object _transformIfNotNull(Object o, Instanciator onNotNull) {
  if (onNotNull != null && o != null) {
    return onNotNull(o);
  } else {
    return o;
  }
}

// transform IsJsProxy to js.Proxy
Object _serialize(data) => (data is IsJsProxy) ? data._proxy : (data is IsEnum) ? data.value : (data is List) ? js.array(data.map(_serialize)) : data;

class JsOperations {
  js.Proxy _proxy;

  JsOperations._(js.Proxy this._proxy);

  Object operator [](String propertyName) => getProperty(propertyName);
  // TODO add operator []=(key, value) => .. to Proxy
  void operator []=(String propertyName, Object value) { print('${propertyName}:${value}:${_serialize(value)}'); _proxy.noSuchMethod('set:${propertyName}', [_serialize(value)]); }

  Object call(String functionName, [List args, Instanciator onNotNull]) => _transformIfNotNull(_proxy.noSuchMethod(functionName, args != null ? args.map(_serialize) : []), onNotNull);
  Object getProperty(String name, [Instanciator onNotNull]) => _transformIfNotNull(_proxy[name], onNotNull);
}

/// Base class of object that wraps jsProxy
class IsJsProxy {
  js.Proxy _proxy;
  JsOperations _jsOperations;

  IsJsProxy() : this.fromJsProxy(js.map({}));
  IsJsProxy.fromJsProxy(js.Proxy this._proxy) { _jsOperations = new JsOperations._(_proxy); }
  IsJsProxy.fromIsJsProxy(IsJsProxy isJsProxy) : this.fromJsProxy(isJsProxy._proxy);
  IsJsProxy.newInstance(objectRef, [List args]) : this.fromJsProxy(new js.Proxy.withArgList(objectRef, args != null ? args.map(_serialize) : []));

  JsOperations get $ => _jsOperations;
}

/// retain IsJsProxy
IsJsProxy retain(IsJsProxy isJsProxy) {
  js.retain(isJsProxy._proxy);
  return isJsProxy;
}
void retainAll(List<IsJsProxy> isJsProxyList) {
  isJsProxyList.forEach(retain);
}
/// release IsJsProxy
void release(IsJsProxy isJsProxy) {
  js.release(isJsProxy._proxy);
}


class JsIterator<E> implements Iterator<E> {
  JsList<E> jsList;
  Instanciator instanciator;
  int current = 0;

  JsIterator._(JsList<E> this.jsList, Instanciator this.instanciator);

  // Iterator
  E next() => jsList.$.getProperty((current++).toString(), instanciator);
  bool hasNext() => current < jsList.$["length"];
}

class JsList<E> extends IsJsProxy implements List<E> {
  Instanciator instanciator;

  JsList.fromJsProxy(js.Proxy proxy, Instanciator this.instanciator) : super.fromJsProxy(proxy);

  // Object
  String toString() => _asList().toString();

  // Iterable
  JsIterator<E> iterator() => new JsIterator._(this, instanciator);

  // Collection
  void forEach(void f(E element)) => _asList().forEach(f);
  Collection map(f(E element)) => _asList().map(f);
  Dynamic reduce(Dynamic initialValue, Dynamic combine(Dynamic previousValue, E element)) => _asList().reduce(initialValue, combine);
  Collection<E> filter(bool f(E element)) => _asList().filter(f);
  bool every(bool f(E element)) => _asList().every(f);
  bool some(bool f(E element)) => _asList().some(f);
  bool isEmpty() => _asList().isEmpty();
  int get length => $["length"];

  // List
  E operator [](int index) => $.getProperty(index.toString(), instanciator);
  void operator []=(int index, E value) { $[index.toString()] = value; }
  void set length(int newLength) => null;
  void add(E value) { $.call("push", [value]); }
  void addLast(E value) { $.call("push", [value]); }
  void addAll(Collection<E> collection) { collection.forEach(add); }
  void sort(int compare(E a, E b)) {
    final sortedList = _asList()..sort(compare);
    clear();
    addAll(sortedList);
  }
  int indexOf(E element, [int start = 0]) => _asList().indexOf(element, start);
  int lastIndexOf(E element, [int start]) => _asList().lastIndexOf(element, start);
  void clear() { $.call("splice", [0, length]); }
  E removeAt(int index) => ($.call("splice", [index, 1], (proxy) => new JsList.fromJsProxy(proxy, instanciator)) as JsList<E>)[0];
  E removeLast() => this.$.call("pop", [], instanciator);
  E last() => $[(length - 1).toString()];
  List<E> getRange(int start, int length) => _asList().getRange(start, length);
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
    for (int i = 0; i < length; i++) {
      args.add(initialValue);
    }
    this.$.call("splice", args);
  }

  List<E> _asList() {
    final list = new List<E>();
    for (int i = 0; i < length; i++) {
      list.add(this[i]);
    }
    return list;
  }
}

class IsEnum<E> {
  E value;

  IsEnum(E this.value);
}

Object findIn(Object o, List<Object> elements, [Object transform(Object)]) {
  final matchingElements = elements.filter((e) => ((transform != null ? transform(e) : e) == o));
  if (matchingElements.length === 1) {
    return matchingElements.iterator().next();
  } else {
    return null;
  }
}

class Callback extends js.Callback {
  Callback.once(Function f) : super.once(_serializeResult(f));
  Callback.many(Function f) : super.many(_serializeResult(f));
  static _serializeResult(f) => ([arg1, arg2, arg3, arg4]) {
    if (!?arg1) {
      return _serialize(f());
    } else if (!?arg2) {
      return _serialize(f(arg1));
    } else if (!?arg3) {
      return _serialize(f(arg1, arg2));
    } else if (!?arg4) {
      return _serialize(f(arg1, arg2, arg3));
    } else {
      return _serialize(f(arg1, arg2, arg3, arg4));
    }
  };
}