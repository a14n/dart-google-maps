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
  static Polygon cast(js.Proxy proxy) => proxy == null ? null : new Polygon.fromProxy(proxy);
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Polygon);

  Stream<PolyMouseEvent> _onClick;
  Stream<PolyMouseEvent> _onDblClick;
  Stream<PolyMouseEvent> _onMousedown;
  Stream<PolyMouseEvent> _onMousemove;
  Stream<PolyMouseEvent> _onMouseout;
  Stream<PolyMouseEvent> _onMouseover;
  Stream<PolyMouseEvent> _onMouseup;
  Stream<PolyMouseEvent> _onRightclick;

  Polygon([PolygonOptions opts]) : super(maps.Polygon, [opts]) { _initStreams(); }
  Polygon.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamFor(this, "click", PolyMouseEvent.cast);
    _onDblClick = event.getStreamFor(this, "dblclick", PolyMouseEvent.cast);
    _onMousedown = event.getStreamFor(this, "mousedown", PolyMouseEvent.cast);
    _onMousemove = event.getStreamFor(this, "mousemove", PolyMouseEvent.cast);
    _onMouseout = event.getStreamFor(this, "mouseout", PolyMouseEvent.cast);
    _onMouseover = event.getStreamFor(this, "mouseover", PolyMouseEvent.cast);
    _onMouseup = event.getStreamFor(this, "mouseup", PolyMouseEvent.cast);
    _onRightclick = event.getStreamFor(this, "rightclick", PolyMouseEvent.cast);
  }

  Stream<PolyMouseEvent> get onClick => _onClick;
  Stream<PolyMouseEvent> get onDblClick => _onDblClick;
  Stream<PolyMouseEvent> get onMousedown => _onMousedown;
  Stream<PolyMouseEvent> get onMousemove => _onMousemove;
  Stream<PolyMouseEvent> get onMouseout => _onMouseout;
  Stream<PolyMouseEvent> get onMouseover => _onMouseover;
  Stream<PolyMouseEvent> get onMouseup => _onMouseup;
  Stream<PolyMouseEvent> get onRightclick => _onRightclick;

  bool get draggable => $unsafe.getDraggable();
  bool get editable => $unsafe.getEditable();
  GMap get map => GMap.cast($unsafe.getMap());
  MVCArray<LatLng> get path => MVCArray.castListOfSerializables($unsafe.getPath(), LatLng.cast);
  MVCArray<MVCArray<LatLng>> get paths => MVCArray.castListOfSerializables($unsafe.getPath(), (e) => MVCArray.castListOfSerializables(e, LatLng.cast));
  bool get visible => $unsafe.getVisible();
  set draggable(bool draggable) => $unsafe.setDraggable(draggable);
  set editable(bool editable) => $unsafe.setEditable(editable);
  set map(GMap map) => $unsafe.setMap(map);
  set options(PolylineOptions options) => $unsafe.setOptions(options);
  set path(dynamic/*MVCArray.<LatLng>|Array.<LatLng>*/ path) => $unsafe.setPath(path is List ? jsifyList(path) : path);
  set paths(dynamic/*MVCArray.<MVCArray.<LatLng>>|MVCArray.<LatLng>|Array.<Array.<LatLng>>|Array.<LatLng>*/ paths) => $unsafe.setPaths(paths is List ? jsifyList(paths) : paths);
  set visible(bool visible) => $unsafe.setVisible(visible);

  /// deprecated : use onXxx stream.
  @deprecated PolygonEvents get on => new PolygonEvents._(this);
}

@deprecated
class PolygonEvents {
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final RIGHTCLICK = "rightclick";

  final Polygon _polygon;

  PolygonEvents._(this._polygon);

  PolyMouseEventListenerAdder get click => new PolyMouseEventListenerAdder(_polygon, CLICK);
  PolyMouseEventListenerAdder get dblclick => new PolyMouseEventListenerAdder(_polygon, DBLCLICK);
  PolyMouseEventListenerAdder get mousedown => new PolyMouseEventListenerAdder(_polygon, MOUSEDOWN);
  PolyMouseEventListenerAdder get mousemove => new PolyMouseEventListenerAdder(_polygon, MOUSEMOVE);
  PolyMouseEventListenerAdder get mouseout => new PolyMouseEventListenerAdder(_polygon, MOUSEOUT);
  PolyMouseEventListenerAdder get mouseover => new PolyMouseEventListenerAdder(_polygon, MOUSEOVER);
  PolyMouseEventListenerAdder get mouseup => new PolyMouseEventListenerAdder(_polygon, MOUSEUP);
  PolyMouseEventListenerAdder get rightclick => new PolyMouseEventListenerAdder(_polygon, RIGHTCLICK);
}