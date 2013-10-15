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

class Circle extends MVCObject {
  static Circle cast(js.JsObject jsObject) => jsObject == null ? null : new Circle.fromJsObject(jsObject);
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['Circle']);

  jsw.SubscribeStreamProvider _onCenterChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider _onRadiusChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onRightclick;

  Circle([CircleOptions opts])
      : super(maps['Circle'], [opts]) {
    _initStreams();
  }
  Circle.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onCenterChanged = event.getStreamProviderFor(this, "center_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.cast);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.cast);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", MouseEvent.cast);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", MouseEvent.cast);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.cast);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.cast);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", MouseEvent.cast);
    _onRadiusChanged = event.getStreamProviderFor(this, "radius_changed");
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.cast);
  }

  Stream get onCenterChanged => _onCenterChanged.stream;
  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;
  Stream<MouseEvent> get onMousedown => _onMousedown.stream;
  Stream<MouseEvent> get onMousemove => _onMousemove.stream;
  Stream<MouseEvent> get onMouseout => _onMouseout.stream;
  Stream<MouseEvent> get onMouseover => _onMouseover.stream;
  Stream<MouseEvent> get onMouseup => _onMouseup.stream;
  Stream get onRadiusChanged => _onRadiusChanged.stream;
  Stream<MouseEvent> get onRightclick => _onRightclick.stream;

  LatLngBounds get bounds => LatLngBounds.cast($unsafe.callMethod('getBounds'));
  LatLng get center => LatLng.cast($unsafe.callMethod('getCenter'));
  bool get draggable => $unsafe.callMethod('getDraggable');
  bool get editable => $unsafe.callMethod('getEditable');
  GMap get map => GMap.cast($unsafe.callMethod('getMap'));
  num get radius => $unsafe.callMethod('getRadius');
  bool get visible => $unsafe.callMethod('getVisible');
  set center(LatLng center) => $unsafe.callMethod('setCenter', [center]);
  set draggable(bool draggable) => $unsafe.callMethod('setDraggable', [draggable]);
  set editable(bool editable) => $unsafe.callMethod('setEditable', [editable]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map]);
  set options(CircleOptions options) => $unsafe.callMethod('setOptions', [options]);
  set radius(num radius) => $unsafe.callMethod('setRadius', [radius]);
  set visible(bool visible) => $unsafe.callMethod('setVisible', [visible]);
}
