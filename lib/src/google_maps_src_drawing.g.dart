// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:05.107Z

part of google_maps.src.drawing;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DrawingManager
// **************************************************************************

@JsName('google.maps.drawing.DrawingManager')
class DrawingManager extends MVCObject implements _DrawingManager {
  DrawingManager.created(JsObject o) : super.created(o);
  DrawingManager([DrawingManagerOptions options]) : this.created(new JsObject(
          context['google']['maps']['drawing']['DrawingManager'],
          [__codec475.encode(options)]));

  OverlayType get drawingMode => _getDrawingMode();
  OverlayType _getDrawingMode() =>
      __codec476.decode(asJsObject(this).callMethod('getDrawingMode'));
  GMap get map => _getMap();
  GMap _getMap() => __codec477.decode(asJsObject(this).callMethod('getMap'));
  void set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(OverlayType drawingMode) {
    asJsObject(this).callMethod(
        'setDrawingMode', [__codec476.encode(drawingMode)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec477.encode(map)]);
  }
  void set options(DrawingManagerOptions options) => _setOptions(options);
  void _setOptions(DrawingManagerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec475.encode(options)]);
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
/// codec for google_maps.src.drawing.DrawingManagerOptions
final __codec475 = new JsInterfaceCodec<DrawingManagerOptions>(
    (o) => new DrawingManagerOptions.created(o));

/// codec for google_maps.src.drawing.OverlayType
final __codec476 = new BiMapCodec<OverlayType, dynamic>(
    new Map<OverlayType, dynamic>.fromIterable(OverlayType.values,
        value: asJs));

/// codec for google_maps.src.GMap
final __codec477 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

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
    asJsObject(this)['circleOptions'] = __codec478.encode(_circleOptions);
  }
  CircleOptions get circleOptions =>
      __codec478.decode(asJsObject(this)['circleOptions']);
  void set drawingControl(bool _drawingControl) {
    asJsObject(this)['drawingControl'] = _drawingControl;
  }
  bool get drawingControl => asJsObject(this)['drawingControl'];
  void set drawingControlOptions(DrawingControlOptions _drawingControlOptions) {
    asJsObject(this)['drawingControlOptions'] =
        __codec479.encode(_drawingControlOptions);
  }
  DrawingControlOptions get drawingControlOptions =>
      __codec479.decode(asJsObject(this)['drawingControlOptions']);
  void set drawingMode(OverlayType _drawingMode) {
    asJsObject(this)['drawingMode'] = __codec476.encode(_drawingMode);
  }
  OverlayType get drawingMode =>
      __codec476.decode(asJsObject(this)['drawingMode']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec477.encode(_map);
  }
  GMap get map => __codec477.decode(asJsObject(this)['map']);
  void set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec480.encode(_markerOptions);
  }
  MarkerOptions get markerOptions =>
      __codec480.decode(asJsObject(this)['markerOptions']);
  void set polygonOptions(PolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec481.encode(_polygonOptions);
  }
  PolygonOptions get polygonOptions =>
      __codec481.decode(asJsObject(this)['polygonOptions']);
  void set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec482.encode(_polylineOptions);
  }
  PolylineOptions get polylineOptions =>
      __codec482.decode(asJsObject(this)['polylineOptions']);
  void set rectangleOptions(RectangleOptions _rectangleOptions) {
    asJsObject(this)['rectangleOptions'] = __codec483.encode(_rectangleOptions);
  }
  RectangleOptions get rectangleOptions =>
      __codec483.decode(asJsObject(this)['rectangleOptions']);
}
/// codec for google_maps.src.CircleOptions
final __codec478 =
    new JsInterfaceCodec<CircleOptions>((o) => new CircleOptions.created(o));

/// codec for google_maps.src.drawing.DrawingControlOptions
final __codec479 = new JsInterfaceCodec<DrawingControlOptions>(
    (o) => new DrawingControlOptions.created(o));

/// codec for google_maps.src.MarkerOptions
final __codec480 =
    new JsInterfaceCodec<MarkerOptions>((o) => new MarkerOptions.created(o));

/// codec for google_maps.src.PolygonOptions
final __codec481 =
    new JsInterfaceCodec<PolygonOptions>((o) => new PolygonOptions.created(o));

/// codec for google_maps.src.PolylineOptions
final __codec482 = new JsInterfaceCodec<PolylineOptions>(
    (o) => new PolylineOptions.created(o));

/// codec for google_maps.src.RectangleOptions
final __codec483 = new JsInterfaceCodec<RectangleOptions>(
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
    asJsObject(this)['drawingModes'] = __codec484.encode(_drawingModes);
  }
  List<OverlayType> get drawingModes =>
      __codec484.decode(asJsObject(this)['drawingModes']);
  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec485.encode(_position);
  }
  ControlPosition get position =>
      __codec485.decode(asJsObject(this)['position']);
}
/// codec for dart.core.List<OverlayType>
final __codec484 = new JsListCodec<OverlayType>(__codec476);

/// codec for google_maps.src.ControlPosition
final __codec485 = new BiMapCodec<ControlPosition, dynamic>(
    new Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));

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
        (o) => o != null && o.instanceof(context['google']['maps']['Marker'])))
    ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Polygon'])))
    ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o), (o) =>
        o != null && o.instanceof(context['google']['maps']['Polyline'])))
    ..add(new JsInterfaceCodec<Rectangle>((o) => new Rectangle.created(o),
        (o) =>
            o != null && o.instanceof(context['google']['maps']['Rectangle'])))
    ..add(new JsInterfaceCodec<Circle>((o) => new Circle.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['Circle']))))
      .decode(_overlay);
  void set overlay(
      dynamic /*Marker|Polygon|Polyline|Rectangle|Circle*/ overlay) {
    _overlay = (new ChainedCodec()
      ..add(new JsInterfaceCodec<Marker>((o) => new Marker.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['Marker'])))
      ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['Polygon'])))
      ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o),
          (o) =>
              o != null && o.instanceof(context['google']['maps']['Polyline'])))
      ..add(new JsInterfaceCodec<Rectangle>((o) => new Rectangle.created(o),
          (o) => o != null &&
              o.instanceof(context['google']['maps']['Rectangle'])))
      ..add(new JsInterfaceCodec<Circle>((o) => new Circle.created(o), (o) =>
              o != null && o.instanceof(context['google']['maps']['Circle']))))
        .encode(overlay);
  }
  void set type(OverlayType _type) {
    asJsObject(this)['type'] = __codec476.encode(_type);
  }
  OverlayType get type => __codec476.decode(asJsObject(this)['type']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _OverlayType
// **************************************************************************

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
