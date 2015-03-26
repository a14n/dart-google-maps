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

abstract class _Polyline extends MVCObject {
  external factory _Polyline([PolylineOptions opts]);

  Stream<PolyMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblClick => getStream(this, #onDblClick,
      "dblclick", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseout => getStream(this, #onMouseout,
      "mouseout", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup",
      (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new PolyMouseEvent.created(o));

  bool get draggable => _getDraggable();
  bool _getDraggable();
  bool get editable => _getEditable();
  bool _getEditable();
  GMap get map => _getMap();
  GMap _getMap();
  MVCArray<LatLng> get path => new MVCArray.created(
      _getPath(), new JsInterfaceCodec((o) => new LatLng.created(o)));
  JsObject _getPath();
  bool get visible => _getVisible();
  bool _getVisible();
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable);
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(PolylineOptions options) => _setOptions(options);
  void _setOptions(PolylineOptions options);
  void set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) {
    if (path == null) _setPath(null);
    else if (path is MVCArray<LatLng>) _setPath(path);
    else if (path is List<LatLng>) _setPath(new JsArray.from(path.map(toJs)));
    else throw 'bad type';
  }
  void _setPath(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path);
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible);
}
