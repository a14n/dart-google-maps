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
  static bool isInstance(js.Proxy jsProxy) => js.instanceof(jsProxy, maps.Circle);

  Circle([CircleOptions opts]) : super.newInstance(maps.Circle, [opts]);
  Circle.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  LatLng get center => $.getCenter().map(LatLng.INSTANCIATOR).value;
  bool get draggable => $.getDraggable().value;
  bool get editable => $.getEditable().value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  num get radius => $.getRadius().value;
  bool get visible => $.getVisible().value;
  set center(LatLng center) => $.setCenter(center);
  set draggable(bool draggable) => $.setDraggable(draggable);
  set editable(bool editable) => $.setEditable(editable);
  set map(GMap map) => $.setMap(map);
  set options(CircleOptions options) => $.setOptions(options);
  set radius(num radius) => $.setRadius(radius);
  set visible(bool visible) => $.setVisible(visible);

  CircleEvents get on => new CircleEvents._(this);
}

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