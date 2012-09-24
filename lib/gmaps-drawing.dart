#library('gmaps-drawing');

#import('dart:html', prefix:'html');
#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class DrawingManager extends MVCObject {
  static const String _TYPE_NAME = "google.maps.drawing.DrawingManager";

  DrawingManager([DrawingManagerOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  DrawingManager.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  OverlayType getDrawingMode() => OverlayType.find($.callForJsRef("getDrawingMode"));
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  void setDrawingMode(OverlayType drawingMode) { $.call("setDrawingMode", [drawingMode]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(DrawingManagerOptions options) { $.call("setOptions", [options]); }
}

class DrawingManagerOptions extends js.JsObject {
  set circleOptions(CircleOptions circleOptions) => $["circleOptions"] = circleOptions;
  set drawingControl(bool drawingControl) => $["drawingControl"] = drawingControl;
  set drawingControlOptions(DrawingControlOptions drawingControlOptions) => $["drawingControlOptions"] = drawingControlOptions;
  set drawingMode(OverlayType drawingMode) => $["drawingMode"] = drawingMode;
  set map(GMap map) => $["map"] = map;
  set markerOptions(MarkerOptions markerOptions) => $["markerOptions"] = markerOptions;
  set polygonOptions(PolygonOptions polygonOptions) => $["polygonOptions"] = polygonOptions;
  set polylineOptions(PolylineOptions polylineOptions) => $["polylineOptions"] = polylineOptions;
  set rectangleOptions(RectangleOptions rectangleOptions) => $["rectangleOptions"] = rectangleOptions;
}

class DrawingControlOptions extends js.JsObject {
  set drawingModes(List<OverlayType> drawingModes) => $["drawingModes"] = drawingModes;
  set position(ControlPosition position) => $["position"] = position;
}

class OverlayCompleteEvent extends NativeEvent {
  OverlayCompleteEvent();
  OverlayCompleteEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  js.JsObject get overlay {
    final jsRef = $.getPropertyAsJsRef("overlay");
    if (js.isInstanceOf(jsRef, Marker.TYPE_NAME)) {
      return new Marker.fromJsRef(jsRef);
    } else if (js.isInstanceOf(jsRef, Polygon.TYPE_NAME)) {
      return new Polygon.fromJsRef(jsRef);
    } else if (js.isInstanceOf(jsRef, Polyline.TYPE_NAME)) {
      return new Polyline.fromJsRef(jsRef);
    } else if (js.isInstanceOf(jsRef, Rectangle.TYPE_NAME)) {
      return new Rectangle.fromJsRef(jsRef);
    } else if (js.isInstanceOf(jsRef, Circle.TYPE_NAME)) {
      return new Circle.fromJsRef(jsRef);
    } else {
      throw new Exception("Unsupported result");
    }
  }
  OverlayType get type => OverlayType.find($.getPropertyAsJsRef("type"));
}

class OverlayType extends js.JsObject {
  static const String TYPE_NAME = "google.maps.drawing.OverlayType";

  static final OverlayType CIRCLE= new OverlayType._("${TYPE_NAME}.CIRCLE");
  static final OverlayType MARKER= new OverlayType._("${TYPE_NAME}.MARKER");
  static final OverlayType POLYGON= new OverlayType._("${TYPE_NAME}.POLYGON");
  static final OverlayType POLYLINE= new OverlayType._("${TYPE_NAME}.POLYLINE");
  static final OverlayType RECTANGLE= new OverlayType._("${TYPE_NAME}.RECTANGLE");

  static OverlayType find(Object o) { return findIn(o, [CIRCLE, MARKER, POLYGON, POLYLINE, RECTANGLE]); }

  OverlayType._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}
