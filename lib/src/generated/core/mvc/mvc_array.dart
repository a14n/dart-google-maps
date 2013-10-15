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
  static MVCArray cast(js.JsObject proxy, [jsw.Translator translator]) => proxy == null ? null : new MVCArray.fromJsObject(proxy, translator);
  static MVCArray castListOfSerializables(js.JsObject proxy, jsw.Mapper<dynamic, js.Serializable> fromJs, {mapOnlyNotNull: false}) => proxy == null ? null : new MVCArray.fromJsObject(proxy, new jsw.TranslatorForSerializable(fromJs, mapOnlyNotNull: mapOnlyNotNull));
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['MVCArray']);

  final jsw.Translator<E> _translator;

  jsw.SubscribeStreamProvider<int> _onInsertAt;
  jsw.SubscribeStreamProvider<IndexAndElement<E>> _onRemoveAt;
  jsw.SubscribeStreamProvider<IndexAndElement<E>> _onSetAt;

  MVCArray([List<E> array, jsw.Translator<E> translator])
      : super(maps['MVCArray'], [array is js.Serializable ? array : js.jsify(array)]),
        this._translator = translator {
    _initStreams();
  }
  MVCArray.fromJsObject(js.JsObject proxy, [jsw.Translator<E> translator])
      : super.fromJsObject(proxy),
        this._translator = translator {
    _initStreams();
  }

  void _initStreams() {
    _onInsertAt = event.getStreamProviderFor(this, "insert_at");
    _onRemoveAt = event.getStreamProviderFor(this, "remove_at", (int index, oldElement) => new IndexAndElement<E>(index, _fromJs(oldElement)));
    _onSetAt = event.getStreamProviderFor(this, "set_at", (int index, oldElement) => new IndexAndElement<E>(index, _fromJs(oldElement)));
  }

  Stream<int> get onInsertAt => _onInsertAt.stream;
  Stream<IndexAndElement<E>> get onRemoveAt => _onRemoveAt.stream;
  Stream<IndexAndElement<E>> get onSetAt => _onSetAt.stream;

  dynamic _toJs(E e) => _translator == null ? e : _translator.toJs(e);
  E _fromJs(dynamic value) => _translator == null ? value : _translator.fromJs(value);

  void clear() {
    $unsafe.callMethod('clear');
  }
  void forEach(void callback(E o, num index)) => $unsafe.callMethod('forEach', [(Object o, num index) => callback(_fromJs(o), index)]);
  List<E> getArray() => jsw.TypedJsArray.cast($unsafe.callMethod('getArray'), _translator);
  E getAt(num i) => _fromJs($unsafe.callMethod('getAt', [i]));
  num get length => $unsafe.callMethod('getLength');
  void insertAt(num i, E elem) {
    $unsafe.callMethod('insertAt', [i, _toJs(elem)]);
  }
  E pop() => _fromJs($unsafe.callMethod('pop'));
  num push(E elem) => $unsafe.callMethod('push', [_toJs(elem)]);
  E removeAt(num i) => _fromJs($unsafe.callMethod('removeAt', [i]));
  void setAt(num i, E elem) {
    $unsafe.callMethod('.setAt', [i, _toJs(elem)]);
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
  void set(String key, Object value) {
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
