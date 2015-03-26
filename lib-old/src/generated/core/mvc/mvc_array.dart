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
  static MVCArray $wrap(js.JsObject proxy, {wrap(js), unwrap(dart)}) => proxy == null ? null : new MVCArray.fromJsObject(proxy, wrap: wrap, unwrap: unwrap);
  static MVCArray $wrapSerializables(js.JsObject jsObject, wrap(js)) => jsObject == null ? null : new MVCArray.fromJsObject(jsObject, wrap: wrap, unwrap: jsw.Serializable.$unwrap);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['MVCArray']);

  final jsw.Mapper<E, dynamic> _unwrap;
  final jsw.Mapper<dynamic, E> _wrap;

  jsw.SubscribeStreamProvider<int> _onInsertAt;
  jsw.SubscribeStreamProvider<IndexAndElement<E>> _onRemoveAt;
  jsw.SubscribeStreamProvider<IndexAndElement<E>> _onSetAt;

  MVCArray(List<E> array, {jsw.Mapper<dynamic, E> wrap, jsw.Mapper<E, dynamic> unwrap})
      : _wrap = ((e) => wrap == null ? e : wrap(e)),
        _unwrap = ((e) => unwrap == null ? e : unwrap(e)),
        super(maps['MVCArray'], [array is js.JsArray ? array : jsw.jsify(array)]) {
    _initStreams();
  }
  MVCArray.fromJsObject(js.JsObject jsObject, {jsw.Mapper<dynamic, E> wrap, jsw.Mapper<E, dynamic> unwrap})
      : _wrap = ((e) => wrap == null ? e : wrap(e)),
        _unwrap = ((e) => unwrap == null ? e : unwrap(e)),
        super.fromJsObject(jsObject) {
    _initStreams();
  }

  void _initStreams() {
    _onInsertAt = event.getStreamProviderFor(this, "insert_at");
    _onRemoveAt = event.getStreamProviderFor(this, "remove_at", (int index, oldElement) => new IndexAndElement<E>(index, _wrap(oldElement)));
    _onSetAt = event.getStreamProviderFor(this, "set_at", (int index, oldElement) => new IndexAndElement<E>(index, _wrap(oldElement)));
  }

  Stream<int> get onInsertAt => _onInsertAt.stream;
  Stream<IndexAndElement<E>> get onRemoveAt => _onRemoveAt.stream;
  Stream<IndexAndElement<E>> get onSetAt => _onSetAt.stream;

  void clear() {
    $unsafe.callMethod('clear');
  }
  void forEach(void callback(E o, num index)) => $unsafe.callMethod('forEach', [(Object o, num index) => callback(_wrap(o), index)]);
  List<E> getArray() => jsw.TypedJsArray.$wrap($unsafe.callMethod('getArray'), wrap: _wrap, unwrap: _unwrap);
  E getAt(num i) => _wrap($unsafe.callMethod('getAt', [i]));
  num get length => $unsafe.callMethod('getLength');
  void insertAt(num i, E elem) {
    $unsafe.callMethod('insertAt', [i, _unwrap(elem)]);
  }
  E pop() => _wrap($unsafe.callMethod('pop'));
  num push(E elem) => $unsafe.callMethod('push', [_unwrap(elem)]);
  E removeAt(num i) => _wrap($unsafe.callMethod('removeAt', [i]));
  void setAt(num i, E elem) {
    $unsafe.callMethod('setAt', [i, _unwrap(elem)]);
  }

  // TODO mark methods with @remove
  MapsEventListener addListener(String eventName, Function handler) => super.addListener(eventName, handler);
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) {
    super.bindTo(key, target, targetKey, noNotify);
  }
  void changed(String key) {
    super.changed(key);
  }
  Object get(String key) => super.get(key);
  void notify(String key) {
    super.notify(key);
  }
  void set(String key, dynamic value) {
    super.set(key, value);
  }
  void unbind(String key) {
    super.unbind(key);
  }
  void unbindAll() {
    super.unbindAll();
  }
  set values(Map<String, Object> values) {
    super.values = values;
  }
}

class IndexAndElement<E> {
  final int index;
  final E element;
  IndexAndElement(this.index, this.element);
}
