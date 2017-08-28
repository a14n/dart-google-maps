// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.drawing;

// **************************************************************************
// Generator: JsInterfaceGenerator
// **************************************************************************

/// codec for dart.core.List<OverlayType>
final __codec12 = new JsListCodec<OverlayType>(__codec10);

/// codec for google_maps.src.drawing.DrawingControlOptions
final __codec11 = new JsInterfaceCodec<DrawingControlOptions>(
    (o) => new DrawingControlOptions.created(o));

/// codec for google_maps.src.drawing.OverlayType
final __codec10 = new BiMapCodec<OverlayType, dynamic>(
    new Map<OverlayType, dynamic>.fromIterable(OverlayType.values,
        value: asJs));

/// codec for google_maps.src.drawing.DrawingManagerOptions
final __codec9 = new JsInterfaceCodec<DrawingManagerOptions>(
    (o) => new DrawingManagerOptions.created(o));

/// codec for google_maps.src.ControlPosition
final __codec8 = new BiMapCodec<ControlPosition, dynamic>(
    new Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));

/// codec for dart.core.List<dynamic>
final __codec7 = new JsListCodec<dynamic>(__codec0);

/// codec for google_maps.src.RectangleOptions
final __codec6 = new JsInterfaceCodec<RectangleOptions>(
    (o) => new RectangleOptions.created(o));

/// codec for google_maps.src.PolylineOptions
final __codec5 = new JsInterfaceCodec<PolylineOptions>(
    (o) => new PolylineOptions.created(o));

/// codec for google_maps.src.PolygonOptions
final __codec4 =
    new JsInterfaceCodec<PolygonOptions>((o) => new PolygonOptions.created(o));

/// codec for google_maps.src.MarkerOptions
final __codec3 =
    new JsInterfaceCodec<MarkerOptions>((o) => new MarkerOptions.created(o));

/// codec for google_maps.src.CircleOptions
final __codec2 =
    new JsInterfaceCodec<CircleOptions>((o) => new CircleOptions.created(o));

/// codec for google_maps.src.GMap
final __codec1 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for null.dynamic
final __codec0 = new DynamicCodec();

@GeneratedFrom(_DrawingManager)
@JsName('google.maps.drawing.DrawingManager')
class DrawingManager extends MVCObject {
  DrawingManager.created(JsObject o) : super.created(o);
  DrawingManager([DrawingManagerOptions options])
      : this.created(new JsObject(
            context['google']['maps']['drawing']['DrawingManager'],
            [__codec9.encode(options)]));

  OverlayType get drawingMode => _getDrawingMode();
  OverlayType _getDrawingMode() =>
      __codec10.decode(asJsObject(this).callMethod('getDrawingMode'));
  GMap get map => _getMap();
  GMap _getMap() => __codec1.decode(asJsObject(this).callMethod('getMap'));
  void set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(OverlayType drawingMode) {
    asJsObject(this)
        .callMethod('setDrawingMode', [__codec10.encode(drawingMode)]);
  }

  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec1.encode(map)]);
  }

  void set options(DrawingManagerOptions options) => _setOptions(options);
  void _setOptions(DrawingManagerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec9.encode(options)]);
  }

  Stream<Circle> get onCirclecomplete => getStream(this, #onCirclecomplete,
      "circlecomplete", (JsObject o) => new Circle.created(o));
  Stream<Marker> get onMarkercomplete => getStream(this, #onMarkercomplete,
      "markercomplete", (JsObject o) => new Marker.created(o));
  Stream<OverlayCompleteEvent> get onOverlaycomplete => getStream(
      this,
      #onOverlaycomplete,
      "overlaycomplete",
      (JsObject o) => new OverlayCompleteEvent.created(o));
  Stream<Polygon> get onPolygoncomplete => getStream(this, #onPolygoncomplete,
      "polygoncomplete", (JsObject o) => new Polygon.created(o));
  Stream<Polyline> get onPolylinecomplete => getStream(
      this,
      #onPolylinecomplete,
      "polylinecomplete",
      (JsObject o) => new Polyline.created(o));
  Stream<Rectangle> get onRectanglecomplete => getStream(
      this,
      #onRectanglecomplete,
      "rectanglecomplete",
      (JsObject o) => new Rectangle.created(o));
}

@GeneratedFrom(_DrawingManagerOptions)
@anonymous
class DrawingManagerOptions extends JsInterface {
  DrawingManagerOptions.created(JsObject o) : super.created(o);
  DrawingManagerOptions() : this.created(new JsObject(context['Object']));

  void set circleOptions(CircleOptions _circleOptions) {
    asJsObject(this)['circleOptions'] = __codec2.encode(_circleOptions);
  }

  CircleOptions get circleOptions =>
      __codec2.decode(asJsObject(this)['circleOptions']);
  void set drawingControl(bool _drawingControl) {
    asJsObject(this)['drawingControl'] = _drawingControl;
  }

  bool get drawingControl => asJsObject(this)['drawingControl'];
  void set drawingControlOptions(DrawingControlOptions _drawingControlOptions) {
    asJsObject(this)['drawingControlOptions'] =
        __codec11.encode(_drawingControlOptions);
  }

