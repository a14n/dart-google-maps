#library('gmaps-drawing');

#import('package:js/js.dart', prefix:'js');
#import('jswrap.dart', prefix:'jsw');
#import('gmaps.dart');

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

// TODO handle events
class DrawingManagerEvents {
  final DrawingManager _drawingManager;

  DrawingManagerEvents._(DrawingManager this._drawingManager);
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

class OverlayCompleteEvent extends NativeEvent {
  OverlayCompleteEvent();
  OverlayCompleteEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

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
