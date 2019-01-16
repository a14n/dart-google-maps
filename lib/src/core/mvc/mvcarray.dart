// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src;

@JsName('google.maps.MVCArray')
abstract class _MVCArray<E> extends MVCObject {
  _MVCArray({List<E> elements, Codec<E, dynamic> codec})
      : this.created(
            JsObject(context['google']['maps']['MVCArray'] as JsFunction, [
              elements == null
                  ? JsArray()
                  : JsArray.from(
                      codec == null ? elements : elements.map(codec.encode))
            ]),
            codec);

  _MVCArray.created(JsObject o, [Codec<E, dynamic> codec])
      : _codec = codec ?? IdentityCodec(),
        super.created(o);

  // ignore: avoid_init_to_null,prefer_final_fields
  Codec<E, dynamic> _codec = null;

  void clear();
  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index));
  List<E> getArray() => JsList.created(_getArray() as JsArray, _codec);
  dynamic _getArray();
  E getAt(num i) => _codec.decode(_getAt(i));
  dynamic _getAt(num i);
  num get length => _getLength();
  num _getLength();
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem);
  E pop() => _codec.decode(_pop());
  dynamic _pop();
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem);
  E removeAt(num i) => _codec.decode(_removeAt(i));
  dynamic _removeAt(num i);
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem);

  Stream<int> get onInsertAt => getStream(this, 'insert_at');
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(
      this,
      'remove_at',
      (int index, oldElement) =>
          IndexAndElement<E>(index, _codec.decode(oldElement)));
  Stream<IndexAndElement<E>> get onSetAt => getStream(
      this,
      'set_at',
      (int index, oldElement) =>
          IndexAndElement<E>(index, _codec.decode(oldElement)));
}

class IndexAndElement<E> {
  IndexAndElement(this.index, this.element);
  final int index;
  final E element;
}
