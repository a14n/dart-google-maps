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
  static Circle cast(js.Proxy proxy) => proxy == null ? null : new Circle.fromProxy(proxy);
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.Circle);

  Stream _onCenterChanged;
  Stream<MouseEvent> _onClick;
  Stream<MouseEvent> _onDblClick;
  Stream<MouseEvent> _onMousedown;
  Stream<MouseEvent> _onMousemove;
  Stream<MouseEvent> _onMouseout;
  Stream<MouseEvent> _onMouseover;
  Stream<MouseEvent> _onMouseup;
  Stream _onRadiusChanged;
  Stream<MouseEvent> _onRightclick;

  Circle([CircleOptions opts]) : super(maps.Circle, [opts]) { _initStreams(); }
  Circle.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onCenterChanged = event.getStreamFor(this, "center_changed");
    _onClick = event.getStreamFor(this, "click", MouseEvent.cast);
    _onDblClick = event.getStreamFor(this, "dblclick", MouseEvent.cast);
    _onMousedown = event.getStreamFor(this, "mousedown", MouseEvent.cast);
    _onMousemove = event.getStreamFor(this, "mousemove", MouseEvent.cast);
    _onMouseout = event.getStreamFor(this, "mouseout", MouseEvent.cast);
    _onMouseover = event.getStreamFor(this, "mouseover", MouseEvent.cast);
    _onMouseup = event.getStreamFor(this, "mouseup", MouseEvent.cast);
    _onRadiusChanged = event.getStreamFor(this, "radius_changed");
    _onRightclick = event.getStreamFor(this, "rightclick", MouseEvent.cast);
  }

  Stream get onCenterChanged => _onCenterChanged;
  Stream<MouseEvent> get onClick => _onClick;
  Stream<MouseEvent> get onDblClick => _onDblClick;
  Stream<MouseEvent> get onMousedown => _onMousedown;
  Stream<MouseEvent> get onMousemove => _onMousemove;
  Stream<MouseEvent> get onMouseout => _onMouseout;
  Stream<MouseEvent> get onMouseover => _onMouseover;
  Stream<MouseEvent> get onMouseup => _onMouseup;
  Stream get onRadiusChanged => _onRadiusChanged;
  Stream<MouseEvent> get onRightclick => _onRightclick;

  LatLngBounds get bounds => LatLngBounds.cast($unsafe.getBounds());
  LatLng get center => LatLng.cast($unsafe.getCenter());
  bool get draggable => $unsafe.getDraggable();
  bool get editable => $unsafe.getEditable();
  GMap get map => GMap.cast($unsafe.getMap());
  num get radius => $unsafe.getRadius();
  bool get visible => $unsafe.getVisible();
  set center(LatLng center) => $unsafe.setCenter(center);
  set draggable(bool draggable) => $unsafe.setDraggable(draggable);
  set editable(bool editable) => $unsafe.setEditable(editable);
  set map(GMap map) => $unsafe.setMap(map);
  set options(CircleOptions options) => $unsafe.setOptions(options);
  set radius(num radius) => $unsafe.setRadius(radius);
  set visible(bool visible) => $unsafe.setVisible(visible);

  /// deprecated : use onXxx stream.
  @deprecated CircleEvents get on => new CircleEvents._(this);
}

@deprecated
class CircleEvents {
  static final CENTER_CHANGED = "center_changed";
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final RADIUS_CHANGED = "radius_changed";
  static final RIGHTCLICK = "rightclick";

  final Circle _circle;

  CircleEvents._(this._circle);

  NoArgsEventListenerAdder get centerChanged => new NoArgsEventListenerAdder(_circle, CENTER_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_circle, CLICK);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_circle, DBLCLICK);
  MouseEventListenerAdder get mousedown => new MouseEventListenerAdder(_circle, MOUSEDOWN);
  MouseEventListenerAdder get mousemove => new MouseEventListenerAdder(_circle, MOUSEMOVE);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_circle, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_circle, MOUSEOVER);
  MouseEventListenerAdder get mouseup => new MouseEventListenerAdder(_circle, MOUSEUP);
  NoArgsEventListenerAdder get radiusChanged => new NoArgsEventListenerAdder(_circle, RADIUS_CHANGED);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_circle, RIGHTCLICK);
}