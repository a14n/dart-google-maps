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

@wrapper @forMethods @skipConstructor abstract class Circle extends MVCObject {
  static Circle cast(js.JsObject jsObject) => null;
  static bool isInstance(js.JsObject proxy) => proxy.instanceof(maps['Circle']);

  SubscribeStreamProvider _onCenterChanged;
  SubscribeStreamProvider<MouseEvent> _onClick;
  SubscribeStreamProvider<MouseEvent> _onDblClick;
  SubscribeStreamProvider<MouseEvent> _onMousedown;
  SubscribeStreamProvider<MouseEvent> _onMousemove;
  SubscribeStreamProvider<MouseEvent> _onMouseout;
  SubscribeStreamProvider<MouseEvent> _onMouseover;
  SubscribeStreamProvider<MouseEvent> _onMouseup;
  SubscribeStreamProvider _onRadiusChanged;
  SubscribeStreamProvider<MouseEvent> _onRightclick;

  Circle([CircleOptions opts]) : super(maps['Circle'], [opts]) { _initStreams(); }
  Circle.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

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

  LatLngBounds get bounds;
  LatLng get center;
  bool get draggable;
  bool get editable;
  GMap get map ;
  num get radius;
  bool get visible;
  set center(LatLng center);
  set draggable(bool draggable);
  set editable(bool editable);
  set map(GMap map);
  set options(CircleOptions options);
  set radius(num radius);
  set visible(bool visible);
}
