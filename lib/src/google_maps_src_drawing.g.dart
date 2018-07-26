// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.drawing;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_DrawingControlOptions)
@anonymous
class DrawingControlOptions extends JsInterface {
  DrawingControlOptions() : this.created(JsObject(context['Object']));
  DrawingControlOptions.created(JsObject o) : super.created(o);

  set drawingModes(List<OverlayType> _drawingModes) {
    asJsObject(this)['drawingModes'] = __codec1.encode(_drawingModes);
  }

  List<OverlayType> get drawingModes =>
      __codec1.decode(asJsObject(this)['drawingModes']);
  set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec2.encode(_position);
  }

  ControlPosition get position => __codec2.decode(asJsObject(this)['position']);
}

@GeneratedFrom(_DrawingManager)
@JsName('google.maps.drawing.DrawingManager')
class DrawingManager extends MVCObject {
  DrawingManager([DrawingManagerOptions options])
      : this.created(JsObject(
            context['google']['maps']['drawing']['DrawingManager'],
            [__codec3.encode(options)]));
  DrawingManager.created(JsObject o) : super.created(o);

  OverlayType get drawingMode => _getDrawingMode();
  OverlayType _getDrawingMode() =>
      __codec0.decode(asJsObject(this).callMethod('getDrawingMode'));
  GMap get map => _getMap();
  GMap _getMap() => __codec4.decode(asJsObject(this).callMethod('getMap'));
  void set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(OverlayType drawingMode) {
    asJsObject(this)
        .callMethod('setDrawingMode', [__codec0.encode(drawingMode)]);
  }

  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec4.encode(map)]);
  }

  void set options(DrawingManagerOptions options) => _setOptions(options);
  void _setOptions(DrawingManagerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec3.encode(options)]);
  }

  Stream<Circle> get onCirclecomplete => getStream(this, #onCirclecomplete,
      "circlecomplete", (JsObject o) => Circle.created(o));
  Stream<Marker> get onMarkercomplete => getStream(this, #onMarkercomplete,
      "markercomplete", (JsObject o) => Marker.created(o));
  Stream<OverlayCompleteEvent> get onOverlaycomplete => getStream(
      this,
      #onOverlaycomplete,
      "overlaycomplete",
      (JsObject o) => OverlayCompleteEvent.created(o));
  Stream<Polygon> get onPolygoncomplete => getStream(this, #onPolygoncomplete,
      "polygoncomplete", (JsObject o) => Polygon.created(o));
  Stream<Polyline> get onPolylinecomplete => getStream(
      this,
      #onPolylinecomplete,
      "polylinecomplete",
      (JsObject o) => Polyline.created(o));
  Stream<Rectangle> get onRectanglecomplete => getStream(
      this,
      #onRectanglecomplete,
      "rectanglecomplete",
      (JsObject o) => Rectangle.created(o));
}

@GeneratedFrom(_DrawingManagerOptions)
@anonymous
class DrawingManagerOptions extends JsInterface {
  DrawingManagerOptions() : this.created(JsObject(context['Object']));
  DrawingManagerOptions.created(JsObject o) : super.created(o);

  set circleOptions(CircleOptions _circleOptions) {
    asJsObject(this)['circleOptions'] = __codec5.encode(_circleOptions);
  }

  CircleOptions get circleOptions =>
      __codec5.decode(asJsObject(this)['circleOptions']);
  set drawingControl(bool _drawingControl) {
    asJsObject(this)['drawingControl'] = _drawingControl;
  }

  bool get drawingControl => asJsObject(this)['drawingControl'];
  set drawingControlOptions(DrawingControlOptions _drawingControlOptions) {
    asJsObject(this)['drawingControlOptions'] =
        __codec6.encode(_drawingControlOptions);
  }

  DrawingControlOptions get drawingControlOptions =>
      __codec6.decode(asJsObject(this)['drawingControlOptions']);
  set drawingMode(OverlayType _drawingMode) {
    asJsObject(this)['drawingMode'] = __codec0.encode(_drawingMode);
  }

  OverlayType get drawingMode =>
      __codec0.decode(asJsObject(this)['drawingMode']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec4.encode(_map);
  }

  GMap get map => __codec4.decode(asJsObject(this)['map']);
  set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec7.encode(_markerOptions);
  }

  MarkerOptions get markerOptions =>
      __codec7.decode(asJsObject(this)['markerOptions']);
  set polygonOptions(PolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec8.encode(_polygonOptions);
  }

  PolygonOptions get polygonOptions =>
      __codec8.decode(asJsObject(this)['polygonOptions']);
  set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec9.encode(_polylineOptions);
  }

  PolylineOptions get polylineOptions =>
      __codec9.decode(asJsObject(this)['polylineOptions']);
  set rectangleOptions(RectangleOptions _rectangleOptions) {
    asJsObject(this)['rectangleOptions'] = __codec10.encode(_rectangleOptions);
  }

  RectangleOptions get rectangleOptions =>
      __codec10.decode(asJsObject(this)['rectangleOptions']);
}

