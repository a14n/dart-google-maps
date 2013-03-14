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
  static bool isInstance(js.Proxy jsProxy) => js.instanceof(jsProxy, maps.Polygon);

  Polygon([PolygonOptions opts]) : super.newInstance(maps.Polygon, [opts]);
  Polygon.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  bool get draggable => $.getDraggable().value;
  bool get editable => $.getEditable().value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  MVCArray<LatLng> get path => $.getPath().map((js.Proxy jsProxy) => new MVCArray.fromJsProxy(jsProxy, (js.Proxy jsProxy) => new LatLng.fromJsProxy(jsProxy))).value;
  MVCArray<MVCArray<LatLng>> get paths => $.getPaths().map((js.Proxy jsProxy) => new MVCArray.fromJsProxy(jsProxy, (js.Proxy jsProxy) => new MVCArray.fromJsProxy(jsProxy, (js.Proxy jsProxy) => new LatLng.fromJsProxy(jsProxy)))).value;
  bool get visible => $.getVisible().value;
  set draggable(bool draggable) => $.setDraggable(draggable);
  set editable(bool editable) => $.setEditable(editable);
  set map(GMap map) => $.setMap(map);
  set options(PolylineOptions options) => $.setOptions(options);
  set path(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      $.setPath(path);
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<LatLng> or List<LatLng>");
    }
  }
  set paths(Object paths) {
    if (paths is MVCArray<MVCArray<LatLng>> || paths is MVCArray<LatLng> || paths is List<List<LatLng>> || paths is List<LatLng>) {
      $.setPaths(paths);
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<MVCArray<LatLng>>, MVCArray<LatLng>, List<List<LatLng>> or List<LatLng>");
    }
  }
  set visible(bool visible) => $.setVisible(visible);

  PolygonEvents get on => new PolygonEvents._(this);
}

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