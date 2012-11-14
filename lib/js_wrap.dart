// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library js_wrap;

import 'package:meta/meta.dart';
import 'package:js/js.dart' as js;
import 'optional.dart';

class ProxyInvocationMirror extends InvocationMirror {
  final String memberName;
  List positionalArguments;
  final Map<String, dynamic> namedArguments;
  final bool isMethod;
  final bool isGetter;
  final bool isSetter;
  ProxyInvocationMirror(String this.memberName, List positionalArguments, Map<String, dynamic> this.namedArguments, bool this.isMethod, bool this.isGetter, bool this.isSetter) {
    this.positionalArguments = positionalArguments != null ? positionalArguments.map(_serialize) : null;
  }
  ProxyInvocationMirror.fromInvocationMirror(InvocationMirror invocation) : this(invocation.memberName, invocation.positionalArguments, invocation.namedArguments, invocation.isMethod, invocation.isGetter, invocation.isSetter);
  ProxyInvocationMirror.method(String memberName, List positionalArguments) : this(memberName, positionalArguments, {}, true, false, false);
  ProxyInvocationMirror.getter(String memberName) : this(memberName, [], {}, false, true, false);
  ProxyInvocationMirror.setter(String memberName, dynamic value) : this(memberName, [value], {}, false, false, true);
  @override invokeOn(Object receiver) { throw new UnsupportedError("Forbidden"); }
}

typedef Object Transformater(Object proxy);

Object _transformIfNotNull(Object o, Transformater onNotNull) {
  if (onNotNull != null && o != null) {
    return onNotNull(o);
  } else {
    return o;
  }
}

// transform IsJsProxy to js.Proxy
Object _serialize(data) =>
    (data is IsJsProxy) ? data._proxy :
    (data is IsEnum) ? data.value :
    (data is List) ? js.array(data.map(_serialize)) :
    (data is Date) ? new js.Proxy(js.context.Date, data.millisecondsSinceEpoch) :
    data;

class JsOperations {
  js.Proxy _proxy;

  JsOperations._(js.Proxy this._proxy);

  @override noSuchMethod(InvocationMirror invocation) {
    final proxyInvocation = new ProxyInvocationMirror.fromInvocationMirror(invocation);
    final jsResult = _proxy.noSuchMethod(proxyInvocation);
    // print("${method}(${args}) => ${jsResult}");
    return asOption(jsResult);
  }
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

/// retain [isJsProxy]
IsJsProxy retain(IsJsProxy isJsProxy) {
  js.retain(isJsProxy._proxy);
  return isJsProxy;
}
/// retain all elements in [isJsProxyList]
void retainAll(List<IsJsProxy> isJsProxyList) {
  isJsProxyList.forEach(retain);
}
/// release [isJsProxy]
void release(IsJsProxy isJsProxy) {
  js.release(isJsProxy._proxy);
}

class JsDate extends IsJsProxy implements Date {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new JsDate.fromJsProxy(jsProxy);

  JsDate.fromJsProxy(js.Proxy proxy) : super.fromJsProxy(proxy);

  // from Date->Comparable
  @override int compareTo(Date other) => _asDate().compareTo(other);

  // from Date
  @override bool operator ==(Date other) => _asDate() == other;
  @override bool operator <(Date other) => _asDate() < other;
  @override bool operator <=(Date other) => _asDate() <= other;
  @override bool operator >(Date other) => _asDate() > other;
  @override bool operator >=(Date other) => _asDate() >= other;
  @override Date toLocal() => _asDate().toLocal();
  @override Date toUtc() => _asDate().toUtc();
  @override String get timeZoneName => _asDate().timeZoneName;
  @override Duration get timeZoneOffset => _asDate().timeZoneOffset;
  @override int get year => _asDate().year;
  @override int get month => _asDate().month;
  @override int get day => _asDate().day;
  @override int get hour => _asDate().hour;
  @override int get minute => _asDate().minute;
  @override int get second => _asDate().second;
  @override int get millisecond => _asDate().millisecond;
  @override int get weekday => _asDate().weekday;
  @override int get millisecondsSinceEpoch => _asDate().millisecondsSinceEpoch;
  @override bool get isUtc => _asDate().isUtc;
  @override String toString() => _asDate().toString();
  @override Date add(Duration duration) => _asDate().add(duration);
  @override Date subtract(Duration duration) => _asDate().subtract(duration);
  @override Duration difference(Date other) => _asDate().difference(other);

  Date _asDate() => new Date.fromMillisecondsSinceEpoch($.getTime().value);
}

class JsIterator<E> implements Iterator<E> {
  JsList<E> jsList;
  Transformater instanciator;
  int current = 0;

  JsIterator._(JsList<E> this.jsList, Transformater this.instanciator);

  // Iterator
  @override E next() => jsList.$[current++].map(instanciator != null ? instanciator : (e) => e).value;
  @override bool get hasNext => current < jsList.$.length.value;
}

class JsIterable<E> extends IsJsProxy implements Iterable<E> {
  Transformater instanciator;