@GeneratedFrom(_OverlayCompleteEvent)
@anonymous
class OverlayCompleteEvent extends JsInterface {
  OverlayCompleteEvent() : this.created(JsObject(context['Object']));
  OverlayCompleteEvent.created(JsObject o) : super.created(o);

  set _overlay(dynamic __overlay) {
    asJsObject(this)['overlay'] = __codec11.encode(__overlay);
  }

  dynamic get _overlay => __codec11.decode(asJsObject(this)['overlay']);
  dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ get overlay =>
      (ChainedCodec()
            ..add(JsInterfaceCodec<Marker>(
                (o) => Marker.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Marker'] as JsFunction)))
            ..add(JsInterfaceCodec<Polygon>(
                (o) => Polygon.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Polygon'] as JsFunction)))
            ..add(JsInterfaceCodec<Polyline>(
                (o) => Polyline.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Polyline'] as JsFunction)))
            ..add(JsInterfaceCodec<Rectangle>(
                (o) => Rectangle.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Rectangle'] as JsFunction)))
            ..add(JsInterfaceCodec<Circle>(
                (o) => Circle.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['Circle'] as JsFunction))))
          .decode(_overlay);
  void set overlay(
      dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay) {
    _overlay = (ChainedCodec()
          ..add(JsInterfaceCodec<Marker>(
              (o) => Marker.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Marker'] as JsFunction)))
          ..add(JsInterfaceCodec<Polygon>(
              (o) => Polygon.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Polygon'] as JsFunction)))
          ..add(JsInterfaceCodec<Polyline>(
              (o) => Polyline.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Polyline'] as JsFunction)))
          ..add(JsInterfaceCodec<Rectangle>(
              (o) => Rectangle.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Rectangle'] as JsFunction)))
          ..add(JsInterfaceCodec<Circle>(
              (o) => Circle.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['Circle'] as JsFunction))))
        .encode(overlay);
  }

  set type(OverlayType _type) {
    asJsObject(this)['type'] = __codec0.encode(_type);
  }

  OverlayType get type => __codec0.decode(asJsObject(this)['type']);
}

class OverlayType extends JsEnum {
  static final values = <OverlayType>[
    CIRCLE,
    MARKER,
    POLYGON,
    POLYLINE,
    RECTANGLE
  ];
  static final CIRCLE = OverlayType._(
      'CIRCLE', context['google']['maps']['drawing']['OverlayType']['CIRCLE']);
  static final MARKER = OverlayType._(
      'MARKER', context['google']['maps']['drawing']['OverlayType']['MARKER']);
  static final POLYGON = OverlayType._('POLYGON',
      context['google']['maps']['drawing']['OverlayType']['POLYGON']);
  static final POLYLINE = OverlayType._('POLYLINE',
      context['google']['maps']['drawing']['OverlayType']['POLYLINE']);
  static final RECTANGLE = OverlayType._('RECTANGLE',
      context['google']['maps']['drawing']['OverlayType']['RECTANGLE']);
  final String _name;
  OverlayType._(this._name, o) : super.created(o);

  @override
  String toString() => 'OverlayType.$_name';

  // dumb code to remove analyzer hint for unused _OverlayType
  _OverlayType _dumbMethod1() => _dumbMethod2();
  _OverlayType _dumbMethod2() => _dumbMethod1();
}

/// codec for google_maps.src.drawing.OverlayType
final __codec0 = BiMapCodec<OverlayType, dynamic>(
    Map<OverlayType, dynamic>.fromIterable(OverlayType.values, value: asJs));

/// codec for dart.core.List<OverlayType>
final __codec1 = JsListCodec<OverlayType>(__codec0);

/// codec for google_maps.src.ControlPosition
final __codec2 = BiMapCodec<ControlPosition, dynamic>(
    Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));

/// codec for google_maps.src.drawing.DrawingManagerOptions
final __codec3 = JsInterfaceCodec<DrawingManagerOptions>(
    (o) => DrawingManagerOptions.created(o));

/// codec for google_maps.src.GMap
final __codec4 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.CircleOptions
final __codec5 =
    JsInterfaceCodec<CircleOptions>((o) => CircleOptions.created(o));

/// codec for google_maps.src.drawing.DrawingControlOptions
final __codec6 = JsInterfaceCodec<DrawingControlOptions>(
    (o) => DrawingControlOptions.created(o));

/// codec for google_maps.src.MarkerOptions
final __codec7 =
    JsInterfaceCodec<MarkerOptions>((o) => MarkerOptions.created(o));

/// codec for google_maps.src.PolygonOptions
final __codec8 =
    JsInterfaceCodec<PolygonOptions>((o) => PolygonOptions.created(o));

/// codec for google_maps.src.PolylineOptions
final __codec9 =
    JsInterfaceCodec<PolylineOptions>((o) => PolylineOptions.created(o));

/// codec for google_maps.src.RectangleOptions
final __codec10 =
    JsInterfaceCodec<RectangleOptions>((o) => RectangleOptions.created(o));

/// codec for dart.core.dynamic
final __codec11 = DynamicCodec();
