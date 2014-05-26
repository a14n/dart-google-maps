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

class Polygon extends MVCObject {
  static Polygon $wrap(js.JsObject jsObject) => jsObject == null ? null : new Polygon.fromJsObject(jsObject);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['Polygon']);

  jsw.SubscribeStreamProvider<PolyMouseEvent> _onClick;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onRightclick;

  Polygon([PolygonOptions opts])
      : super(maps['Polygon'], [opts == null ? null : opts.$unsafe]) {
    _initStreams();
  }
  Polygon.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", PolyMouseEvent.$wrap);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", PolyMouseEvent.$wrap);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", PolyMouseEvent.$wrap);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", PolyMouseEvent.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", PolyMouseEvent.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", PolyMouseEvent.$wrap);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", PolyMouseEvent.$wrap);
    _onRightclick = event.getStreamProviderFor(this, "rightclick", PolyMouseEvent.$wrap);
  }

  Stream<PolyMouseEvent> get onClick => _onClick.stream;
  Stream<PolyMouseEvent> get onDblClick => _onDblClick.stream;
  Stream<PolyMouseEvent> get onMousedown => _onMousedown.stream;
  Stream<PolyMouseEvent> get onMousemove => _onMousemove.stream;
  Stream<PolyMouseEvent> get onMouseout => _onMouseout.stream;
  Stream<PolyMouseEvent> get onMouseover => _onMouseover.stream;
  Stream<PolyMouseEvent> get onMouseup => _onMouseup.stream;
  Stream<PolyMouseEvent> get onRightclick => _onRightclick.stream;

  bool get draggable => $unsafe.callMethod('getDraggable');
  bool get editable => $unsafe.callMethod('getEditable');
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  MVCArray<LatLng> get path => MVCArray.$wrapSerializables($unsafe.callMethod('getPath'), LatLng.$wrap);
  MVCArray<MVCArray<LatLng>> get paths => MVCArray.$wrapSerializables($unsafe.callMethod('getPaths'), (e) => MVCArray.$wrapSerializables(e, LatLng.$wrap));
  bool get visible => $unsafe.callMethod('getVisible');
  set draggable(bool draggable) => $unsafe.callMethod('setDraggable', [draggable]);
  set editable(bool editable) => $unsafe.callMethod('setEditable', [editable]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set options(PolygonOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
  set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe.callMethod('setPath', [path == null ? null : path is js.JsArray ? path : path is List ? jsw.jsify(path) : path]);
  set paths(dynamic /*MVCArray.<MVCArray.<LatLng>>|MVCArray.<LatLng>|Array.<Array.<LatLng>>|Array.<LatLng>*/ paths) => $unsafe.callMethod('setPaths', [paths == null ? null : paths is js.JsArray ? paths : paths is List ? jsw.jsify(paths) : paths]);
  set visible(bool visible) => $unsafe.callMethod('setVisible', [visible]);
}