  JsIterable.fromJsProxy(js.Proxy proxy, Transformater this.instanciator) : super.fromJsProxy(proxy);

  @override JsIterator<E> iterator() => new JsIterator._(this, instanciator);
}

class JsCollection<E> extends JsIterable<E> implements Collection<E> {
  JsCollection.fromJsProxy(js.Proxy proxy, Transformater instanciator) : super.fromJsProxy(proxy, instanciator);

  @override JsIterator<E> iterator() => new JsIterator._(this, instanciator);

  @override void forEach(void f(E element)) => _asList().forEach(f);
  @override Collection map(f(E element)) => _asList().map(f);
  @override dynamic reduce(dynamic initialValue, dynamic combine(dynamic previousValue, E element)) => _asList().reduce(initialValue, combine);
  @override Collection<E> filter(bool f(E element)) => _asList().filter(f);
  @override bool every(bool f(E element)) => _asList().every(f);
  @override bool some(bool f(E element)) => _asList().some(f);
  @override bool get isEmpty => length == 0;
  @override int get length => $.length.value;
  @override bool contains(E element) => _asList().contains(element);

  List<E> _asList() {
    final list = new List<E>();
    for (int i = 0; i < length; i++) {
      list.add($[i].value);
    }
    return list;
  }
}

class JsList<E> extends JsCollection<E> implements List<E> {
  JsList.fromJsProxy(js.Proxy proxy, Transformater instanciator) : super.fromJsProxy(proxy, instanciator);

  // Object
  @override String toString() => _asList().toString();

  // List
  @override E operator [](int index) => $[index].map(instanciator != null ? instanciator : (e) => e).value;
  @override void operator []=(int index, E value) { $[index] = value; }
  @override void set length(int newLength) {
    final length = length;
    if (length < newLength) {
      final nulls = new List<E>(newLength - length);
      addAll(nulls);
    }
    if (length > newLength) {
      throw new UnsupportedError("New length has to be greater than actual length");
    }
  }
  @override void add(E value) { $.push(value); }
  @override void addLast(E value) { $.push(value); }
  @override void addAll(Collection<E> collection) { setRange(length, collection.length, collection); }
  @override void sort([Comparator<E> compare = Comparable.compare]) {
    final sortedList = _asList()..sort(compare);
    clear();
    addAll(sortedList);
  }
  @override int indexOf(E element, [int start = 0]) => _asList().indexOf(element, start);
  @override int lastIndexOf(E element, [int start]) => _asList().lastIndexOf(element, start);
  @override void clear() { $.splice(0, length); }
  @override E removeAt(int index) => ($.splice(index, 1).map((proxy) => new JsList.fromJsProxy(proxy, instanciator)).value as JsList<E>)[0];
  @override E removeLast() => this.$.pop().map(instanciator != null ? instanciator : (e) => e).value;
  @override E get last => $[length - 1].value;
  @override List<E> getRange(int start, int length) => _asList().getRange(start, length);
  @override void setRange(int start, int length, List<E> from, [int startFrom = 0]) {
    final args = [start, 0];
    for(int i = startFrom; i < length; i++) {
      args.add(from[i]);
    }
    this.$.noSuchMethod(new ProxyInvocationMirror.method("splice", args));
  }
  @override void removeRange(int start, int length) { this.$.splice(start, length); }
  @override void insertRange(int start, int length, [E initialValue]) {
    final args = [start, 0];
    for (int i = 0; i < length; i++) {
      args.add(initialValue);
    }
    this.$.noSuchMethod(new ProxyInvocationMirror.method("splice", args));
  }
}

class IsEnum<E> {
  E value;

  IsEnum(E this.value);
}

Object findIn(Object o, List<Object> elements, [Object transform(Object)]) {
  final matchingElements = elements.filter((e) => ((transform != null ? transform(e) : e) == o));
  if (matchingElements.length == 1) {
    return matchingElements.iterator().next();
  } else {
    return null;
  }
}

class Callback extends js.Callback {
  Callback.once(Function f) : super.once(_serializeResult(f));
  Callback.many(Function f) : super.many(_serializeResult(f));
  static _serializeResult(f) => ([arg1, arg2, arg3, arg4]) {
    // TODO check number of parameter to avoid:"Closure argument mismatch"
    // for exemple Events.addDomListener(mapDiv, 'click', () { window.alert('DIV clicked'); });
    // callback has no interest for event param
    if (!?arg1) {
      return _serialize(f());
    } else if (!?arg2) {
      return _serialize(f(asOption(arg1)));
    } else if (!?arg3) {
      return _serialize(f(asOption(arg1), asOption(arg2)));
    } else if (!?arg4) {
      return _serialize(f(asOption(arg1), asOption(arg2), asOption(arg3)));
    } else {
      return _serialize(f(asOption(arg1), asOption(arg2), asOption(arg3), asOption(arg4)));
    }
  };
}