  DrawingControlOptions get drawingControlOptions =>
      __codec11.decode(asJsObject(this)['drawingControlOptions']);
  void set drawingMode(OverlayType _drawingMode) {
    asJsObject(this)['drawingMode'] = __codec10.encode(_drawingMode);
  }

  OverlayType get drawingMode =>
      __codec10.decode(asJsObject(this)['drawingMode']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec1.encode(_map);
  }

  GMap get map => __codec1.decode(asJsObject(this)['map']);
  void set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec3.encode(_markerOptions);
  }

  MarkerOptions get markerOptions =>
      __codec3.decode(asJsObject(this)['markerOptions']);
  void set polygonOptions(PolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec4.encode(_polygonOptions);
  }

  PolygonOptions get polygonOptions =>
      __codec4.decode(asJsObject(this)['polygonOptions']);
  void set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec5.encode(_polylineOptions);
  }

  PolylineOptions get polylineOptions =>
      __codec5.decode(asJsObject(this)['polylineOptions']);
  void set rectangleOptions(RectangleOptions _rectangleOptions) {
    asJsObject(this)['rectangleOptions'] = __codec6.encode(_rectangleOptions);
  }

  RectangleOptions get rectangleOptions =>
      __codec6.decode(asJsObject(this)['rectangleOptions']);
}

@GeneratedFrom(_DrawingControlOptions)
@anonymous
class DrawingControlOptions extends JsInterface {
  DrawingControlOptions.created(JsObject o) : super.created(o);
  DrawingControlOptions() : this.created(new JsObject(context['Object']));

  void set drawingModes(List<OverlayType> _drawingModes) {
    asJsObject(this)['drawingModes'] = __codec12.encode(_drawingModes);
  }

  List<OverlayType> get drawingModes =>
      __codec12.decode(asJsObject(this)['drawingModes']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec8.encode(_position);
  }

  ControlPosition get position => __codec8.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_OverlayCompleteEvent)
@anonymous
class OverlayCompleteEvent extends JsInterface {
  OverlayCompleteEvent.created(JsObject o) : super.created(o);
  OverlayCompleteEvent() : this.created(new JsObject(context['Object']));

  void set _overlay(dynamic __overlay) {
    asJsObject(this)['overlay'] = __codec0.encode(__overlay);
  }

  dynamic get _overlay => __codec0.decode(asJsObject(this)['overlay']);
  dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay =>
      (new ChainedCodec()
            ..add(new JsInterfaceCodec<Marker>(
                (o) => new Marker.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Marker'] as JsFunction)))
            ..add(new JsInterfaceCodec<Polygon>(
                (o) => new Polygon.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Polygon'] as JsFunction)))
            ..add(new JsInterfaceCodec<Polyline>(
                (o) => new Polyline.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Polyline'] as JsFunction)))
            ..add(new JsInterfaceCodec<Rectangle>(
                (o) => new Rectangle.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Rectangle'] as JsFunction)))
            ..add(new JsInterfaceCodec<Circle>(
                (o) => new Circle.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Circle'] as JsFunction))))
          .decode(_overlay);
  void set overlay(
      dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay) {
    _overlay = (new ChainedCodec()
          ..add(new JsInterfaceCodec<Marker>(
              (o) => new Marker.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Marker'] as JsFunction)))
          ..add(new JsInterfaceCodec<Polygon>(
              (o) => new Polygon.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Polygon'] as JsFunction)))
          ..add(new JsInterfaceCodec<Polyline>(
              (o) => new Polyline.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Polyline'] as JsFunction)))
          ..add(new JsInterfaceCodec<Rectangle>(
              (o) => new Rectangle.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Rectangle'] as JsFunction)))
          ..add(new JsInterfaceCodec<Circle>(
              (o) => new Circle.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Circle'] as JsFunction))))
        .encode(overlay);
  }

  void set type(OverlayType _type) {
    asJsObject(this)['type'] = __codec10.encode(_type);
  }

  OverlayType get type => __codec10.decode(asJsObject(this)['type']);
}

class OverlayType extends JsEnum {
  static final values = <OverlayType>[
    CIRCLE,
    MARKER,
    POLYGON,
    POLYLINE,
    RECTANGLE
  ];
  static final CIRCLE = new OverlayType._(
      'CIRCLE', context['google']['maps']['drawing']['OverlayType']['CIRCLE']);
  static final MARKER = new OverlayType._(
      'MARKER', context['google']['maps']['drawing']['OverlayType']['MARKER']);
  static final POLYGON = new OverlayType._('POLYGON',
      context['google']['maps']['drawing']['OverlayType']['POLYGON']);
  static final POLYLINE = new OverlayType._('POLYLINE',
      context['google']['maps']['drawing']['OverlayType']['POLYLINE']);
  static final RECTANGLE = new OverlayType._('RECTANGLE',
      context['google']['maps']['drawing']['OverlayType']['RECTANGLE']);

  final String _name;
  OverlayType._(this._name, o) : super.created(o);

  String toString() => 'OverlayType.$_name';

  // dumb code to remove analyzer hint for unused _OverlayType
  _OverlayType _dumbMethod1() => _dumbMethod2();
  _OverlayType _dumbMethod2() => _dumbMethod1();
}
