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

import 'dart:collection';

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
  ProxyInvocationMirror(this.memberName, List positionalArguments, this.namedArguments, this.isMethod, this.isGetter, this.isSetter) {
    this.positionalArguments = positionalArguments != null ? positionalArguments.map(_serialize).toList() : null;
  }
  ProxyInvocationMirror.fromInvocationMirror(InvocationMirror invocation) : this(invocation.memberName, invocation.positionalArguments, invocation.namedArguments, invocation.isMethod, invocation.isGetter, invocation.isSetter);
  ProxyInvocationMirror.method(String memberName, List positionalArguments) : this(memberName, positionalArguments, {}, true, false, false);
  ProxyInvocationMirror.getter(String memberName) : this(memberName, [], {}, false, true, false);
  ProxyInvocationMirror.setter(String memberName, dynamic value) : this(memberName, [value], {}, false, false, true);
  @override invokeOn(Object receiver) { throw new UnsupportedError("Forbidden"); }
}

typedef Object Transformater(Object proxy);

// transform IsJsProxy to js.Proxy
Object _serialize(data) =>
    (data is IsJsProxy) ? (data as IsJsProxy)._jsProxy._proxy :
    (data is IsEnum) ? (data as IsEnum).value :
    (data is List) ? js.array((data as List).map(_serialize).toList()) :
    (data is DateTime) ? new js.Proxy(js.context.Date, (data as DateTime).millisecondsSinceEpoch) :
    data;

class JsProxy {
  js.Proxy _proxy;

  JsProxy._(this._proxy);

  @override noSuchMethod(InvocationMirror invocation) {
    final proxyInvocation = new ProxyInvocationMirror.fromInvocationMirror(invocation);
    final jsResult = _proxy.noSuchMethod(proxyInvocation);
    // print("${method}(${args}) => ${jsResult}");
    return asOption(jsResult);
  }
}

/// Base class of object that wraps jsProxy
class IsJsProxy {
  JsProxy _jsProxy;

  IsJsProxy() : this.fromJsProxy(js.map({}));
  IsJsProxy._(this._jsProxy);
  IsJsProxy.fromIsJsProxy(IsJsProxy isJsProxy) : this._(isJsProxy._jsProxy);
  IsJsProxy.fromJsProxy(js.Proxy proxy) : this._(new JsProxy._(proxy));
  IsJsProxy.newInstance(objectRef, [List args]) : this.fromJsProxy(new js.Proxy.withArgList(objectRef, args != null ? args.map(_serialize).toList() : []));

  JsProxy get $ => _jsProxy;
}

/// retain [isJsProxy]
IsJsProxy retain(IsJsProxy isJsProxy) {
  js.retain(isJsProxy._jsProxy._proxy);
  return isJsProxy;
}
/// retain all elements in [isJsProxyList]
void retainAll(List<IsJsProxy> isJsProxyList) {
  isJsProxyList.forEach(retain);
}
/// release [isJsProxy]
void release(IsJsProxy isJsProxy) {
  js.release(isJsProxy._jsProxy._proxy);
}

class JsDate extends IsJsProxy implements DateTime {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new JsDate.fromJsProxy(jsProxy);

  JsDate.fromJsProxy(js.Proxy proxy) : super.fromJsProxy(proxy);

  // from DateTime->Comparable
  @override int compareTo(DateTime other) => _asDateTime().compareTo(other);

  // from Date
  @override bool operator ==(DateTime  other) => _asDateTime() == other;
  @deprecated @override bool operator <(DateTime other) => _asDateTime() < other;
  @deprecated @override bool operator <=(DateTime other) => _asDateTime() <= other;
  @deprecated @override bool operator >(DateTime other) => _asDateTime() > other;
  @deprecated @override bool operator >=(DateTime other) => _asDateTime() >= other;

