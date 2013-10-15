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
  static Polygon cast(js.JsObject jsObject) => jsObject == null ? null : new Polygon.fromJsObject(jsObject);
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['Polygon']);

  jsw.SubscribeStreamProvider<PolyMouseEvent> _onClick;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider<PolyMouseEvent> _onRightclick;

  Polygon([PolygonOptions opts])
      : super(maps['Polygon'], [opts]) {
    _initStreams();
  }
  Polygon.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", PolyMouseEvent.cast);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", PolyMouseEvent.cast);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", PolyMouseEvent.cast);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", PolyMouseEvent.cast);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", PolyMouseEvent.cast);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", PolyMouseEvent.cast);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", PolyMouseEvent.cast);
    _onRightclick = event.getStreamProviderFor(this, "rightclick", PolyMouseEvent.cast);
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
  GMap get map => GMap.cast($unsafe.callMethod('getMap'));
  MVCArray<LatLng> get path => MVCArray.castListOfSerializables($unsafe.callMethod('getPath'), LatLng.cast);
  MVCArray<MVCArray<LatLng>> get paths => MVCArray.castListOfSerializables($unsafe.callMethod('getPaths'), (e) => MVCArray.castListOfSerializables(e, LatLng.cast));
  bool get visible => $unsafe.callMethod('getVisible');
  set draggable(bool draggable) => $unsafe.callMethod('setDraggable', [draggable]);
  set editable(bool editable) => $unsafe.callMethod('setEditable', [editable]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map]);
  set options(PolylineOptions options) => $unsafe.callMethod('setOptions', [options]);
  set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe.callMethod('setPath', [path == null ? null : path is js.Serializable ? path : path is List ? js.jsify(path) : path]);
  set paths(dynamic /*MVCArray.<MVCArray.<LatLng>>|MVCArray.<LatLng>|Array.<Array.<LatLng>>|Array.<LatLng>*/ paths) => $unsafe.callMethod('setPaths', [paths == null ? null : paths is js.Serializable ? paths : paths is List ? js.jsify(paths) : paths]);
  set visible(bool visible) => $unsafe.callMethod('setVisible', [visible]);
}
