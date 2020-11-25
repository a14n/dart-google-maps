// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.drawing;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_DrawingManager)
@JS('google.maps.drawing.DrawingManager')
class DrawingManager extends MVCObject {
  external DrawingManager([
    DrawingManagerOptions options, // ignore: unused_element
  ]);
}

@GeneratedFrom(_DrawingManager)
extension DrawingManager$Ext on DrawingManager {
  OverlayType get drawingMode => _getDrawingMode();
  GMap get map => _getMap();
  set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  set map(GMap map) => _setMap(map);
  set options(DrawingManagerOptions options) => _setOptions(options);
  Stream<Circle> get onCirclecomplete {
    StreamController<Circle> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'circlecomplete',
          allowInterop((Circle circle) => sc.add(circle)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Circle>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Marker> get onMarkercomplete {
    StreamController<Marker> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'markercomplete',
          allowInterop((Marker marker) => sc.add(marker)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Marker>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<OverlayCompleteEvent> get onOverlaycomplete {
    StreamController<OverlayCompleteEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'overlaycomplete',
          allowInterop((OverlayCompleteEvent event) => sc.add(event)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<OverlayCompleteEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Polygon> get onPolygoncomplete {
    StreamController<Polygon> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'polygoncomplete',
          allowInterop((Polygon polygon) => sc.add(polygon)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Polygon>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Polyline> get onPolylinecomplete {
    StreamController<Polyline> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'polylinecomplete',
          allowInterop((Polyline polyline) => sc.add(polyline)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Polyline>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Rectangle> get onRectanglecomplete {
    StreamController<Rectangle> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rectanglecomplete',
          allowInterop((Rectangle rectangle) => sc.add(rectangle)),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Rectangle>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  OverlayType _getDrawingMode() => callMethod(this, 'getDrawingMode', []);

  GMap _getMap() => callMethod(this, 'getMap', []);

  void _setDrawingMode(OverlayType drawingMode) =>
      callMethod(this, 'setDrawingMode', [drawingMode]);

  void _setMap(GMap map) => callMethod(this, 'setMap', [map]);

  void _setOptions(DrawingManagerOptions options) =>
      callMethod(this, 'setOptions', [options]);
}

@GeneratedFrom(_DrawingManagerOptions)
@JS()
@anonymous
class DrawingManagerOptions {
  external factory DrawingManagerOptions();

  external CircleOptions get circleOptions;

  external set circleOptions(CircleOptions value);

  external bool get drawingControl;

  external set drawingControl(bool value);

  external DrawingControlOptions get drawingControlOptions;

  external set drawingControlOptions(DrawingControlOptions value);

  external OverlayType get drawingMode;

  external set drawingMode(OverlayType value);

  external GMap get map;

  external set map(GMap value);

  external MarkerOptions get markerOptions;

  external set markerOptions(MarkerOptions value);

  external PolygonOptions get polygonOptions;

  external set polygonOptions(PolygonOptions value);

  external PolylineOptions get polylineOptions;

  external set polylineOptions(PolylineOptions value);

  external RectangleOptions get rectangleOptions;

  external set rectangleOptions(RectangleOptions value);
}

@GeneratedFrom(_DrawingControlOptions)
@JS()
@anonymous
class DrawingControlOptions {
  external factory DrawingControlOptions();

  external ControlPosition get position;

  external set position(ControlPosition value);
}

@GeneratedFrom(_DrawingControlOptions)
extension DrawingControlOptions$Ext on DrawingControlOptions {
  List<OverlayType> get drawingModes =>
      getProperty(this, 'drawingModes')?.cast<OverlayType>();

  set drawingModes(List<OverlayType> value) {
    setProperty(this, 'drawingModes', value);
  }
}

@GeneratedFrom(_OverlayCompleteEvent)
@JS()
@anonymous
class OverlayCompleteEvent {
  external factory OverlayCompleteEvent();

  external Object get overlay;

  external set overlay(Object value);

  external OverlayType get type;

  external set type(OverlayType value);
}

@GeneratedFrom(_OverlayType)
@JS('google.maps.drawing.OverlayType')
class OverlayType {
  external static OverlayType get CIRCLE;
  external static OverlayType get MARKER;
  external static OverlayType get POLYGON;
  external static OverlayType get POLYLINE;
  external static OverlayType get RECTANGLE;
}