  @override bool isBefore(DateTime other) => _asDateTime().isBefore(other);
  @override bool isAfter(DateTime other) => _asDateTime().isAfter(other);
  @override bool isAtSameMomentAs(DateTime other) => _asDateTime().isAtSameMomentAs(other);
  @override DateTime toLocal() => _asDateTime().toLocal();
  @override DateTime toUtc() => _asDateTime().toUtc();
  @override String get timeZoneName => _asDateTime().timeZoneName;
  @override Duration get timeZoneOffset => _asDateTime().timeZoneOffset;
  @override int get year => _asDateTime().year;
  @override int get month => _asDateTime().month;
  @override int get day => _asDateTime().day;
  @override int get hour => _asDateTime().hour;
  @override int get minute => _asDateTime().minute;
  @override int get second => _asDateTime().second;
  @override int get millisecond => _asDateTime().millisecond;
  @override int get weekday => _asDateTime().weekday;
  @override int get millisecondsSinceEpoch => _asDateTime().millisecondsSinceEpoch;
  @override bool get isUtc => _asDateTime().isUtc;
  @override String toString() => _asDateTime().toString();
  @override DateTime add(Duration duration) => _asDateTime().add(duration);
  @override DateTime subtract(Duration duration) => _asDateTime().subtract(duration);
  @override Duration difference(DateTime other) => _asDateTime().difference(other);

  DateTime _asDateTime() => new DateTime.fromMillisecondsSinceEpoch($.getTime().value);
}

class _JsIterator<E> implements Iterator<E> {
  final JsList<E> _jsList;
  final int length;
  int _currentIndex = -1;

  _JsIterator(JsList<E> jsList) : this._jsList = jsList, length = jsList.length;

  // Iterator
  @override bool moveNext() {
    if (_currentIndex + 1 < length) {
      _currentIndex++;
      return true;
    }
    return false;
  }
  @override E get current => _jsList[_currentIndex];
}

class JsList<E> extends IsJsProxy implements List<E> {
  Transformater _instantiator;

  JsList.fromJsProxy(js.Proxy proxy, [E instantiator(e)]) : super.fromJsProxy(proxy) {
    _instantiator = instantiator != null ? instantiator : (e) => e;
  }

  // Object
  @override String toString() => _asList().toString();

  // Iterable
  @override Iterator<E> get iterator => new _JsIterator<E>(this);
  @override int get length => $.length.value;

  // Collection
  @override void add(E value) { $.push(value); }
  @override void clear() { $.splice(0, length); }
  @override void remove(Object element) { removeAt(indexOf(element)); }

  // List
  @override E operator [](int index) => $[index].map(_instantiator).value;
  @override void operator []=(int index, E value) { $[index] = value; }
  @override void set length(int newLength) {
    final length = this.length;
    if (length < newLength) {
      final nulls = new List<E>(newLength - length);
      addAll(nulls);
    }
    if (length > newLength) {
      throw new UnsupportedError("New length has to be greater than actual length");
    }
  }
  @override void sort([int compare(E a, E b)]) {
    final sortedList = _asList()..sort(compare);
    clear();
    addAll(sortedList);
  }
  @override E removeAt(int index) => ($.splice(index, 1).map((proxy) => new JsList<E>.fromJsProxy(proxy, _instantiator)).value as JsList<E>)[0];
  @override void insert(int index, E element) { this.insertRange(index, 1, element);}
  @override E removeLast() => $.pop().map(_instantiator).value;
  @override List<E> sublist(int start, [int end]) => _asList().sublist(start, end);
  @deprecated @override List<E> getRange(int start, int length) => _asList().getRange(start, length);
  @override void setRange(int start, int length, List<E> from, [int startFrom = 0]) {
    final args = [start, 0];
    for(int i = startFrom; i < length; i++) {
      args.add(from[i]);
    }
    $.noSuchMethod(new ProxyInvocationMirror.method("splice", args));
  }
  @override void removeRange(int start, int length) { $.splice(start, length); }
  @override void insertRange(int start, int length, [E initialValue]) {
    final args = [start, 0];
    for (int i = 0; i < length; i++) {
      args.add(initialValue);
    }
    $.noSuchMethod(new ProxyInvocationMirror.method("splice", args));
  }

