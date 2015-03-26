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

class Rectangle extends MVCObject {
  static Rectangle $wrap(js.JsObject jsObject) => jsObject == null ? null : new Rectangle.fromJsObject(jsObject);
  static bool isInstance(js.JsObject jsObject) => jsObject != null && jsObject.instanceof(maps['Rectangle']);

  jsw.SubscribeStreamProvider _onBoundsChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider<MouseEvent> _onRightclick;

  Rectangle([RectangleOptions opts])
      : super(maps['Rectangle'], [opts == null ? null : opts.$unsafe]) {
    _initStreams();
  }
  Rectangle.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onBoundsChanged = event.getStreamProviderFor(this, "bounds_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.$wrap);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.$wrap);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", MouseEvent.$wrap);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", MouseEvent.$wrap);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.$wrap);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.$wrap);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", MouseEvent.$wrap);
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.$wrap);
  }

  Stream get onBoundsChanged => _onBoundsChanged.stream;
  Stream<MouseEvent> get onClick => _onClick.stream;
  Stream<MouseEvent> get onDblClick => _onDblClick.stream;
  Stream<MouseEvent> get onMousedown => _onMousedown.stream;
  Stream<MouseEvent> get onMousemove => _onMousemove.stream;
  Stream<MouseEvent> get onMouseout => _onMouseout.stream;
  Stream<MouseEvent> get onMouseover => _onMouseover.stream;
  Stream<MouseEvent> get onMouseup => _onMouseup.stream;
  Stream<MouseEvent> get onRightclick => _onRightclick.stream;

  LatLngBounds get bounds => LatLngBounds.$wrap($unsafe.callMethod('getBounds'));
  bool get draggable => $unsafe.callMethod('getDraggable');
  bool get editable => $unsafe.callMethod('getEditable');
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  bool get visible => $unsafe.callMethod('getVisible');
  set bounds(LatLngBounds bounds) => $unsafe.callMethod('setBounds', [bounds == null ? null : bounds.$unsafe]);
  set draggable(bool draggable) => $unsafe.callMethod('setDraggable', [draggable]);
  set editable(bool editable) => $unsafe.callMethod('setEditable', [editable]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set options(RectangleOptions options) => $unsafe.callMethod('setOptions', [options == null ? null : options.$unsafe]);
  set visible(bool visible) => $unsafe.callMethod('setVisible', [visible]);
}
