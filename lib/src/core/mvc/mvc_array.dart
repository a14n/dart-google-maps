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

part of google_maps;

class MVCArray<E> extends MVCObject {
  jsw.Transformater _transform;

  MVCArray([List<E> array, jsw.Transformater transform]) : super.newInstance(maps.MVCArray, [array]) {
    _transform = ?transform ? transform : ((e) => e);
  }
  MVCArray.fromJsProxy(js.Proxy jsProxy, [jsw.Transformater transform]) : super.fromJsProxy(jsProxy) {
    _transform = ?transform ? transform : ((e) => e);
  }

  void clear() { $.clear(); }
  void forEach(void callback(E o, num index)) {
    $.forEach(new jsw.Callback.once((Option<Object> o, Option<num> index) => callback(o.map(_transform).value, index.value)));
  }
  List<E> getArray() => $.getArray().map((js.Proxy jsProxy) => new jsw.JsList<E>.fromJsProxy(jsProxy, _transform)).value;
  E getAt(num i) => $.getAt(i).map(_transform).value;
  num get length => $.getLength().value;
  void insertAt(num i, E elem) { $.insertAt(i, elem); }
  E pop() => $.pop().map(_transform).value;
  num push(E elem) => $.push(elem).value;
  E removeAt(num i) => $.removeAt(i).map(_transform).value;
  void setAt(num i, E elem) { $.setAt(i, elem); }

  MVCArrayEvents<E> get on => new MVCArrayEvents<E>._(this);
}

class MVCArrayEvents<E> {
  static final INSERT_AT = "insert_at";
  static final REMOVE_AT = "remove_at";
  static final SET_AT = "set_at";
  
  final MVCArray<E> _mvcArray;

  MVCArrayEvents._(this._mvcArray);

  NumEventListenerAdder get insertAt => new NumEventListenerAdder(_mvcArray, INSERT_AT);
  NumAndElementEventListenerAdder<E> get removeAt => new NumAndElementEventListenerAdder<E>(_mvcArray, REMOVE_AT, _mvcArray._transform);
  NumAndElementEventListenerAdder<E> get setAt => new NumAndElementEventListenerAdder<E>(_mvcArray, SET_AT, _mvcArray._transform);
}