  List<E> _asList() {
    final list = new List<E>();
    for (int i = 0; i < length; i++) {
      list.add($[i].value);
    }
    return list;
  }

  // -------remove this copy of Iterable when mixin will land
  @override Iterable map(f(E element)) => IterableMixinWorkaround.map(this, f);
  @override Iterable<E> where(bool f(E element)) => IterableMixinWorkaround.where(this, f);
  @override Iterable expand(Iterable f(E element)) => IterableMixinWorkaround.expand(this, f);
  @override bool contains(E element) => IterableMixinWorkaround.contains(this, element);
  @override void forEach(void f(E element)) => IterableMixinWorkaround.forEach(this, f);
  @override dynamic reduce(var initialValue, dynamic combine(var previousValue, E element)) => IterableMixinWorkaround.reduce(this, initialValue, combine);
  @override bool every(bool f(E element)) => IterableMixinWorkaround.every(this, f);
  @override String join([String separator]) => IterableMixinWorkaround.join(this, separator);
  @override bool any(bool f(E element)) => IterableMixinWorkaround.any(this, f);
  @override List<E> toList({ bool growable: true }) => new List<E>.from(this, growable: growable);
  @override Set<E> toSet() => new Set<E>.from(this);
  @override E min([int compare(E a, E b)]) => IterableMixinWorkaround.min(this, compare);
  @override E max([int compare(E a, E b)]) => IterableMixinWorkaround.max(this, compare);
  @override bool get isEmpty => IterableMixinWorkaround.isEmpty(this);
  @override Iterable<E> take(int n) => IterableMixinWorkaround.takeList(this, n);
  @override Iterable<E> takeWhile(bool test(E value)) =>IterableMixinWorkaround.takeWhile(this, test);
  @override Iterable<E> skip(int n) => IterableMixinWorkaround.skipList(this, n);
  @override Iterable<E> skipWhile(bool test(E value)) => IterableMixinWorkaround.skipWhile(this, test);
  @override E get first => IterableMixinWorkaround.first(this);
  @override E get last => IterableMixinWorkaround.last(this);
  @override E get single => IterableMixinWorkaround.single(this);
  @override E firstWhere(bool test(E value), { E orElse() }) => IterableMixinWorkaround.firstWhere(this, test, orElse);
  @override E lastWhere(bool test(E value), {E orElse()}) => IterableMixinWorkaround.lastWhere(this, test, orElse);
  @override E singleWhere(bool test(E value)) => IterableMixinWorkaround.singleWhere(this, test);
  @override E elementAt(int index) => IterableMixinWorkaround.elementAt(this, index);

  // Collection
  @override void addAll(Iterable<E> elements) {
    for (E element in elements) {
      add(element);
    }
  }
  @override void removeAll(Iterable elements) => IterableMixinWorkaround.removeAll(this, elements);
  @override void retainAll(Iterable elements) => IterableMixinWorkaround.retainAll(this, elements);
  @override void removeWhere(bool test(E element)) => IterableMixinWorkaround.removeWhere(this, test);
  @override void retainWhere(bool test(E element)) => IterableMixinWorkaround.retainWhere(this, test);

  // List
  @deprecated @override void addLast(E value) { add(value); }
  @override Iterable<E> get reversed => IterableMixinWorkaround.reversedList(this);
  @override int indexOf(E element, [int start = 0]) => IterableMixinWorkaround.indexOfList(this, element, start);
  @override int lastIndexOf(E element, [int start]) => IterableMixinWorkaround.lastIndexOfList(this, element, start);
  @override Map<int, E> asMap() => IterableMixinWorkaround.asMapList(this);
}

class IsEnum<E> {
  E value;

  IsEnum(this.value);
}

Object findIn(Object o, List<Object> elements, [Object transform(Object)]) {
  final matchingElements = elements.where((e) => ((transform != null ? transform(e) : e) == o));
  if (matchingElements.length == 1) {
    return matchingElements.first;
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