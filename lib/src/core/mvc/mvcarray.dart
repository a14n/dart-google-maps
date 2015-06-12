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
  Codec<E, dynamic> _codec = null;

  _MVCArray({List<E> elements, Codec<E, dynamic> codec}) : this.created(
          new JsObject(context['google']['maps']['MVCArray'], [
        elements == null
            ? new JsArray()
            : new JsArray.from(
                codec == null ? elements : elements.map(codec.encode))
      ]), codec);

  _MVCArray.created(JsObject o, [Codec<E, dynamic> codec])
      : _codec = codec != null ? codec : new IdentityCodec(),
        super.created(o);

  void clear();
  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index));
  List<E> getArray() => new JsList.created(_getArray(), _codec);
  JsArray _getArray();
  E getAt(num i) => _codec.decode(_getAt(i));
  _getAt(num i);
  num get length => _getLength();
  num _getLength();
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem);
  E pop() => _codec.decode(_pop());
  _pop();
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem);
  E removeAt(num i) => _codec.decode(_removeAt(i));
  _removeAt(num i);
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem);

  Stream<int> get onInsertAt => getStream(this, #onInsertAt, "insert_at");
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(this, #onClick,
      "click", (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
  Stream<IndexAndElement<E>> get onSetAt => getStream(this, #onClick, "click",
      (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
}

class IndexAndElement<E> {
  final int index;
  final E element;
  IndexAndElement(this.index, this.element);
}
