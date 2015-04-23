// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-22T20:32:12.432Z

part of google_maps.drawing;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DrawingManager
// **************************************************************************

@JsName('google.maps.drawing.DrawingManager')
class DrawingManager extends MVCObject implements _DrawingManager {
  DrawingManager.created(JsObject o) : super.created(o);
  DrawingManager([DrawingManagerOptions options]) : this.created(new JsObject(
          getPath('google.maps.drawing.DrawingManager'),
          [((e) => e == null ? null : asJsObject(e))(options)]));

  OverlayType get drawingMode => _getDrawingMode();
  OverlayType _getDrawingMode() => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.drawing.OverlayType');
    if (e == path['CIRCLE']) return OverlayType.CIRCLE;
    if (e == path['MARKER']) return OverlayType.MARKER;
    if (e == path['POLYGON']) return OverlayType.POLYGON;
    if (e == path['POLYLINE']) return OverlayType.POLYLINE;
    if (e == path['RECTANGLE']) return OverlayType.RECTANGLE;
  })(asJsObject(this).callMethod('getDrawingMode'));
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  void set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(OverlayType drawingMode) {
    asJsObject(this).callMethod('setDrawingMode', [
      ((e) {
        if (e == null) return null;
        final path = getPath('google.maps.drawing.OverlayType');
        if (e == OverlayType.CIRCLE) return path['CIRCLE'];
        if (e == OverlayType.MARKER) return path['MARKER'];
        if (e == OverlayType.POLYGON) return path['POLYGON'];
        if (e == OverlayType.POLYLINE) return path['POLYLINE'];
        if (e == OverlayType.RECTANGLE) return path['RECTANGLE'];
      })(drawingMode)
    ]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
  }
  void set options(DrawingManagerOptions options) => _setOptions(options);
  void _setOptions(DrawingManagerOptions options) {
    asJsObject(this).callMethod(
        'setOptions', [((e) => e == null ? null : asJsObject(e))(options)]);
  }

  Stream<Circle> get onCirclecomplete => getStream(this, #onCirclecomplete,
      "circlecomplete", (JsObject o) => new Circle.created(o));
  Stream<Marker> get onMarkercomplete => getStream(this, #onMarkercomplete,
      "markercomplete", (JsObject o) => new Marker.created(o));
  Stream<OverlayCompleteEvent> get onOverlaycomplete => getStream(this,
      #onOverlaycomplete, "overlaycomplete",
      (JsObject o) => new OverlayCompleteEvent.created(o));
  Stream<Polygon> get onPolygoncomplete => getStream(this, #onPolygoncomplete,
      "polygoncomplete", (JsObject o) => new Polygon.created(o));
  Stream<Polyline> get onPolylinecomplete => getStream(this,
      #onPolylinecomplete, "polylinecomplete",
      (JsObject o) => new Polyline.created(o));
  Stream<Rectangle> get onRectanglecomplete => getStream(this,
      #onRectanglecomplete, "rectanglecomplete",
      (JsObject o) => new Rectangle.created(o));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DrawingManagerOptions
// **************************************************************************

@anonymous
class DrawingManagerOptions extends JsInterface
    implements _DrawingManagerOptions {
  DrawingManagerOptions.created(JsObject o) : super.created(o);
  DrawingManagerOptions() : this.created(new JsObject(context['Object']));

  void set circleOptions(CircleOptions _circleOptions) {
    asJsObject(this)['circleOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_circleOptions);
  }
  CircleOptions get circleOptions => ((e) => e == null
      ? null
      : new CircleOptions.created(e))(asJsObject(this)['circleOptions']);
  void set drawingControl(bool _drawingControl) {
    asJsObject(this)['drawingControl'] = _drawingControl;
  }
  bool get drawingControl => asJsObject(this)['drawingControl'];
  void set drawingControlOptions(DrawingControlOptions _drawingControlOptions) {
    asJsObject(this)['drawingControlOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_drawingControlOptions);
  }
  DrawingControlOptions get drawingControlOptions =>
      ((e) => e == null ? null : new DrawingControlOptions.created(e))(
          asJsObject(this)['drawingControlOptions']);
  void set drawingMode(OverlayType _drawingMode) {
    asJsObject(this)['drawingMode'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.drawing.OverlayType');
      if (e == OverlayType.CIRCLE) return path['CIRCLE'];
      if (e == OverlayType.MARKER) return path['MARKER'];
      if (e == OverlayType.POLYGON) return path['POLYGON'];
      if (e == OverlayType.POLYLINE) return path['POLYLINE'];
      if (e == OverlayType.RECTANGLE) return path['RECTANGLE'];
    })(_drawingMode);
  }
  OverlayType get drawingMode => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.drawing.OverlayType');
    if (e == path['CIRCLE']) return OverlayType.CIRCLE;
    if (e == path['MARKER']) return OverlayType.MARKER;
    if (e == path['POLYGON']) return OverlayType.POLYGON;
    if (e == path['POLYLINE']) return OverlayType.POLYLINE;
    if (e == path['RECTANGLE']) return OverlayType.RECTANGLE;
  })(asJsObject(this)['drawingMode']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_markerOptions);
  }
  MarkerOptions get markerOptions => ((e) => e == null
      ? null
      : new MarkerOptions.created(e))(asJsObject(this)['markerOptions']);
  void set polygonOptions(PolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_polygonOptions);
  }
  PolygonOptions get polygonOptions => ((e) => e == null
      ? null
      : new PolygonOptions.created(e))(asJsObject(this)['polygonOptions']);
  void set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_polylineOptions);
  }
  PolylineOptions get polylineOptions => ((e) => e == null
      ? null
      : new PolylineOptions.created(e))(asJsObject(this)['polylineOptions']);
  void set rectangleOptions(RectangleOptions _rectangleOptions) {
    asJsObject(this)['rectangleOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_rectangleOptions);
  }
  RectangleOptions get rectangleOptions => ((e) => e == null
      ? null
      : new RectangleOptions.created(e))(asJsObject(this)['rectangleOptions']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DrawingControlOptions
// **************************************************************************

@anonymous
class DrawingControlOptions extends JsInterface
    implements _DrawingControlOptions {
  DrawingControlOptions.created(JsObject o) : super.created(o);
  DrawingControlOptions() : this.created(new JsObject(context['Object']));

  void set drawingModes(List<OverlayType> _drawingModes) {
    asJsObject(this)['drawingModes'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(new BiMapCodec<OverlayType, dynamic>({
        OverlayType.CIRCLE:
            getPath('google.maps.drawing.OverlayType')['CIRCLE'],
        OverlayType.MARKER:
            getPath('google.maps.drawing.OverlayType')['MARKER'],
        OverlayType.POLYGON:
            getPath('google.maps.drawing.OverlayType')['POLYGON'],
        OverlayType.POLYLINE:
            getPath('google.maps.drawing.OverlayType')['POLYLINE'],
        OverlayType.RECTANGLE:
            getPath('google.maps.drawing.OverlayType')['RECTANGLE']
      }).encode));
    })(_drawingModes);
  }
  List<OverlayType> get drawingModes => ((e) {
    if (e == null) return null;
    return new JsList<OverlayType>.created(e,
        new BiMapCodec<OverlayType, dynamic>({
      OverlayType.CIRCLE: getPath('google.maps.drawing.OverlayType')['CIRCLE'],
      OverlayType.MARKER: getPath('google.maps.drawing.OverlayType')['MARKER'],
      OverlayType.POLYGON:
          getPath('google.maps.drawing.OverlayType')['POLYGON'],
      OverlayType.POLYLINE:
          getPath('google.maps.drawing.OverlayType')['POLYLINE'],
      OverlayType.RECTANGLE:
          getPath('google.maps.drawing.OverlayType')['RECTANGLE']
    }));
  })(asJsObject(this)['drawingModes']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.ControlPosition');
      if (e == ControlPosition.BOTTOM_CENTER) return path['BOTTOM_CENTER'];
      if (e == ControlPosition.BOTTOM_LEFT) return path['BOTTOM_LEFT'];
      if (e == ControlPosition.BOTTOM_RIGHT) return path['BOTTOM_RIGHT'];
      if (e == ControlPosition.LEFT_BOTTOM) return path['LEFT_BOTTOM'];
      if (e == ControlPosition.LEFT_CENTER) return path['LEFT_CENTER'];
      if (e == ControlPosition.LEFT_TOP) return path['LEFT_TOP'];
      if (e == ControlPosition.RIGHT_BOTTOM) return path['RIGHT_BOTTOM'];
      if (e == ControlPosition.RIGHT_CENTER) return path['RIGHT_CENTER'];
      if (e == ControlPosition.RIGHT_TOP) return path['RIGHT_TOP'];
      if (e == ControlPosition.TOP_CENTER) return path['TOP_CENTER'];
      if (e == ControlPosition.TOP_LEFT) return path['TOP_LEFT'];
      if (e == ControlPosition.TOP_RIGHT) return path['TOP_RIGHT'];
    })(_position);
  }
  ControlPosition get position => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.ControlPosition');
    if (e == path['BOTTOM_CENTER']) return ControlPosition.BOTTOM_CENTER;
    if (e == path['BOTTOM_LEFT']) return ControlPosition.BOTTOM_LEFT;
    if (e == path['BOTTOM_RIGHT']) return ControlPosition.BOTTOM_RIGHT;
    if (e == path['LEFT_BOTTOM']) return ControlPosition.LEFT_BOTTOM;
    if (e == path['LEFT_CENTER']) return ControlPosition.LEFT_CENTER;
    if (e == path['LEFT_TOP']) return ControlPosition.LEFT_TOP;
    if (e == path['RIGHT_BOTTOM']) return ControlPosition.RIGHT_BOTTOM;
    if (e == path['RIGHT_CENTER']) return ControlPosition.RIGHT_CENTER;
    if (e == path['RIGHT_TOP']) return ControlPosition.RIGHT_TOP;
    if (e == path['TOP_CENTER']) return ControlPosition.TOP_CENTER;
    if (e == path['TOP_LEFT']) return ControlPosition.TOP_LEFT;
    if (e == path['TOP_RIGHT']) return ControlPosition.TOP_RIGHT;
  })(asJsObject(this)['position']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _OverlayCompleteEvent
// **************************************************************************

@anonymous
class OverlayCompleteEvent extends JsInterface
    implements _OverlayCompleteEvent {
  OverlayCompleteEvent.created(JsObject o) : super.created(o);
  OverlayCompleteEvent() : this.created(new JsObject(context['Object']));

  void set _overlay(dynamic __overlay) {
    asJsObject(this)['overlay'] = toJs(__overlay);
  }
  dynamic get _overlay => asJsObject(this)['overlay'];
  dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<Marker>((o) => new Marker.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Marker"))))
    ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Polygon"))))
    ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Polyline"))))
    ..add(new JsInterfaceCodec<Rectangle>((o) => new Rectangle.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Rectangle"))))
    ..add(new JsInterfaceCodec<Circle>((o) => new Circle.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.Circle")))))
      .decode(_overlay);
  void set overlay(
      dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay) {
    _overlay = (new ChainedCodec()
      ..add(new JsInterfaceCodec<Marker>((o) => new Marker.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.Marker"))))
      ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.Polygon"))))
      ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.Polyline"))))
      ..add(new JsInterfaceCodec<Rectangle>((o) => new Rectangle.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.Rectangle"))))
      ..add(new JsInterfaceCodec<Circle>((o) => new Circle.created(o),
              (o) => o != null && o.instanceof(getPath("google.maps.Circle")))))
        .encode(overlay);
  }
  void set type(OverlayType _type) {
    asJsObject(this)['type'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.drawing.OverlayType');
      if (e == OverlayType.CIRCLE) return path['CIRCLE'];
      if (e == OverlayType.MARKER) return path['MARKER'];
      if (e == OverlayType.POLYGON) return path['POLYGON'];
      if (e == OverlayType.POLYLINE) return path['POLYLINE'];
      if (e == OverlayType.RECTANGLE) return path['RECTANGLE'];
    })(_type);
  }
  OverlayType get type => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.drawing.OverlayType');
    if (e == path['CIRCLE']) return OverlayType.CIRCLE;
    if (e == path['MARKER']) return OverlayType.MARKER;
    if (e == path['POLYGON']) return OverlayType.POLYGON;
    if (e == path['POLYLINE']) return OverlayType.POLYLINE;
    if (e == path['RECTANGLE']) return OverlayType.RECTANGLE;
  })(asJsObject(this)['type']);
}
