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
  static bool isInstance(js.Proxy jsProxy) => js.instanceof(jsProxy, maps.Rectangle);

  Rectangle([RectangleOptions opts]) : super.newInstance(maps.Rectangle, [opts]);
  Rectangle.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  bool get draggable => $.getDraggable().value;
  bool get editable => $.getEditable().value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  bool get visible => $.getVisible().value;
  set bounds(LatLngBounds bounds) => $.setBounds(bounds);
  set draggable(bool draggable) => $.setDraggable(draggable);
  set editable(bool editable) => $.setEditable(editable);
  set map(GMap map) => $.setMap(map);
  set options(RectangleOptions options) => $.setOptions(options);
  set visible(bool visible) => $.setVisible(visible);

  RectangleEvents get on => new RectangleEvents._(this);
}

class RectangleEvents {
  static final BOUNDS_CHANGED = "bounds_changed";
  static final CLICK = "click";
  static final DBLCLICK = "dblclick";
  static final MOUSEDOWN = "mousedown";
  static final MOUSEMOVE = "mousemove";
  static final MOUSEOUT = "mouseout";
  static final MOUSEOVER = "mouseover";
  static final MOUSEUP = "mouseup";
  static final RIGHTCLICK = "rightclick";

  final Rectangle _rectangle;

  RectangleEvents._(this._rectangle);

  NoArgsEventListenerAdder get boundsChanged => new NoArgsEventListenerAdder(_rectangle, BOUNDS_CHANGED);
  MouseEventListenerAdder get click => new MouseEventListenerAdder(_rectangle, CLICK);
  MouseEventListenerAdder get dblclick => new MouseEventListenerAdder(_rectangle, DBLCLICK);
  MouseEventListenerAdder get mousedown => new MouseEventListenerAdder(_rectangle, MOUSEDOWN);
  MouseEventListenerAdder get mousemove => new MouseEventListenerAdder(_rectangle, MOUSEMOVE);
  MouseEventListenerAdder get mouseout => new MouseEventListenerAdder(_rectangle, MOUSEOUT);
  MouseEventListenerAdder get mouseover => new MouseEventListenerAdder(_rectangle, MOUSEOVER);
  MouseEventListenerAdder get mouseup => new MouseEventListenerAdder(_rectangle, MOUSEUP);
  MouseEventListenerAdder get rightclick => new MouseEventListenerAdder(_rectangle, RIGHTCLICK);
}