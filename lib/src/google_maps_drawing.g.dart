// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-06T19:57:01.091Z

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
          [__codec163.encode(options)]));

  OverlayType get drawingMode => _getDrawingMode();
  OverlayType _getDrawingMode() =>
      __codec164.decode(asJsObject(this).callMethod('getDrawingMode'));
  GMap get map => _getMap();
  GMap _getMap() => __codec165.decode(asJsObject(this).callMethod('getMap'));
  void set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(OverlayType drawingMode) {
    asJsObject(this).callMethod(
        'setDrawingMode', [__codec164.encode(drawingMode)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec165.encode(map)]);
  }
  void set options(DrawingManagerOptions options) => _setOptions(options);
  void _setOptions(DrawingManagerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec163.encode(options)]);
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
/// codec for DrawingManagerOptions
final __codec163 = new JsInterfaceCodec<DrawingManagerOptions>(
    (o) => new DrawingManagerOptions.created(o));

/// codec for OverlayType
final __codec164 = new BiMapCodec<OverlayType, dynamic>({
  OverlayType.CIRCLE: getPath('google.maps.drawing.OverlayType')['CIRCLE'],
  OverlayType.MARKER: getPath('google.maps.drawing.OverlayType')['MARKER'],
  OverlayType.POLYGON: getPath('google.maps.drawing.OverlayType')['POLYGON'],
  OverlayType.POLYLINE: getPath('google.maps.drawing.OverlayType')['POLYLINE'],
  OverlayType.RECTANGLE: getPath('google.maps.drawing.OverlayType')['RECTANGLE']
});

/// codec for GMap
final __codec165 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

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
    asJsObject(this)['circleOptions'] = __codec166.encode(_circleOptions);
  }
  CircleOptions get circleOptions =>
      __codec166.decode(asJsObject(this)['circleOptions']);
  void set drawingControl(bool _drawingControl) {
    asJsObject(this)['drawingControl'] = _drawingControl;
  }
  bool get drawingControl => asJsObject(this)['drawingControl'];
  void set drawingControlOptions(DrawingControlOptions _drawingControlOptions) {
    asJsObject(this)['drawingControlOptions'] =
        __codec167.encode(_drawingControlOptions);
  }
  DrawingControlOptions get drawingControlOptions =>
      __codec167.decode(asJsObject(this)['drawingControlOptions']);
  void set drawingMode(OverlayType _drawingMode) {
    asJsObject(this)['drawingMode'] = __codec164.encode(_drawingMode);
  }
  OverlayType get drawingMode =>
      __codec164.decode(asJsObject(this)['drawingMode']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec165.encode(_map);
  }
  GMap get map => __codec165.decode(asJsObject(this)['map']);
  void set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec168.encode(_markerOptions);
  }
  MarkerOptions get markerOptions =>
      __codec168.decode(asJsObject(this)['markerOptions']);
  void set polygonOptions(PolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec169.encode(_polygonOptions);
  }
  PolygonOptions get polygonOptions =>
      __codec169.decode(asJsObject(this)['polygonOptions']);
  void set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec170.encode(_polylineOptions);
  }
  PolylineOptions get polylineOptions =>
      __codec170.decode(asJsObject(this)['polylineOptions']);
  void set rectangleOptions(RectangleOptions _rectangleOptions) {
    asJsObject(this)['rectangleOptions'] = __codec171.encode(_rectangleOptions);
  }
  RectangleOptions get rectangleOptions =>
      __codec171.decode(asJsObject(this)['rectangleOptions']);
}
/// codec for CircleOptions
final __codec166 =
    new JsInterfaceCodec<CircleOptions>((o) => new CircleOptions.created(o));

/// codec for DrawingControlOptions
final __codec167 = new JsInterfaceCodec<DrawingControlOptions>(
    (o) => new DrawingControlOptions.created(o));

/// codec for MarkerOptions
final __codec168 =
    new JsInterfaceCodec<MarkerOptions>((o) => new MarkerOptions.created(o));

/// codec for PolygonOptions
final __codec169 =
    new JsInterfaceCodec<PolygonOptions>((o) => new PolygonOptions.created(o));

/// codec for PolylineOptions
final __codec170 = new JsInterfaceCodec<PolylineOptions>(
    (o) => new PolylineOptions.created(o));

/// codec for RectangleOptions
final __codec171 = new JsInterfaceCodec<RectangleOptions>(
    (o) => new RectangleOptions.created(o));

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
    asJsObject(this)['drawingModes'] = __codec172.encode(_drawingModes);
  }
  List<OverlayType> get drawingModes =>
      __codec172.decode(asJsObject(this)['drawingModes']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec173.encode(_position);
  }
  ControlPosition get position =>
      __codec173.decode(asJsObject(this)['position']);
}
/// codec for List<OverlayType>
final __codec172 = new JsListCodec<OverlayType>(__codec164);

/// codec for ControlPosition
final __codec173 = new BiMapCodec<ControlPosition, dynamic>({
  ControlPosition.BOTTOM_CENTER:
      getPath('google.maps.ControlPosition')['BOTTOM_CENTER'],
  ControlPosition.BOTTOM_LEFT:
      getPath('google.maps.ControlPosition')['BOTTOM_LEFT'],
  ControlPosition.BOTTOM_RIGHT:
      getPath('google.maps.ControlPosition')['BOTTOM_RIGHT'],
  ControlPosition.LEFT_BOTTOM:
      getPath('google.maps.ControlPosition')['LEFT_BOTTOM'],
  ControlPosition.LEFT_CENTER:
      getPath('google.maps.ControlPosition')['LEFT_CENTER'],
  ControlPosition.LEFT_TOP: getPath('google.maps.ControlPosition')['LEFT_TOP'],
  ControlPosition.RIGHT_BOTTOM:
      getPath('google.maps.ControlPosition')['RIGHT_BOTTOM'],
  ControlPosition.RIGHT_CENTER:
      getPath('google.maps.ControlPosition')['RIGHT_CENTER'],
  ControlPosition.RIGHT_TOP:
      getPath('google.maps.ControlPosition')['RIGHT_TOP'],
  ControlPosition.TOP_CENTER:
      getPath('google.maps.ControlPosition')['TOP_CENTER'],
  ControlPosition.TOP_LEFT: getPath('google.maps.ControlPosition')['TOP_LEFT'],
  ControlPosition.TOP_RIGHT: getPath('google.maps.ControlPosition')['TOP_RIGHT']
});

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
    asJsObject(this)['overlay'] = __overlay;
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
    asJsObject(this)['type'] = __codec164.encode(_type);
  }
  OverlayType get type => __codec164.decode(asJsObject(this)['type']);
}
