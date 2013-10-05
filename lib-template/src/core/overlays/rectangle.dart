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

@wrapper @forMethods @skipConstructor abstract class Rectangle extends MVCObject {
  static Rectangle cast(js.JsObject jsObject) => null;
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['Rectangle']);

  jsw.SubscribeStreamProvider _onBoundsChanged;
  jsw.SubscribeStreamProvider<MouseEvent> _onClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onDblClick;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousedown;
  jsw.SubscribeStreamProvider<MouseEvent> _onMousemove;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseout;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseover;
  jsw.SubscribeStreamProvider<MouseEvent> _onMouseup;
  jsw.SubscribeStreamProvider<MouseEvent> _onRightclick;

  Rectangle([RectangleOptions opts]) : super(maps['Rectangle'], [opts]) { _initStreams(); }
  Rectangle.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onBoundsChanged = event.getStreamProviderFor(this, "bounds_changed");
    _onClick = event.getStreamProviderFor(this, "click", MouseEvent.cast);
    _onDblClick = event.getStreamProviderFor(this, "dblclick", MouseEvent.cast);
    _onMousedown = event.getStreamProviderFor(this, "mousedown", MouseEvent.cast);
    _onMousemove = event.getStreamProviderFor(this, "mousemove", MouseEvent.cast);
    _onMouseout = event.getStreamProviderFor(this, "mouseout", MouseEvent.cast);
    _onMouseover = event.getStreamProviderFor(this, "mouseover", MouseEvent.cast);
    _onMouseup = event.getStreamProviderFor(this, "mouseup", MouseEvent.cast);
    _onRightclick = event.getStreamProviderFor(this, "rightclick", MouseEvent.cast);
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

  LatLngBounds get bounds;
  bool get draggable;
  bool get editable;
  GMap get map;
  bool get visible;
  set bounds(LatLngBounds bounds);
  set draggable(bool draggable);
  set editable(bool editable);
  set map(GMap map);
  set options(RectangleOptions options);
  set visible(bool visible);
}
