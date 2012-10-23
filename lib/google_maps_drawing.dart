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

library google_maps_drawing;

import 'package:js/js.dart' as js;
import 'js_wrap.dart' as jsw;
import 'google_maps.dart';

class DrawingManager extends MVCObject {
  DrawingManager([DrawingManagerOptions opts]) : super.newInstance(maps.drawing.DrawingManager, [opts]);
  DrawingManager.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  OverlayType get drawingMode => $.getDrawingMode().map(OverlayType.INSTANCIATOR).value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  set drawingMode(OverlayType drawingMode) => $.setDrawingMode(drawingMode);
  set map(GMap map) => $.setMap(map);
  set options(DrawingManagerOptions options) => $.setOptions(options);

  DrawingManagerEvents get on => new DrawingManagerEvents._(this);
}

class DrawingManagerEvents {
  final DrawingManager _drawingManager;

  DrawingManagerEvents._(DrawingManager this._drawingManager);

  CircleCompleteEventListenerAdder get circleComplete => new FusionTablesMouseEventListenerAdder(_drawingManager, "circlecomplete");
  MarkerCompleteEventListenerAdder get markerComplete => new FusionTablesMouseEventListenerAdder(_drawingManager, "markercomplete");
  OverlayCompleteEventListenerAdder get overlayComplete => new FusionTablesMouseEventListenerAdder(_drawingManager, "overlaycomplete");
  PolygonCompleteEventListenerAdder get polygonComplete => new FusionTablesMouseEventListenerAdder(_drawingManager, "polygoncomplete");
  PolylineCompleteEventListenerAdder get polylineComplete => new FusionTablesMouseEventListenerAdder(_drawingManager, "polylinecomplete");
  RectangleCompleteEventListenerAdder get rectangleComplete => new FusionTablesMouseEventListenerAdder(_drawingManager, "rectanglecomplete");
}

class DrawingManagerOptions extends jsw.IsJsProxy {
  set circleOptions(CircleOptions circleOptions) => $.circleOptions = circleOptions;
  set drawingControl(bool drawingControl) => $.drawingControl = drawingControl;
  set drawingControlOptions(DrawingControlOptions drawingControlOptions) => $.drawingControlOptions = drawingControlOptions;
  set drawingMode(OverlayType drawingMode) => $.drawingMode = drawingMode;
  set map(GMap map) => $.map = map;
  set markerOptions(MarkerOptions markerOptions) => $.markerOptions = markerOptions;
  set polygonOptions(PolygonOptions polygonOptions) => $.polygonOptions = polygonOptions;
  set polylineOptions(PolylineOptions polylineOptions) => $.polylineOptions = polylineOptions;
  set rectangleOptions(RectangleOptions rectangleOptions) => $.rectangleOptions = rectangleOptions;
}

class DrawingControlOptions extends jsw.IsJsProxy {
  set drawingModes(List<OverlayType> drawingModes) => $.drawingModes = drawingModes;
  set position(ControlPosition position) => $.position = position;
}

class OverlayCompleteEvent extends jsw.IsJsProxy {
  OverlayCompleteEvent();
  OverlayCompleteEvent.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  jsw.IsJsProxy get overlay => $.overlay.map((jsProxy) {
    if (jsProxy == null) {
      return null;
    } else if (Marker.isInstance(jsProxy)) {
      return new Marker.fromJsProxy(jsProxy);
    } else if (Polygon.isInstance(jsProxy)) {
      return new Polygon.fromJsProxy(jsProxy);
    } else if (Polyline.isInstance(jsProxy)) {
      return new Polyline.fromJsProxy(jsProxy);
    } else if (Rectangle.isInstance(jsProxy)) {
      return new Rectangle.fromJsProxy(jsProxy);
    } else if (Circle.isInstance(jsProxy)) {
      return new Circle.fromJsProxy(jsProxy);
    } else {
      throw new Exception("Unsupported result");
    }
  }).value;
  OverlayType get type => $.type.map(OverlayType.INSTANCIATOR).value;
}

class OverlayType extends jsw.IsEnum<String> {
  static final CIRCLE= new OverlayType._(maps.drawing.OverlayType.CIRCLE);
  static final MARKER= new OverlayType._(maps.drawing.OverlayType.MARKER);
  static final POLYGON= new OverlayType._(maps.drawing.OverlayType.POLYGON);
  static final POLYLINE= new OverlayType._(maps.drawing.OverlayType.POLYLINE);
  static final RECTANGLE= new OverlayType._(maps.drawing.OverlayType.RECTANGLE);

  static final _INSTANCES = [CIRCLE, MARKER, POLYGON, POLYLINE, RECTANGLE];

  static OverlayType find(Object o) => findIn(_INSTANCES, o);

  OverlayType._(String value) : super(value);

  bool operator ==(Object other) => value == (other is OverlayType ? (other as OverlayType).value : other);
}

class CircleCompleteEventListenerAdder extends EventListenerAdder {
  CircleCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Circle circle)) { super.add((e) => handler(e.map((e) => Circle.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Circle circle)) => super.addTemporary((e) => handler(e.map((e) => Circle.fromJsProxy(e)).value));
}

class MarkerCompleteEventListenerAdder extends EventListenerAdder {
  MarkerCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Marker marker)) { super.add((e) => handler(e.map((e) => new Marker.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Marker marker)) => super.addTemporary((e) => handler(e.map((e) => new Marker.fromJsProxy(e)).value));
}

class OverlayCompleteEventListenerAdder extends EventListenerAdder {
  OverlayCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(OverlayCompleteEvent e)) { super.add((e) => handler(e.map((e) => new OverlayCompleteEvent.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(OverlayCompleteEvent e)) => super.addTemporary((e) => handler(e.map((e) => new OverlayCompleteEvent.fromJsProxy(e)).value));
}

class PolygonCompleteEventListenerAdder extends EventListenerAdder {
  PolygonCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Polygon polygon)) { super.add((e) => handler(e.map((e) => new Polygon.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Polygon polygon)) => super.addTemporary((e) => handler(e.map((e) => new Polygon.fromJsProxy(e)).value));
}

class PolylineCompleteEventListenerAdder extends EventListenerAdder {
  PolylineCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Polyline polyline)) { super.add((e) => handler(e.map((e) => new Polyline.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Polyline polyline)) => super.addTemporary((e) => handler(e.map((e) => new Polyline.fromJsProxy(e)).value));
}

class RectangleCompleteEventListenerAdder extends EventListenerAdder {
  RectangleCompleteEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(Rectangle rectangle)) { super.add((e) => handler(e.map((e) => new Rectangle.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(Rectangle rectangle)) => super.addTemporary((e) => handler(e.map((e) => new Rectangle.fromJsProxy(e)).value));
}

