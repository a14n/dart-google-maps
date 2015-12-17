// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:04.320Z

part of google_maps.src;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Controls
// **************************************************************************

class Controls extends JsInterface
    with MapMixin<ControlPosition, MVCArray<Node>> implements _Controls {
  Controls.created(JsObject o) : super.created(o);
  Controls() : super.created(new JsArray());

  MVCArray<Node> operator [](ControlPosition controlPosition) {
    var value = asJsObject(this)[_toJsControlPosition(controlPosition)];
    if (value == null) return null;
    return new MVCArray<Node>.created(value);
  }
  void operator []=(ControlPosition controlPosition, MVCArray<Node> nodes) {
    asJsObject(this)[_toJsControlPosition(controlPosition)] = asJsObject(nodes);
  }
  Iterable<ControlPosition> get keys {
    var result = <ControlPosition>[];
    for (final control in ControlPosition.values) {
      if (this[control] != null) result.add(control);
    }
    return result;
  }
  MVCArray<Node> remove(Object key) {
    var result = this[key];
    this[key] = null;
    return result;
  }
  void clear() => (asJsObject(this) as JsArray).clear();

  _toJsControlPosition(ControlPosition controlPosition) => ((e) {
    if (e == null) return null;
    final path = context['google']['maps']['ControlPosition'];
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
  })(controlPosition);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GMap
// **************************************************************************

@JsName('google.maps.Map')
class GMap extends MVCObject implements _GMap {
  GMap.created(JsObject o) : super.created(o);
  GMap(Node mapDiv, [MapOptions opts]) : this.created(new JsObject(
          context['google']['maps']['Map'], [mapDiv, __codec256.encode(opts)]));

  void fitBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('fitBounds', [__codec260.encode(bounds)]);
  }
  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec260.decode(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec261.decode(asJsObject(this).callMethod('getCenter'));
  Node get div => _getDiv();
  Node _getDiv() => asJsObject(this).callMethod('getDiv');
  num get heading => _getHeading();
  num _getHeading() => asJsObject(this).callMethod('getHeading');
  dynamic /*MapTypeId|String*/ get mapTypeId => (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).decode(_getMapTypeId());
  _getMapTypeId() => asJsObject(this).callMethod('getMapTypeId');
  Projection get projection => _getProjection();
  Projection _getProjection() =>
      __codec262.decode(asJsObject(this).callMethod('getProjection'));
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView() =>
      __codec263.decode(asJsObject(this).callMethod('getStreetView'));
  num get tilt => _getTilt();
  num _getTilt() => asJsObject(this).callMethod('getTilt');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void panBy(num x, num y) {
    asJsObject(this).callMethod('panBy', [x, y]);
  }
  void panTo(LatLng latLng) {
    asJsObject(this).callMethod('panTo', [__codec261.encode(latLng)]);
  }
  void panToBounds(LatLngBounds latLngBounds) {
    asJsObject(this).callMethod(
        'panToBounds', [__codec260.encode(latLngBounds)]);
  }
  void set center(LatLng latlng) => _setCenter(latlng);
  void _setCenter(LatLng latlng) {
    asJsObject(this).callMethod('setCenter', [__codec261.encode(latlng)]);
  }
  void set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading) {
    asJsObject(this).callMethod('setHeading', [heading]);
  }
  void set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) => _setMapTypeId(
      (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).encode(mapTypeId));
  void _setMapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    asJsObject(this).callMethod('setMapTypeId', [mapTypeId]);
  }
  void set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec256.encode(options)]);
  }
  void set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama) {
    asJsObject(this).callMethod('setStreetView', [__codec263.encode(panorama)]);
  }
  void set tilt(num tilt) => _setTilt(tilt);
  void _setTilt(num tilt) {
    asJsObject(this).callMethod('setTilt', [tilt]);
  }
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom) {
    asJsObject(this).callMethod('setZoom', [zoom]);
  }

  void set controls(Controls _controls) {
    asJsObject(this)['controls'] = __codec257.encode(_controls);
  }
  Controls get controls => __codec257.decode(asJsObject(this)['controls']);
  void set data(Data _data) {
    asJsObject(this)['data'] = __codec258.encode(_data);
  }
  Data get data => __codec258.decode(asJsObject(this)['data']);
  void set mapTypes(MapTypeRegistry _mapTypes) {
    asJsObject(this)['mapTypes'] = __codec259.encode(_mapTypes);
  }
  MapTypeRegistry get mapTypes =>
      __codec259.decode(asJsObject(this)['mapTypes']);
  void set _overlayMapTypes(dynamic __overlayMapTypes) {
    asJsObject(this)['overlayMapTypes'] = __overlayMapTypes;
  }
  dynamic get _overlayMapTypes => asJsObject(this)['overlayMapTypes'];
  MVCArray<MapType> get overlayMapTypes =>
      (new JsInterfaceCodec<MVCArray<MapType>>(
          (o) => new MVCArray<MapType>.created(o, new JsInterfaceCodec<MapType>(
              (o) => new MapType.created(o))))).decode(_overlayMapTypes);
  void set overlayMapTypes(MVCArray<MapType> overlayMapTypes) {
    _overlayMapTypes = (new JsInterfaceCodec<MVCArray<MapType>>(
            (o) => new MVCArray<MapType>.created(o,
                new JsInterfaceCodec<MapType>((o) => new MapType.created(o)))))
        .encode(overlayMapTypes);
  }
  Stream get onBoundsChanged =>
      getStream(this, #onBoundsChanged, "bounds_changed");
  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, "center_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onDrag => getStream(this, #onDrag, "drag");
  Stream get onDragend => getStream(this, #onDragend, "dragend");
  Stream get onDragstart => getStream(this, #onDragstart, "dragstart");
  Stream get onHeadingChanged =>
      getStream(this, #onHeadingChanged, "heading_changed");
  Stream get onIdle => getStream(this, #onIdle, "idle");
  Stream get onMaptypeidChanged =>
      getStream(this, #onMaptypeidChanged, "maptypeid_changed");
  Stream<MouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream get onProjectionChanged =>
      getStream(this, #onProjectionChanged, "projection_changed");
  Stream get onResize => getStream(this, #onResize, "resize");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
  Stream get onTiltChanged => getStream(this, #onTiltChanged, "tilt_changed");
  Stream get onZoomChanged => getStream(this, #onZoomChanged, "zoom_changed");
}
/// codec for google_maps.src.MapOptions
final __codec256 =
    new JsInterfaceCodec<MapOptions>((o) => new MapOptions.created(o));

/// codec for google_maps.src.Controls
final __codec257 =
    new JsInterfaceCodec<Controls>((o) => new Controls.created(o));

/// codec for google_maps.src.Data
final __codec258 = new JsInterfaceCodec<Data>((o) => new Data.created(o));

/// codec for google_maps.src.MapTypeRegistry
final __codec259 = new JsInterfaceCodec<MapTypeRegistry>(
    (o) => new MapTypeRegistry.created(o));

/// codec for google_maps.src.LatLngBounds
final __codec260 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));

/// codec for google_maps.src.LatLng
final __codec261 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for google_maps.src.Projection
final __codec262 =
    new JsInterfaceCodec<Projection>((o) => new Projection.created(o));

/// codec for google_maps.src.StreetViewPanorama
final __codec263 = new JsInterfaceCodec<StreetViewPanorama>(
    (o) => new StreetViewPanorama.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapOptions
// **************************************************************************

@anonymous
class MapOptions extends JsInterface implements _MapOptions {
  MapOptions.created(JsObject o) : super.created(o);
  MapOptions() : this.created(new JsObject(context['Object']));

  void set backgroundColor(String _backgroundColor) {
    asJsObject(this)['backgroundColor'] = _backgroundColor;
  }
  String get backgroundColor => asJsObject(this)['backgroundColor'];
  void set center(LatLng _center) {
    asJsObject(this)['center'] = __codec261.encode(_center);
  }
  LatLng get center => __codec261.decode(asJsObject(this)['center']);
  void set disableDefaultUI(bool _disableDefaultUI) {
    asJsObject(this)['disableDefaultUI'] = _disableDefaultUI;
  }
  bool get disableDefaultUI => asJsObject(this)['disableDefaultUI'];
  void set disableDoubleClickZoom(bool _disableDoubleClickZoom) {
    asJsObject(this)['disableDoubleClickZoom'] = _disableDoubleClickZoom;
  }
  bool get disableDoubleClickZoom => asJsObject(this)['disableDoubleClickZoom'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set draggableCursor(String _draggableCursor) {
    asJsObject(this)['draggableCursor'] = _draggableCursor;
  }
  String get draggableCursor => asJsObject(this)['draggableCursor'];
  void set draggingCursor(String _draggingCursor) {
    asJsObject(this)['draggingCursor'] = _draggingCursor;
  }
  String get draggingCursor => asJsObject(this)['draggingCursor'];
  void set heading(num _heading) {
    asJsObject(this)['heading'] = _heading;
  }
  num get heading => asJsObject(this)['heading'];
  void set keyboardShortcuts(bool _keyboardShortcuts) {
    asJsObject(this)['keyboardShortcuts'] = _keyboardShortcuts;
  }
  bool get keyboardShortcuts => asJsObject(this)['keyboardShortcuts'];
  void set mapMaker(bool _mapMaker) {
    asJsObject(this)['mapMaker'] = _mapMaker;
  }
  bool get mapMaker => asJsObject(this)['mapMaker'];
  void set mapTypeControl(bool _mapTypeControl) {
    asJsObject(this)['mapTypeControl'] = _mapTypeControl;
  }
  bool get mapTypeControl => asJsObject(this)['mapTypeControl'];
  void set mapTypeControlOptions(MapTypeControlOptions _mapTypeControlOptions) {
    asJsObject(this)['mapTypeControlOptions'] =
        __codec264.encode(_mapTypeControlOptions);
  }
  MapTypeControlOptions get mapTypeControlOptions =>
      __codec264.decode(asJsObject(this)['mapTypeControlOptions']);
  void set _mapTypeId(dynamic __mapTypeId) {
    asJsObject(this)['mapTypeId'] = __mapTypeId;
  }
  dynamic get _mapTypeId => asJsObject(this)['mapTypeId'];
  dynamic /*MapTypeId|String*/ get mapTypeId => (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).decode(_mapTypeId);
  void set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    _mapTypeId = (new ChainedCodec()
      ..add(new BiMapCodec<MapTypeId, dynamic>({
        MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
        MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
        MapTypeId.SATELLITE:
            context['google']['maps']['MapTypeId']['SATELLITE'],
        MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
      }))
      ..add(new IdentityCodec<String>())).encode(mapTypeId);
  }

  void set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }
  num get maxZoom => asJsObject(this)['maxZoom'];
  void set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }
  num get minZoom => asJsObject(this)['minZoom'];
  void set noClear(bool _noClear) {
    asJsObject(this)['noClear'] = _noClear;
  }
  bool get noClear => asJsObject(this)['noClear'];
  void set overviewMapControl(bool _overviewMapControl) {
    asJsObject(this)['overviewMapControl'] = _overviewMapControl;
  }
  bool get overviewMapControl => asJsObject(this)['overviewMapControl'];
  void set overviewMapControlOptions(
      OverviewMapControlOptions _overviewMapControlOptions) {
    asJsObject(this)['overviewMapControlOptions'] =
        __codec265.encode(_overviewMapControlOptions);
  }
  OverviewMapControlOptions get overviewMapControlOptions =>
      __codec265.decode(asJsObject(this)['overviewMapControlOptions']);
  void set panControl(bool _panControl) {
    asJsObject(this)['panControl'] = _panControl;
  }
  bool get panControl => asJsObject(this)['panControl'];
  void set panControlOptions(PanControlOptions _panControlOptions) {
    asJsObject(this)['panControlOptions'] =
        __codec266.encode(_panControlOptions);
  }
  PanControlOptions get panControlOptions =>
      __codec266.decode(asJsObject(this)['panControlOptions']);
  void set rotateControl(bool _rotateControl) {
    asJsObject(this)['rotateControl'] = _rotateControl;
  }
  bool get rotateControl => asJsObject(this)['rotateControl'];
  void set rotateControlOptions(RotateControlOptions _rotateControlOptions) {
    asJsObject(this)['rotateControlOptions'] =
        __codec267.encode(_rotateControlOptions);
  }
  RotateControlOptions get rotateControlOptions =>
      __codec267.decode(asJsObject(this)['rotateControlOptions']);
  void set scaleControl(bool _scaleControl) {
    asJsObject(this)['scaleControl'] = _scaleControl;
  }
  bool get scaleControl => asJsObject(this)['scaleControl'];
  void set scaleControlOptions(ScaleControlOptions _scaleControlOptions) {
    asJsObject(this)['scaleControlOptions'] =
        __codec268.encode(_scaleControlOptions);
  }
  ScaleControlOptions get scaleControlOptions =>
      __codec268.decode(asJsObject(this)['scaleControlOptions']);
  void set scrollwheel(bool _scrollwheel) {
    asJsObject(this)['scrollwheel'] = _scrollwheel;
  }
  bool get scrollwheel => asJsObject(this)['scrollwheel'];
  void set streetView(StreetViewPanorama _streetView) {
    asJsObject(this)['streetView'] = __codec263.encode(_streetView);
  }
  StreetViewPanorama get streetView =>
      __codec263.decode(asJsObject(this)['streetView']);
  void set streetViewControl(bool _streetViewControl) {
    asJsObject(this)['streetViewControl'] = _streetViewControl;
  }
  bool get streetViewControl => asJsObject(this)['streetViewControl'];
  void set streetViewControlOptions(
      StreetViewControlOptions _streetViewControlOptions) {
    asJsObject(this)['streetViewControlOptions'] =
        __codec269.encode(_streetViewControlOptions);
  }
  StreetViewControlOptions get streetViewControlOptions =>
      __codec269.decode(asJsObject(this)['streetViewControlOptions']);
  void set styles(List<MapTypeStyle> _styles) {
    asJsObject(this)['styles'] = __codec271.encode(_styles);
  }
  List<MapTypeStyle> get styles =>
      __codec271.decode(asJsObject(this)['styles']);
  void set tilt(num _tilt) {
    asJsObject(this)['tilt'] = _tilt;
  }
  num get tilt => asJsObject(this)['tilt'];
  void set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }
  num get zoom => asJsObject(this)['zoom'];
  void set zoomControl(bool _zoomControl) {
    asJsObject(this)['zoomControl'] = _zoomControl;
  }
  bool get zoomControl => asJsObject(this)['zoomControl'];
  void set zoomControlOptions(ZoomControlOptions _zoomControlOptions) {
    asJsObject(this)['zoomControlOptions'] =
        __codec272.encode(_zoomControlOptions);
  }
  ZoomControlOptions get zoomControlOptions =>
      __codec272.decode(asJsObject(this)['zoomControlOptions']);
}
/// codec for google_maps.src.MapTypeControlOptions
final __codec264 = new JsInterfaceCodec<MapTypeControlOptions>(
    (o) => new MapTypeControlOptions.created(o));

/// codec for google_maps.src.OverviewMapControlOptions
final __codec265 = new JsInterfaceCodec<OverviewMapControlOptions>(
    (o) => new OverviewMapControlOptions.created(o));

/// codec for google_maps.src.PanControlOptions
final __codec266 = new JsInterfaceCodec<PanControlOptions>(
    (o) => new PanControlOptions.created(o));

/// codec for google_maps.src.RotateControlOptions
final __codec267 = new JsInterfaceCodec<RotateControlOptions>(
    (o) => new RotateControlOptions.created(o));

/// codec for google_maps.src.ScaleControlOptions
final __codec268 = new JsInterfaceCodec<ScaleControlOptions>(
    (o) => new ScaleControlOptions.created(o));

/// codec for google_maps.src.StreetViewControlOptions
final __codec269 = new JsInterfaceCodec<StreetViewControlOptions>(
    (o) => new StreetViewControlOptions.created(o));

/// codec for google_maps.src.MapTypeStyle
final __codec270 =
    new JsInterfaceCodec<MapTypeStyle>((o) => new MapTypeStyle.created(o));

/// codec for dart.core.List<MapTypeStyle>
final __codec271 = new JsListCodec<MapTypeStyle>(__codec270);

/// codec for google_maps.src.ZoomControlOptions
final __codec272 = new JsInterfaceCodec<ZoomControlOptions>(
    (o) => new ZoomControlOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _MapTypeId
// **************************************************************************

class MapTypeId extends JsEnum {
  static final values = <MapTypeId>[HYBRID, ROADMAP, SATELLITE, TERRAIN];
  static final HYBRID = new MapTypeId._(
      'HYBRID', context['google']['maps']['MapTypeId']['HYBRID']);
  static final ROADMAP = new MapTypeId._(
      'ROADMAP', context['google']['maps']['MapTypeId']['ROADMAP']);
  static final SATELLITE = new MapTypeId._(
      'SATELLITE', context['google']['maps']['MapTypeId']['SATELLITE']);
  static final TERRAIN = new MapTypeId._(
      'TERRAIN', context['google']['maps']['MapTypeId']['TERRAIN']);

  final String _name;
  MapTypeId._(this._name, o) : super.created(o);

  String toString() => 'MapTypeId.$_name';

  // dumb code to remove analyzer hint for unused _MapTypeId
  _MapTypeId _dumbMethod1() => _dumbMethod2();
  _MapTypeId _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapTypeControlOptions
// **************************************************************************

@anonymous
class MapTypeControlOptions extends JsInterface
    implements _MapTypeControlOptions {
  MapTypeControlOptions.created(JsObject o) : super.created(o);
  MapTypeControlOptions() : this.created(new JsObject(context['Object']));

  dynamic get _mapTypeIds => asJsObject(this)['mapTypeIds'];
  List<dynamic /*MapTypeId|String*/ > get mapTypeIds =>
      (new JsListCodec<dynamic /*MapTypeId|String*/ >(new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
      MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
      MapTypeId.SATELLITE: context['google']['maps']['MapTypeId']['SATELLITE'],
      MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
    }))
    ..add(new IdentityCodec<String>()))).decode(_mapTypeIds);
  void set _mapTypeIds(dynamic mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = mapTypeIds;
  }
  void set mapTypeIds(List<dynamic /*MapTypeId|String*/ > mapTypeIds) {
    _mapTypeIds = (new JsListCodec<dynamic /*MapTypeId|String*/ >(
        new ChainedCodec()
      ..add(new BiMapCodec<MapTypeId, dynamic>({
        MapTypeId.HYBRID: context['google']['maps']['MapTypeId']['HYBRID'],
        MapTypeId.ROADMAP: context['google']['maps']['MapTypeId']['ROADMAP'],
        MapTypeId.SATELLITE:
            context['google']['maps']['MapTypeId']['SATELLITE'],
        MapTypeId.TERRAIN: context['google']['maps']['MapTypeId']['TERRAIN']
      }))
      ..add(new IdentityCodec<String>()))).encode(mapTypeIds);
  }

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec273.encode(_position);
  }
  ControlPosition get position =>
      __codec273.decode(asJsObject(this)['position']);
  void set style(MapTypeControlStyle _style) {
    asJsObject(this)['style'] = __codec274.encode(_style);
  }
  MapTypeControlStyle get style => __codec274.decode(asJsObject(this)['style']);
}
/// codec for google_maps.src.ControlPosition
final __codec273 = new BiMapCodec<ControlPosition, dynamic>(
    new Map<ControlPosition, dynamic>.fromIterable(ControlPosition.values,
        value: asJs));

/// codec for google_maps.src.MapTypeControlStyle
final __codec274 = new BiMapCodec<MapTypeControlStyle, dynamic>(
    new Map<MapTypeControlStyle, dynamic>.fromIterable(
        MapTypeControlStyle.values, value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _MapTypeControlStyle
// **************************************************************************

class MapTypeControlStyle extends JsEnum {
  static final values = <MapTypeControlStyle>[
    DEFAULT,
    DROPDOWN_MENU,
    HORIZONTAL_BAR
  ];
  static final DEFAULT = new MapTypeControlStyle._(
      'DEFAULT', context['google']['maps']['MapTypeControlStyle']['DEFAULT']);
  static final DROPDOWN_MENU = new MapTypeControlStyle._('DROPDOWN_MENU',
      context['google']['maps']['MapTypeControlStyle']['DROPDOWN_MENU']);
  static final HORIZONTAL_BAR = new MapTypeControlStyle._('HORIZONTAL_BAR',
      context['google']['maps']['MapTypeControlStyle']['HORIZONTAL_BAR']);

  final String _name;
  MapTypeControlStyle._(this._name, o) : super.created(o);

  String toString() => 'MapTypeControlStyle.$_name';

  // dumb code to remove analyzer hint for unused _MapTypeControlStyle
  _MapTypeControlStyle _dumbMethod1() => _dumbMethod2();
  _MapTypeControlStyle _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _OverviewMapControlOptions
// **************************************************************************

@anonymous
class OverviewMapControlOptions extends JsInterface
    implements _OverviewMapControlOptions {
  OverviewMapControlOptions.created(JsObject o) : super.created(o);
  OverviewMapControlOptions() : this.created(new JsObject(context['Object']));

  void set opened(bool _opened) {
    asJsObject(this)['opened'] = _opened;
  }
  bool get opened => asJsObject(this)['opened'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PanControlOptions
// **************************************************************************

@anonymous
class PanControlOptions extends JsInterface implements _PanControlOptions {
  PanControlOptions.created(JsObject o) : super.created(o);
  PanControlOptions() : this.created(new JsObject(context['Object']));

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec273.encode(_position);
  }
  ControlPosition get position =>
      __codec273.decode(asJsObject(this)['position']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _RotateControlOptions
// **************************************************************************

@anonymous
class RotateControlOptions extends JsInterface
    implements _RotateControlOptions {
  RotateControlOptions.created(JsObject o) : super.created(o);
  RotateControlOptions() : this.created(new JsObject(context['Object']));

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec273.encode(_position);
  }
  ControlPosition get position =>
      __codec273.decode(asJsObject(this)['position']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ScaleControlOptions
// **************************************************************************

@anonymous
class ScaleControlOptions extends JsInterface implements _ScaleControlOptions {
  ScaleControlOptions.created(JsObject o) : super.created(o);
  ScaleControlOptions() : this.created(new JsObject(context['Object']));

  void set style(ScaleControlStyle _style) {
    asJsObject(this)['style'] = __codec275.encode(_style);
  }
  ScaleControlStyle get style => __codec275.decode(asJsObject(this)['style']);
}
/// codec for google_maps.src.ScaleControlStyle
final __codec275 = new BiMapCodec<ScaleControlStyle, dynamic>(
    new Map<ScaleControlStyle, dynamic>.fromIterable(ScaleControlStyle.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _ScaleControlStyle
// **************************************************************************

class ScaleControlStyle extends JsEnum {
  static final values = <ScaleControlStyle>[DEFAULT];
  static final DEFAULT = new ScaleControlStyle._(
      'DEFAULT', context['google']['maps']['ScaleControlStyle']['DEFAULT']);

  final String _name;
  ScaleControlStyle._(this._name, o) : super.created(o);

  String toString() => 'ScaleControlStyle.$_name';

  // dumb code to remove analyzer hint for unused _ScaleControlStyle
  _ScaleControlStyle _dumbMethod1() => _dumbMethod2();
  _ScaleControlStyle _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewControlOptions
// **************************************************************************

@anonymous
class StreetViewControlOptions extends JsInterface
    implements _StreetViewControlOptions {
  StreetViewControlOptions.created(JsObject o) : super.created(o);
  StreetViewControlOptions() : this.created(new JsObject(context['Object']));

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec273.encode(_position);
  }
  ControlPosition get position =>
      __codec273.decode(asJsObject(this)['position']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ZoomControlOptions
// **************************************************************************

@anonymous
class ZoomControlOptions extends JsInterface implements _ZoomControlOptions {
  ZoomControlOptions.created(JsObject o) : super.created(o);
  ZoomControlOptions() : this.created(new JsObject(context['Object']));

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec273.encode(_position);
  }
  ControlPosition get position =>
      __codec273.decode(asJsObject(this)['position']);
  void set style(ZoomControlStyle _style) {
    asJsObject(this)['style'] = __codec276.encode(_style);
  }
  ZoomControlStyle get style => __codec276.decode(asJsObject(this)['style']);
}
/// codec for google_maps.src.ZoomControlStyle
final __codec276 = new BiMapCodec<ZoomControlStyle, dynamic>(
    new Map<ZoomControlStyle, dynamic>.fromIterable(ZoomControlStyle.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _ZoomControlStyle
// **************************************************************************

class ZoomControlStyle extends JsEnum {
  static final values = <ZoomControlStyle>[DEFAULT, LARGE, SMALL];
  static final DEFAULT = new ZoomControlStyle._(
      'DEFAULT', context['google']['maps']['ZoomControlStyle']['DEFAULT']);
  static final LARGE = new ZoomControlStyle._(
      'LARGE', context['google']['maps']['ZoomControlStyle']['LARGE']);
  static final SMALL = new ZoomControlStyle._(
      'SMALL', context['google']['maps']['ZoomControlStyle']['SMALL']);

  final String _name;
  ZoomControlStyle._(this._name, o) : super.created(o);

  String toString() => 'ZoomControlStyle.$_name';

  // dumb code to remove analyzer hint for unused _ZoomControlStyle
  _ZoomControlStyle _dumbMethod1() => _dumbMethod2();
  _ZoomControlStyle _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _ControlPosition
// **************************************************************************

class ControlPosition extends JsEnum {
  static final values = <ControlPosition>[
    BOTTOM_CENTER,
    BOTTOM_LEFT,
    BOTTOM_RIGHT,
    LEFT_BOTTOM,
    LEFT_CENTER,
    LEFT_TOP,
    RIGHT_BOTTOM,
    RIGHT_CENTER,
    RIGHT_TOP,
    TOP_CENTER,
    TOP_LEFT,
    TOP_RIGHT
  ];
  static final BOTTOM_CENTER = new ControlPosition._('BOTTOM_CENTER',
      context['google']['maps']['ControlPosition']['BOTTOM_CENTER']);
  static final BOTTOM_LEFT = new ControlPosition._('BOTTOM_LEFT',
      context['google']['maps']['ControlPosition']['BOTTOM_LEFT']);
  static final BOTTOM_RIGHT = new ControlPosition._('BOTTOM_RIGHT',
      context['google']['maps']['ControlPosition']['BOTTOM_RIGHT']);
  static final LEFT_BOTTOM = new ControlPosition._('LEFT_BOTTOM',
      context['google']['maps']['ControlPosition']['LEFT_BOTTOM']);
  static final LEFT_CENTER = new ControlPosition._('LEFT_CENTER',
      context['google']['maps']['ControlPosition']['LEFT_CENTER']);
  static final LEFT_TOP = new ControlPosition._(
      'LEFT_TOP', context['google']['maps']['ControlPosition']['LEFT_TOP']);
  static final RIGHT_BOTTOM = new ControlPosition._('RIGHT_BOTTOM',
      context['google']['maps']['ControlPosition']['RIGHT_BOTTOM']);
  static final RIGHT_CENTER = new ControlPosition._('RIGHT_CENTER',
      context['google']['maps']['ControlPosition']['RIGHT_CENTER']);
  static final RIGHT_TOP = new ControlPosition._(
      'RIGHT_TOP', context['google']['maps']['ControlPosition']['RIGHT_TOP']);
  static final TOP_CENTER = new ControlPosition._(
      'TOP_CENTER', context['google']['maps']['ControlPosition']['TOP_CENTER']);
  static final TOP_LEFT = new ControlPosition._(
      'TOP_LEFT', context['google']['maps']['ControlPosition']['TOP_LEFT']);
  static final TOP_RIGHT = new ControlPosition._(
      'TOP_RIGHT', context['google']['maps']['ControlPosition']['TOP_RIGHT']);

  final String _name;
  ControlPosition._(this._name, o) : super.created(o);

  String toString() => 'ControlPosition.$_name';

  // dumb code to remove analyzer hint for unused _ControlPosition
  _ControlPosition _dumbMethod1() => _dumbMethod2();
  _ControlPosition _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Data
// **************************************************************************

@JsName('google.maps.Data')
class Data extends JsInterface implements _Data {
  Data.created(JsObject o) : super.created(o);
  Data([DataDataOptions options]) : this.created(new JsObject(
          context['google']['maps']['Data'], [__codec277.encode(options)]));

  DataFeature add(dynamic /*DataFeature|DataFeatureOptions*/ feature) => _add(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataFeature>((o) => new DataFeature.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Feature'])))
    ..add(new JsInterfaceCodec<DataFeatureOptions>(
        (o) => new DataFeatureOptions.created(o)))).encode(feature));
  _add(dynamic /*DataFeature|DataFeatureOptions*/ feature) =>
      asJsObject(this).callMethod('add', [feature]);
  List<DataFeature> addGeoJson(Object geoJson, [DataGeoJsonOptions options]) =>
      __codec280.decode(asJsObject(this).callMethod(
          'addGeoJson', [geoJson, __codec278.encode(options)]));
  bool contains(DataFeature feature) =>
      asJsObject(this).callMethod('contains', [__codec279.encode(feature)]);
  void forEach(callback(DataFeature p1)) {
    asJsObject(this).callMethod('forEach', [__codec281.encode(callback)]);
  }
  ControlPosition get controlPosition => _getControlPosition();
  ControlPosition _getControlPosition() =>
      __codec273.decode(asJsObject(this).callMethod('getControlPosition'));
  List<String> get controls => _getControls();
  List<String> _getControls() =>
      __codec282.decode(asJsObject(this).callMethod('getControls'));
  String get drawingMode => _getDrawingMode();
  String _getDrawingMode() => asJsObject(this).callMethod('getDrawingMode');
  DataFeature getFeatureById(dynamic /*num|String*/ id) =>
      __codec279.decode(asJsObject(this).callMethod('getFeatureById', [id]));
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style =>
      (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).decode(_getStyle());
  _getStyle() => asJsObject(this).callMethod('getStyle');
  void loadGeoJson(String url,
      [DataGeoJsonOptions options, callback(List<DataFeature> p1)]) {
    asJsObject(this).callMethod('loadGeoJson', [
      url,
      __codec278.encode(options),
      __codec284.encode(callback)
    ]);
  }
  void overrideStyle(DataFeature feature, DataStyleOptions style) {
    asJsObject(this).callMethod('overrideStyle', [
      __codec279.encode(feature),
      __codec285.encode(style)
    ]);
  }
  void remove(DataFeature feature) {
    asJsObject(this).callMethod('remove', [__codec279.encode(feature)]);
  }
  void revertStyle([DataFeature feature]) {
    asJsObject(this).callMethod('revertStyle', [__codec279.encode(feature)]);
  }
  void set controlPosition(ControlPosition controlPosition) =>
      _setControlPosition(controlPosition);
  void _setControlPosition(ControlPosition controlPosition) {
    asJsObject(this).callMethod(
        'setControlPosition', [__codec273.encode(controlPosition)]);
  }
  void set controls(List<String> controls) => _setControls(controls);
  void _setControls(List<String> controls) {
    asJsObject(this).callMethod('setControls', [__codec282.encode(controls)]);
  }
  void set drawingMode(String drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(String drawingMode) {
    asJsObject(this).callMethod('setDrawingMode', [drawingMode]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _setStyle((new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).encode(style));
  void _setStyle(dynamic /*DataStylingFunction|DataStyleOptions*/ style) {
    asJsObject(this).callMethod('setStyle', [style]);
  }
  void toGeoJson(callback(Object p1)) {
    asJsObject(this).callMethod('toGeoJson', [__codec286.encode(callback)]);
  }

  Stream<DataAddFeatureEvent> get onAddfeature => getStream(this, #onAddfeature,
      "addfeature", (JsObject o) => new DataAddFeatureEvent.created(o));
  Stream<DataMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onDblclick => getStream(this, #onDblclick,
      "dblclick", (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseout => getStream(this, #onMouseout,
      "mouseout", (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataMouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup",
      (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataRemoveFeatureEvent> get onRemovefeature => getStream(this,
      #onRemovefeature, "removefeature",
      (JsObject o) => new DataRemoveFeatureEvent.created(o));
  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(this,
      #onRemoveproperty, "removeproperty",
      (JsObject o) => new DataRemovePropertyEvent.created(o));
  Stream<DataMouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new DataMouseEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(this,
      #onSetgeometry, "setgeometry",
      (JsObject o) => new DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(this,
      #onSetproperty, "setproperty",
      (JsObject o) => new DataSetPropertyEvent.created(o));
}
/// codec for google_maps.src.DataDataOptions
final __codec277 = new JsInterfaceCodec<DataDataOptions>(
    (o) => new DataDataOptions.created(o));

/// codec for google_maps.src.DataGeoJsonOptions
final __codec278 = new JsInterfaceCodec<DataGeoJsonOptions>(
    (o) => new DataGeoJsonOptions.created(o));

/// codec for google_maps.src.DataFeature
final __codec279 =
    new JsInterfaceCodec<DataFeature>((o) => new DataFeature.created(o));

/// codec for dart.core.List<DataFeature>
final __codec280 = new JsListCodec<DataFeature>(__codec279);

/// codec for google_maps.src.(DataFeature) → dynamic
final __codec281 = new FunctionCodec /*<(DataFeature) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec279.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec279.encode(p_p1);
  return f.apply([p_p1]);
});

/// codec for dart.core.List<String>
final __codec282 = new JsListCodec<String>(null);

/// codec for google_maps.src.GMap
final __codec283 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for google_maps.src.(List<DataFeature>) → dynamic
final __codec284 = new FunctionCodec /*<(List<DataFeature>) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec280.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec280.encode(p_p1);
  return f.apply([p_p1]);
});

/// codec for google_maps.src.DataStyleOptions
final __codec285 = new JsInterfaceCodec<DataStyleOptions>(
    (o) => new DataStyleOptions.created(o));

/// codec for google_maps.src.(Object) → dynamic
final __codec286 = new FunctionCodec /*<(Object) → dynamic>*/ ((f) => f,
    (JsFunction f) => (p_p1) {
  return f.apply([p_p1]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataDataOptions
// **************************************************************************

@anonymous
class DataDataOptions extends JsInterface implements _DataDataOptions {
  DataDataOptions.created(JsObject o) : super.created(o);
  DataDataOptions() : this.created(new JsObject(context['Object']));

  void set controlPosition(ControlPosition _controlPosition) {
    asJsObject(this)['controlPosition'] = __codec273.encode(_controlPosition);
  }
  ControlPosition get controlPosition =>
      __codec273.decode(asJsObject(this)['controlPosition']);
  void set controls(List<String> _controls) {
    asJsObject(this)['controls'] = __codec282.encode(_controls);
  }
  List<String> get controls => __codec282.decode(asJsObject(this)['controls']);
  void set drawingMode(String _drawingMode) {
    asJsObject(this)['drawingMode'] = _drawingMode;
  }
  String get drawingMode => asJsObject(this)['drawingMode'];
  void set featureFactory(dynamic _featureFactory) {
    asJsObject(this)['featureFactory'] = _featureFactory;
  }
  dynamic get featureFactory => asJsObject(this)['featureFactory'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  dynamic /*DataStylingFunction|DataStyleOptions*/ get style =>
      (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).decode(_style);
  void set style(dynamic /*DataStylingFunction|DataStyleOptions*/ style) =>
      _style = (new ChainedCodec()
    ..add(new FunctionCodec<DataStylingFunction>((o) => ((f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .decode(p_dataFeature);
        final result = f(p_dataFeature);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .encode(result);
      };
    })(o), (o) => ((JsFunction f) {
      if (f == null) return null;
      return (p_dataFeature) {
        p_dataFeature = new JsInterfaceCodec<DataFeature>((o) =>
                ((e) => e == null ? null : new DataFeature.created(e))(o))
            .encode(p_dataFeature);
        final result = f.apply([p_dataFeature]);
        return new JsInterfaceCodec<DataStyleOptions>((o) =>
                ((e) => e == null ? null : new DataStyleOptions.created(e))(o))
            .decode(result);
      };
    })(o)))
    ..add(new JsInterfaceCodec<DataStyleOptions>(
        (o) => new DataStyleOptions.created(o)))).encode(_style);
  void set _style(dynamic __style) {
    asJsObject(this)['style'] = __style;
  }
  dynamic get _style => asJsObject(this)['style'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataGeoJsonOptions
// **************************************************************************

@anonymous
class DataGeoJsonOptions extends JsInterface implements _DataGeoJsonOptions {
  DataGeoJsonOptions.created(JsObject o) : super.created(o);
  DataGeoJsonOptions() : this.created(new JsObject(context['Object']));

  void set idPropertyName(String _idPropertyName) {
    asJsObject(this)['idPropertyName'] = _idPropertyName;
  }
  String get idPropertyName => asJsObject(this)['idPropertyName'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataStyleOptions
// **************************************************************************

@anonymous
class DataStyleOptions extends JsInterface implements _DataStyleOptions {
  DataStyleOptions.created(JsObject o) : super.created(o);
  DataStyleOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set cursor(String _cursor) {
    asJsObject(this)['cursor'] = _cursor;
  }
  String get cursor => asJsObject(this)['cursor'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }
  bool get editable => asJsObject(this)['editable'];
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set _icon(dynamic __icon) {
    asJsObject(this)['icon'] = __icon;
  }
  dynamic get _icon => asJsObject(this)['icon'];
  dynamic /*String|Icon|GSymbol*/ get icon => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .decode(_icon);
  void set icon(dynamic /*String|Icon|GSymbol*/ icon) {
    _icon = (new ChainedCodec()
      ..add(new IdentityCodec<String>())
      ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
      ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
        .encode(icon);
  }
  void set shape(MarkerShape _shape) {
    asJsObject(this)['shape'] = __codec287.encode(_shape);
  }
  MarkerShape get shape => __codec287.decode(asJsObject(this)['shape']);
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
  void set title(String _title) {
    asJsObject(this)['title'] = _title;
  }
  String get title => asJsObject(this)['title'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}
/// codec for google_maps.src.MarkerShape
final __codec287 =
    new JsInterfaceCodec<MarkerShape>((o) => new MarkerShape.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataFeature
// **************************************************************************

@JsName('google.maps.Data.Feature')
class DataFeature extends JsInterface implements _DataFeature {
  DataFeature.created(JsObject o) : super.created(o);
  DataFeature([DataFeatureOptions options]) : this.created(new JsObject(
          context['google']['maps']['Data']['Feature'],
          [__codec288.encode(options)]));

  void forEachProperty(callback(dynamic p1, String p2)) {
    asJsObject(this).callMethod(
        'forEachProperty', [__codec289.encode(callback)]);
  }
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get geometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_getGeometry());
  _getGeometry() => asJsObject(this).callMethod('getGeometry');

  dynamic /*num|String*/ get id => _getId();
  dynamic /*num|String*/ _getId() => asJsObject(this).callMethod('getId');
  dynamic getProperty(String name) =>
      asJsObject(this).callMethod('getProperty', [name]);
  void removeProperty(String name) {
    asJsObject(this).callMethod('removeProperty', [name]);
  }
  void set geometry(
          dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) =>
      _setGeometry((new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Point'])))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
          .encode(newGeometry));
  void _setGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ newGeometry) {
    asJsObject(this).callMethod('setGeometry', [newGeometry]);
  }

  void setProperty(String name, dynamic newValue) {
    asJsObject(this).callMethod('setProperty', [name, newValue]);
  }
  void toGeoJson(callback(Object p1)) {
    asJsObject(this).callMethod('toGeoJson', [__codec286.encode(callback)]);
  }

  Stream<DataRemovePropertyEvent> get onRemoveproperty => getStream(this,
      #onRemoveproperty, "removeproperty",
      (JsObject o) => new DataRemovePropertyEvent.created(o));
  Stream<DataSetGeometryEvent> get onSetgeometry => getStream(this,
      #onSetgeometry, "setgeometry",
      (JsObject o) => new DataSetGeometryEvent.created(o));
  Stream<DataSetPropertyEvent> get onSetproperty => getStream(this,
      #onSetproperty, "setproperty",
      (JsObject o) => new DataSetPropertyEvent.created(o));
}
/// codec for google_maps.src.DataFeatureOptions
final __codec288 = new JsInterfaceCodec<DataFeatureOptions>(
    (o) => new DataFeatureOptions.created(o));

/// codec for google_maps.src.(dynamic, String) → dynamic
final __codec289 = new FunctionCodec /*<(dynamic, String) → dynamic>*/ (
    (f) => f, (JsFunction f) => (p_p1, p_p2) {
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataFeatureOptions
// **************************************************************************

@anonymous
class DataFeatureOptions extends JsInterface implements _DataFeatureOptions {
  DataFeatureOptions.created(JsObject o) : super.created(o);
  DataFeatureOptions() : this.created(new JsObject(context['Object']));

  void set _geometry(dynamic __geometry) {
    asJsObject(this)['geometry'] = __geometry;
  }
  dynamic get _geometry => asJsObject(this)['geometry'];
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ get geometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Point'])))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['LatLng']))))
      .decode(_geometry);
  void set geometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint|LatLng*/ geometry) {
    _geometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometryCollection>(
          (o) => new DataGeometryCollection.created(o), (o) => o != null &&
              o.instanceof(
                  context['google']['maps']['Data']['GeometryCollection'])))
      ..add(new JsInterfaceCodec<DataMultiPolygon>(
          (o) => new DataMultiPolygon.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
      ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
          (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['Polygon'])))
      ..add(new JsInterfaceCodec<DataLinearRing>(
          (o) => new DataLinearRing.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LinearRing'])))
      ..add(new JsInterfaceCodec<DataMultiLineString>(
          (o) => new DataMultiLineString.created(o), (o) => o != null &&
              o.instanceof(
                  context['google']['maps']['Data']['MultiLineString'])))
      ..add(new JsInterfaceCodec<DataLineString>(
          (o) => new DataLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LineString'])))
      ..add(new JsInterfaceCodec<DataMultiPoint>(
          (o) => new DataMultiPoint.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
      ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
          (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['Point'])))
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
              o != null && o.instanceof(context['google']['maps']['LatLng']))))
        .encode(geometry);
  }

  void set id(dynamic _id) {
    asJsObject(this)['id'] = _id;
  }
  dynamic get id => asJsObject(this)['id'];
  void set properties(Object _properties) {
    asJsObject(this)['properties'] = _properties;
  }
  Object get properties => asJsObject(this)['properties'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataGeometry
// **************************************************************************

@JsName('google.maps.Data.Geometry')
class DataGeometry extends JsInterface implements _DataGeometry {
  DataGeometry.created(JsObject o) : super.created(o);

  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataPoint
// **************************************************************************

@JsName('google.maps.Data.Point')
class DataPoint extends DataGeometry implements _DataPoint {
  DataPoint.created(JsObject o) : super.created(o);
  DataPoint(LatLng latLng) : this.created(new JsObject(
          context['google']['maps']['Data']['Point'],
          [__codec261.encode(latLng)]));

  LatLng get() => __codec261.decode(asJsObject(this).callMethod('get'));
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataMultiPoint
// **************************************************************************

@JsName('google.maps.Data.MultiPoint')
class DataMultiPoint extends DataGeometry implements _DataMultiPoint {
  DataMultiPoint.created(JsObject o) : super.created(o);
  DataMultiPoint(List<LatLng> elements) : this.created(new JsObject(
          context['google']['maps']['Data']['MultiPoint'],
          [__codec290.encode(elements)]));

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec290.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec261.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for dart.core.List<LatLng>
final __codec290 = new JsListCodec<LatLng>(__codec261);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataLineString
// **************************************************************************

@JsName('google.maps.Data.LineString')
class DataLineString extends DataGeometry implements _DataLineString {
  DataLineString.created(JsObject o) : super.created(o);
  DataLineString(List<LatLng> elements) : this.created(new JsObject(
          context['google']['maps']['Data']['LineString'],
          [__codec290.encode(elements)]));

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec290.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec261.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataMultiLineString
// **************************************************************************

@JsName('google.maps.Data.MultiLineString')
class DataMultiLineString extends DataGeometry implements _DataMultiLineString {
  DataMultiLineString.created(JsObject o) : super.created(o);
  DataMultiLineString(List<dynamic /*DataLineString|List<LatLng>*/ > elements)
      : this.created(new JsObject(
          context['google']['maps']['Data']['MultiLineString'], [
        (new JsListCodec<dynamic /*DataLineString|List<LatLng>*/ >(
            new ChainedCodec()
          ..add(new JsInterfaceCodec<DataLineString>(
              (o) => new DataLineString.created(o), (o) => o != null &&
                  o.instanceof(
                      context['google']['maps']['Data']['LineString'])))
          ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
                  (o) => new LatLng.created(o), (o) => o != null &&
                      o.instanceof(context['google']['maps']['LatLng']))))))
            .encode(elements)
      ]));
  List<DataLineString> get array => _getArray();
  List<DataLineString> _getArray() =>
      __codec292.decode(asJsObject(this).callMethod('getArray'));
  DataLineString getAt(num n) =>
      __codec291.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for google_maps.src.DataLineString
final __codec291 =
    new JsInterfaceCodec<DataLineString>((o) => new DataLineString.created(o));

/// codec for dart.core.List<DataLineString>
final __codec292 = new JsListCodec<DataLineString>(__codec291);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataLinearRing
// **************************************************************************

@JsName('google.maps.Data.LinearRing')
class DataLinearRing extends DataGeometry implements _DataLinearRing {
  DataLinearRing.created(JsObject o) : super.created(o);
  DataLinearRing(List<LatLng> elements) : this.created(new JsObject(
          context['google']['maps']['Data']['LinearRing'],
          [__codec290.encode(elements)]));

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec290.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec261.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataPolygon
// **************************************************************************

@JsName('google.maps.Data.Polygon')
class DataPolygon extends DataGeometry implements _DataPolygon {
  DataPolygon.created(JsObject o) : super.created(o);
  DataPolygon(List<dynamic /*DataLinearRing|List<LatLng>*/ > elements)
      : this.created(new JsObject(context['google']['maps']['Data']['Polygon'],
          [
        (new JsListCodec<dynamic /*DataLinearRing|List<LatLng>*/ >(
            new ChainedCodec()
          ..add(new JsInterfaceCodec<DataLinearRing>(
              (o) => new DataLinearRing.created(o), (o) => o != null &&
                  o.instanceof(
                      context['google']['maps']['Data']['LinearRing'])))
          ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
                  (o) => new LatLng.created(o), (o) => o != null &&
                      o.instanceof(context['google']['maps']['LatLng']))))))
            .encode(elements)
      ]));
  List<DataLinearRing> get array => _getArray();
  List<DataLinearRing> _getArray() =>
      __codec294.decode(asJsObject(this).callMethod('getArray'));
  DataLinearRing getAt(num n) =>
      __codec293.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for google_maps.src.DataLinearRing
final __codec293 =
    new JsInterfaceCodec<DataLinearRing>((o) => new DataLinearRing.created(o));

/// codec for dart.core.List<DataLinearRing>
final __codec294 = new JsListCodec<DataLinearRing>(__codec293);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataMultiPolygon
// **************************************************************************

@JsName('google.maps.Data.MultiPolygon')
class DataMultiPolygon extends DataGeometry implements _DataMultiPolygon {
  DataMultiPolygon.created(JsObject o) : super.created(o);
  DataMultiPolygon(
      List<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ > elements)
      : this.created(new JsObject(
          context['google']['maps']['Data']['MultiPolygon'], [
        (new JsListCodec<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ >(
            new ChainedCodec()
          ..add(new JsInterfaceCodec<DataPolygon>(
              (o) => new DataPolygon.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Polygon'])))
          ..add(new JsListCodec<dynamic /*DataLinearRing|List<LatLng>*/ >(
              new ChainedCodec()
            ..add(new JsInterfaceCodec<DataLinearRing>(
                (o) => new DataLinearRing.created(o), (o) => o != null &&
                    o.instanceof(
                        context['google']['maps']['Data']['LinearRing'])))
            ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng']))))))))
            .encode(elements)
      ]));
  List<DataPolygon> get array => _getArray();
  List<DataPolygon> _getArray() =>
      __codec296.decode(asJsObject(this).callMethod('getArray'));
  DataPolygon getAt(num n) =>
      __codec295.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for google_maps.src.DataPolygon
final __codec295 =
    new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o));

/// codec for dart.core.List<DataPolygon>
final __codec296 = new JsListCodec<DataPolygon>(__codec295);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataGeometryCollection
// **************************************************************************

@JsName('google.maps.Data.GeometryCollection')
class DataGeometryCollection extends DataGeometry
    implements _DataGeometryCollection {
  DataGeometryCollection.created(JsObject o) : super.created(o);
  DataGeometryCollection(List<dynamic /*DataGeometry|LatLng*/ > elements)
      : this.created(new JsObject(
          context['google']['maps']['Data']['GeometryCollection'], [
        (new JsListCodec<dynamic /*DataGeometry|LatLng*/ >(new ChainedCodec()
          ..add(new JsInterfaceCodec<DataGeometry>(
              (o) => new DataGeometry.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Geometry'])))
          ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                  (o) => o != null &&
                      o.instanceof(context['google']['maps']['LatLng'])))))
            .encode(elements)
      ]));
  List<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ > get array =>
      (new JsListCodec<dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ >(
          new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point'])))))
      .decode(_getArray());
  _getArray() => asJsObject(this).callMethod('getArray');

  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ getAt(
      num n) => (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_getAt(n));
  _getAt(num n) => asJsObject(this).callMethod('getAt', [n]);

  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataMouseEvent
// **************************************************************************

@anonymous
class DataMouseEvent extends MouseEvent implements _DataMouseEvent {
  DataMouseEvent.created(JsObject o) : super.created(o);
  DataMouseEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec279.encode(_feature);
  }
  DataFeature get feature => __codec279.decode(asJsObject(this)['feature']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataAddFeatureEvent
// **************************************************************************

@anonymous
class DataAddFeatureEvent extends JsInterface implements _DataAddFeatureEvent {
  DataAddFeatureEvent.created(JsObject o) : super.created(o);
  DataAddFeatureEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec279.encode(_feature);
  }
  DataFeature get feature => __codec279.decode(asJsObject(this)['feature']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataRemoveFeatureEvent
// **************************************************************************

@anonymous
class DataRemoveFeatureEvent extends JsInterface
    implements _DataRemoveFeatureEvent {
  DataRemoveFeatureEvent.created(JsObject o) : super.created(o);
  DataRemoveFeatureEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec279.encode(_feature);
  }
  DataFeature get feature => __codec279.decode(asJsObject(this)['feature']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataSetGeometryEvent
// **************************************************************************

@anonymous
class DataSetGeometryEvent extends JsInterface
    implements _DataSetGeometryEvent {
  DataSetGeometryEvent.created(JsObject o) : super.created(o);
  DataSetGeometryEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec279.encode(_feature);
  }
  DataFeature get feature => __codec279.decode(asJsObject(this)['feature']);
  void set _newGeometry(dynamic __newGeometry) {
    asJsObject(this)['newGeometry'] = __newGeometry;
  }
  dynamic get _newGeometry => asJsObject(this)['newGeometry'];
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get newGeometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_newGeometry);
  void set newGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ newGeometry) {
    _newGeometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometryCollection>(
          (o) => new DataGeometryCollection.created(o), (o) => o != null &&
              o.instanceof(
                  context['google']['maps']['Data']['GeometryCollection'])))
      ..add(new JsInterfaceCodec<DataMultiPolygon>(
          (o) => new DataMultiPolygon.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
      ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
          (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['Polygon'])))
      ..add(new JsInterfaceCodec<DataLinearRing>(
          (o) => new DataLinearRing.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LinearRing'])))
      ..add(new JsInterfaceCodec<DataMultiLineString>(
          (o) => new DataMultiLineString.created(o), (o) => o != null &&
              o.instanceof(
                  context['google']['maps']['Data']['MultiLineString'])))
      ..add(new JsInterfaceCodec<DataLineString>(
          (o) => new DataLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LineString'])))
      ..add(new JsInterfaceCodec<DataMultiPoint>(
          (o) => new DataMultiPoint.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
      ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
              (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Point']))))
        .encode(newGeometry);
  }

  void set _oldGeometry(dynamic __oldGeometry) {
    asJsObject(this)['oldGeometry'] = __oldGeometry;
  }
  dynamic get _oldGeometry => asJsObject(this)['oldGeometry'];
  dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ get oldGeometry =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometryCollection>(
        (o) => new DataGeometryCollection.created(o), (o) => o != null &&
            o.instanceof(
                context['google']['maps']['Data']['GeometryCollection'])))
    ..add(new JsInterfaceCodec<DataMultiPolygon>(
        (o) => new DataMultiPolygon.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
    ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
        (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['Polygon'])))
    ..add(new JsInterfaceCodec<DataLinearRing>(
        (o) => new DataLinearRing.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LinearRing'])))
    ..add(new JsInterfaceCodec<DataMultiLineString>(
        (o) => new DataMultiLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiLineString'])))
    ..add(new JsInterfaceCodec<DataLineString>(
        (o) => new DataLineString.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['LineString'])))
    ..add(new JsInterfaceCodec<DataMultiPoint>(
        (o) => new DataMultiPoint.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
    ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
            (o) => o != null &&
                o.instanceof(context['google']['maps']['Data']['Point']))))
      .decode(_oldGeometry);
  void set oldGeometry(
      dynamic /*DataGeometryCollection|DataMultiPolygon|DataPolygon|DataLinearRing|DataMultiLineString|DataLineString|DataMultiPoint|DataPoint*/ oldGeometry) {
    _oldGeometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometryCollection>(
          (o) => new DataGeometryCollection.created(o), (o) => o != null &&
              o.instanceof(
                  context['google']['maps']['Data']['GeometryCollection'])))
      ..add(new JsInterfaceCodec<DataMultiPolygon>(
          (o) => new DataMultiPolygon.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPolygon'])))
      ..add(new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o),
          (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['Polygon'])))
      ..add(new JsInterfaceCodec<DataLinearRing>(
          (o) => new DataLinearRing.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LinearRing'])))
      ..add(new JsInterfaceCodec<DataMultiLineString>(
          (o) => new DataMultiLineString.created(o), (o) => o != null &&
              o.instanceof(
                  context['google']['maps']['Data']['MultiLineString'])))
      ..add(new JsInterfaceCodec<DataLineString>(
          (o) => new DataLineString.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['LineString'])))
      ..add(new JsInterfaceCodec<DataMultiPoint>(
          (o) => new DataMultiPoint.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['Data']['MultiPoint'])))
      ..add(new JsInterfaceCodec<DataPoint>((o) => new DataPoint.created(o),
              (o) => o != null &&
                  o.instanceof(context['google']['maps']['Data']['Point']))))
        .encode(oldGeometry);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataSetPropertyEvent
// **************************************************************************

@anonymous
class DataSetPropertyEvent extends JsInterface
    implements _DataSetPropertyEvent {
  DataSetPropertyEvent.created(JsObject o) : super.created(o);
  DataSetPropertyEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec279.encode(_feature);
  }
  DataFeature get feature => __codec279.decode(asJsObject(this)['feature']);
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set newValue(dynamic _newValue) {
    asJsObject(this)['newValue'] = _newValue;
  }
  dynamic get newValue => asJsObject(this)['newValue'];
  void set oldValue(dynamic _oldValue) {
    asJsObject(this)['oldValue'] = _oldValue;
  }
  dynamic get oldValue => asJsObject(this)['oldValue'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataRemovePropertyEvent
// **************************************************************************

@anonymous
class DataRemovePropertyEvent extends JsInterface
    implements _DataRemovePropertyEvent {
  DataRemovePropertyEvent.created(JsObject o) : super.created(o);
  DataRemovePropertyEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec279.encode(_feature);
  }
  DataFeature get feature => __codec279.decode(asJsObject(this)['feature']);
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set oldValue(dynamic _oldValue) {
    asJsObject(this)['oldValue'] = _oldValue;
  }
  dynamic get oldValue => asJsObject(this)['oldValue'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Marker
// **************************************************************************

@JsName('google.maps.Marker')
class Marker extends MVCObject implements _Marker {
  static get MAX_ZINDEX => context['google']['maps']['Marker']['MAX_ZINDEX'];

  Marker.created(JsObject o) : super.created(o);
  Marker([MarkerOptions opts]) : this.created(new JsObject(
          context['google']['maps']['Marker'], [__codec297.encode(opts)]));

  Animation get animation => _getAnimation();
  Animation _getAnimation() =>
      __codec298.decode(asJsObject(this).callMethod('getAnimation'));
  Attribution get attribution => _getAttribution();
  Attribution _getAttribution() =>
      __codec299.decode(asJsObject(this).callMethod('getAttribution'));
  bool get clickable => _getClickable();
  bool _getClickable() => asJsObject(this).callMethod('getClickable');
  String get cursor => _getCursor();
  String _getCursor() => asJsObject(this).callMethod('getCursor');
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  dynamic /*String|Icon|GSymbol*/ get icon => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .decode(_getIcon());
  _getIcon() => asJsObject(this).callMethod('getIcon');
  MarkerLabel get label => _getLabel();
  MarkerLabel _getLabel() =>
      __codec300.decode(asJsObject(this).callMethod('getLabel'));
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
      .decode(_getMap());
  _getMap() => asJsObject(this).callMethod('getMap');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace() =>
      __codec301.decode(asJsObject(this).callMethod('getPlace'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec261.decode(asJsObject(this).callMethod('getPosition'));
  MarkerShape get shape => _getShape();
  MarkerShape _getShape() =>
      __codec287.decode(asJsObject(this).callMethod('getShape'));
  String get title => _getTitle();
  String _getTitle() => asJsObject(this).callMethod('getTitle');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void set animation(Animation animation) => _setAnimation(animation);
  void _setAnimation(Animation animation) {
    asJsObject(this).callMethod('setAnimation', [__codec298.encode(animation)]);
  }
  void set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution) {
    asJsObject(this).callMethod(
        'setAttribution', [__codec299.encode(attribution)]);
  }
  void set clickable(bool flag) => _setClickable(flag);
  void _setClickable(bool flag) {
    asJsObject(this).callMethod('setClickable', [flag]);
  }
  void set cursor(String cursor) => _setCursor(cursor);
  void _setCursor(String cursor) {
    asJsObject(this).callMethod('setCursor', [cursor]);
  }
  void set draggable(bool flag) => _setDraggable(flag);
  void _setDraggable(bool flag) {
    asJsObject(this).callMethod('setDraggable', [flag]);
  }
  void set icon(dynamic /*String|Icon|GSymbol*/ icon) => _setIcon(
      (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .encode(icon));
  void _setIcon(dynamic /*String|Icon|GSymbol*/ icon) {
    asJsObject(this).callMethod('setIcon', [icon]);
  }
  void set label(dynamic /*String|MarkerLabel*/ label) => _setLabel(
      (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o))))
      .encode(label));
  void _setLabel(dynamic /*String|MarkerLabel*/ label) {
    asJsObject(this).callMethod('setLabel', [label]);
  }
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
        (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
          .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map) {
    asJsObject(this).callMethod('setMap', [map]);
  }
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }
  void set options(MarkerOptions options) => _setOptions(options);
  void _setOptions(MarkerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec297.encode(options)]);
  }
  void set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place) {
    asJsObject(this).callMethod('setPlace', [__codec301.encode(place)]);
  }
  void set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng) {
    asJsObject(this).callMethod('setPosition', [__codec261.encode(latlng)]);
  }
  void set shape(MarkerShape shape) => _setShape(shape);
  void _setShape(MarkerShape shape) {
    asJsObject(this).callMethod('setShape', [__codec287.encode(shape)]);
  }
  void set title(String title) => _setTitle(title);
  void _setTitle(String title) {
    asJsObject(this).callMethod('setTitle', [title]);
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream get onAnimationChanged =>
      getStream(this, #onAnimationChanged, "animation_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream get onClickableChanged =>
      getStream(this, #onClickableChanged, "clickable_changed");
  Stream get onCursorChanged =>
      getStream(this, #onCursorChanged, "cursor_changed");
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream get onDraggableChanged =>
      getStream(this, #onDraggableChanged, "draggable_changed");
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream get onFlatChanged => getStream(this, #onFlatChanged, "flat_changed");
  Stream get onIconChanged => getStream(this, #onIconChanged, "icon_changed");
  Stream<MouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, "mouseup", (JsObject o) => new MouseEvent.created(o));
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
  Stream get onShapeChanged =>
      getStream(this, #onShapeChanged, "shape_changed");
  Stream get onTitleChanged =>
      getStream(this, #onTitleChanged, "title_changed");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");
}
/// codec for google_maps.src.MarkerOptions
final __codec297 =
    new JsInterfaceCodec<MarkerOptions>((o) => new MarkerOptions.created(o));

/// codec for google_maps.src.Animation
final __codec298 = new BiMapCodec<Animation, dynamic>(
    new Map<Animation, dynamic>.fromIterable(Animation.values, value: asJs));

/// codec for google_maps.src.Attribution
final __codec299 =
    new JsInterfaceCodec<Attribution>((o) => new Attribution.created(o));

/// codec for google_maps.src.MarkerLabel
final __codec300 =
    new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o));

/// codec for google_maps.src.MarkerPlace
final __codec301 =
    new JsInterfaceCodec<MarkerPlace>((o) => new MarkerPlace.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MarkerOptions
// **************************************************************************

@anonymous
class MarkerOptions extends JsInterface implements _MarkerOptions {
  MarkerOptions.created(JsObject o) : super.created(o);
  MarkerOptions() : this.created(new JsObject(context['Object']));

  void set anchorPoint(Point _anchorPoint) {
    asJsObject(this)['anchorPoint'] = __codec302.encode(_anchorPoint);
  }
  Point get anchorPoint => __codec302.decode(asJsObject(this)['anchorPoint']);
  void set animation(Animation _animation) {
    asJsObject(this)['animation'] = __codec298.encode(_animation);
  }
  Animation get animation => __codec298.decode(asJsObject(this)['animation']);
  void set attribution(Attribution _attribution) {
    asJsObject(this)['attribution'] = __codec299.encode(_attribution);
  }
  Attribution get attribution =>
      __codec299.decode(asJsObject(this)['attribution']);
  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set crossOnDrag(bool _crossOnDrag) {
    asJsObject(this)['crossOnDrag'] = _crossOnDrag;
  }
  bool get crossOnDrag => asJsObject(this)['crossOnDrag'];
  void set cursor(String _cursor) {
    asJsObject(this)['cursor'] = _cursor;
  }
  String get cursor => asJsObject(this)['cursor'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set _icon(dynamic __icon) {
    asJsObject(this)['icon'] = __icon;
  }
  dynamic get _icon => asJsObject(this)['icon'];
  dynamic /*String|Icon|GSymbol*/ get icon => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
    ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
      .decode(_icon);
  void set icon(dynamic /*String|Icon|GSymbol*/ icon) {
    _icon = (new ChainedCodec()
      ..add(new IdentityCodec<String>())
      ..add(new JsInterfaceCodec<Icon>((o) => new Icon.created(o)))
      ..add(new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o))))
        .encode(icon);
  }
  void set _label(dynamic __label) {
    asJsObject(this)['label'] = __label;
  }
  dynamic get _label => asJsObject(this)['label'];
  dynamic /*String|MarkerLabel*/ get label => (new ChainedCodec()
    ..add(new IdentityCodec<String>())
    ..add(new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o))))
      .decode(_label);
  void set label(dynamic /*String|MarkerLabel*/ label) {
    _label = (new ChainedCodec()
      ..add(new IdentityCodec<String>())
      ..add(
          new JsInterfaceCodec<MarkerLabel>((o) => new MarkerLabel.created(o))))
        .encode(label);
  }
  void set _map(dynamic __map) {
    asJsObject(this)['map'] = __map;
  }
  dynamic get _map => asJsObject(this)['map'];
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
      .decode(_map);
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) {
    _map = (new ChainedCodec()
      ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
          (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
      ..add(new JsInterfaceCodec<StreetViewPanorama>(
              (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                  o.instanceof(
                      context['google']['maps']['StreetViewPanorama']))))
        .encode(map);
  }
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
  void set optimized(bool _optimized) {
    asJsObject(this)['optimized'] = _optimized;
  }
  bool get optimized => asJsObject(this)['optimized'];
  void set place(MarkerPlace _place) {
    asJsObject(this)['place'] = __codec301.encode(_place);
  }
  MarkerPlace get place => __codec301.decode(asJsObject(this)['place']);
  void set position(LatLng _position) {
    asJsObject(this)['position'] = __codec261.encode(_position);
  }
  LatLng get position => __codec261.decode(asJsObject(this)['position']);
  void set shape(MarkerShape _shape) {
    asJsObject(this)['shape'] = __codec287.encode(_shape);
  }
  MarkerShape get shape => __codec287.decode(asJsObject(this)['shape']);
  void set title(String _title) {
    asJsObject(this)['title'] = _title;
  }
  String get title => asJsObject(this)['title'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}
/// codec for google_maps.src.Point
final __codec302 = new JsInterfaceCodec<Point>((o) => new Point.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Icon
// **************************************************************************

@anonymous
class Icon extends JsInterface implements _Icon {
  Icon.created(JsObject o) : super.created(o);
  Icon() : this.created(new JsObject(context['Object']));

  void set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec302.encode(_anchor);
  }
  Point get anchor => __codec302.decode(asJsObject(this)['anchor']);
  void set labelOrigin(Point _labelOrigin) {
    asJsObject(this)['labelOrigin'] = __codec302.encode(_labelOrigin);
  }
  Point get labelOrigin => __codec302.decode(asJsObject(this)['labelOrigin']);
  void set origin(Point _origin) {
    asJsObject(this)['origin'] = __codec302.encode(_origin);
  }
  Point get origin => __codec302.decode(asJsObject(this)['origin']);
  void set scaledSize(Size _scaledSize) {
    asJsObject(this)['scaledSize'] = __codec303.encode(_scaledSize);
  }
  Size get scaledSize => __codec303.decode(asJsObject(this)['scaledSize']);
  void set size(Size _size) {
    asJsObject(this)['size'] = __codec303.encode(_size);
  }
  Size get size => __codec303.decode(asJsObject(this)['size']);
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
}
/// codec for google_maps.src.Size
final __codec303 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MarkerLabel
// **************************************************************************

@anonymous
class MarkerLabel extends JsInterface implements _MarkerLabel {
  MarkerLabel.created(JsObject o) : super.created(o);
  MarkerLabel() : this.created(new JsObject(context['Object']));

  void set color(String _color) {
    asJsObject(this)['color'] = _color;
  }
  String get color => asJsObject(this)['color'];
  void set fontFamily(String _fontFamily) {
    asJsObject(this)['fontFamily'] = _fontFamily;
  }
  String get fontFamily => asJsObject(this)['fontFamily'];
  void set fontSize(String _fontSize) {
    asJsObject(this)['fontSize'] = _fontSize;
  }
  String get fontSize => asJsObject(this)['fontSize'];
  void set fontWeight(String _fontWeight) {
    asJsObject(this)['fontWeight'] = _fontWeight;
  }
  String get fontWeight => asJsObject(this)['fontWeight'];
  void set text(String _text) {
    asJsObject(this)['text'] = _text;
  }
  String get text => asJsObject(this)['text'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MarkerShape
// **************************************************************************

@anonymous
class MarkerShape extends JsInterface implements _MarkerShape {
  MarkerShape.created(JsObject o) : super.created(o);
  MarkerShape() : this.created(new JsObject(context['Object']));

  void set coords(List<num> _coords) {
    asJsObject(this)['coords'] = __codec304.encode(_coords);
  }
  List<num> get coords => __codec304.decode(asJsObject(this)['coords']);
  void set type(String _type) {
    asJsObject(this)['type'] = _type;
  }
  String get type => asJsObject(this)['type'];
}
/// codec for dart.core.List<num>
final __codec304 = new JsListCodec<num>(null);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GSymbol
// **************************************************************************

@anonymous
class GSymbol extends JsInterface implements _GSymbol {
  GSymbol.created(JsObject o) : super.created(o);
  GSymbol() : this.created(new JsObject(context['Object']));

  void set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec302.encode(_anchor);
  }
  Point get anchor => __codec302.decode(asJsObject(this)['anchor']);
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set labelOrigin(Point _labelOrigin) {
    asJsObject(this)['labelOrigin'] = __codec302.encode(_labelOrigin);
  }
  Point get labelOrigin => __codec302.decode(asJsObject(this)['labelOrigin']);
  void set _path(dynamic __path) {
    asJsObject(this)['path'] = __path;
  }
  dynamic get _path => asJsObject(this)['path'];
  dynamic /*SymbolPath|String*/ get path => (new ChainedCodec()
    ..add(new BiMapCodec<SymbolPath, dynamic>({
      SymbolPath.BACKWARD_CLOSED_ARROW:
          context['google']['maps']['SymbolPath']['BACKWARD_CLOSED_ARROW'],
      SymbolPath.BACKWARD_OPEN_ARROW:
          context['google']['maps']['SymbolPath']['BACKWARD_OPEN_ARROW'],
      SymbolPath.CIRCLE: context['google']['maps']['SymbolPath']['CIRCLE'],
      SymbolPath.FORWARD_CLOSED_ARROW:
          context['google']['maps']['SymbolPath']['FORWARD_CLOSED_ARROW'],
      SymbolPath.FORWARD_OPEN_ARROW:
          context['google']['maps']['SymbolPath']['FORWARD_OPEN_ARROW']
    }))
    ..add(new IdentityCodec<String>())).decode(_path);
  void set path(dynamic /*SymbolPath|String*/ path) {
    _path = (new ChainedCodec()
      ..add(new BiMapCodec<SymbolPath, dynamic>({
        SymbolPath.BACKWARD_CLOSED_ARROW:
            context['google']['maps']['SymbolPath']['BACKWARD_CLOSED_ARROW'],
        SymbolPath.BACKWARD_OPEN_ARROW:
            context['google']['maps']['SymbolPath']['BACKWARD_OPEN_ARROW'],
        SymbolPath.CIRCLE: context['google']['maps']['SymbolPath']['CIRCLE'],
        SymbolPath.FORWARD_CLOSED_ARROW:
            context['google']['maps']['SymbolPath']['FORWARD_CLOSED_ARROW'],
        SymbolPath.FORWARD_OPEN_ARROW:
            context['google']['maps']['SymbolPath']['FORWARD_OPEN_ARROW']
      }))
      ..add(new IdentityCodec<String>())).encode(path);
  }
  void set rotation(num _rotation) {
    asJsObject(this)['rotation'] = _rotation;
  }
  num get rotation => asJsObject(this)['rotation'];
  void set scale(num _scale) {
    asJsObject(this)['scale'] = _scale;
  }
  num get scale => asJsObject(this)['scale'];
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _SymbolPath
// **************************************************************************

class SymbolPath extends JsEnum {
  static final values = <SymbolPath>[
    BACKWARD_CLOSED_ARROW,
    BACKWARD_OPEN_ARROW,
    CIRCLE,
    FORWARD_CLOSED_ARROW,
    FORWARD_OPEN_ARROW
  ];
  static final BACKWARD_CLOSED_ARROW = new SymbolPath._('BACKWARD_CLOSED_ARROW',
      context['google']['maps']['SymbolPath']['BACKWARD_CLOSED_ARROW']);
  static final BACKWARD_OPEN_ARROW = new SymbolPath._('BACKWARD_OPEN_ARROW',
      context['google']['maps']['SymbolPath']['BACKWARD_OPEN_ARROW']);
  static final CIRCLE = new SymbolPath._(
      'CIRCLE', context['google']['maps']['SymbolPath']['CIRCLE']);
  static final FORWARD_CLOSED_ARROW = new SymbolPath._('FORWARD_CLOSED_ARROW',
      context['google']['maps']['SymbolPath']['FORWARD_CLOSED_ARROW']);
  static final FORWARD_OPEN_ARROW = new SymbolPath._('FORWARD_OPEN_ARROW',
      context['google']['maps']['SymbolPath']['FORWARD_OPEN_ARROW']);

  final String _name;
  SymbolPath._(this._name, o) : super.created(o);

  String toString() => 'SymbolPath.$_name';

  // dumb code to remove analyzer hint for unused _SymbolPath
  _SymbolPath _dumbMethod1() => _dumbMethod2();
  _SymbolPath _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _Animation
// **************************************************************************

class Animation extends JsEnum {
  static final values = <Animation>[BOUNCE, DROP];
  static final BOUNCE = new Animation._(
      'BOUNCE', context['google']['maps']['Animation']['BOUNCE']);
  static final DROP =
      new Animation._('DROP', context['google']['maps']['Animation']['DROP']);

  final String _name;
  Animation._(this._name, o) : super.created(o);

  String toString() => 'Animation.$_name';

  // dumb code to remove analyzer hint for unused _Animation
  _Animation _dumbMethod1() => _dumbMethod2();
  _Animation _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _InfoWindow
// **************************************************************************

@JsName('google.maps.InfoWindow')
class InfoWindow extends MVCObject implements _InfoWindow {
  InfoWindow.created(JsObject o) : super.created(o);
  InfoWindow([InfoWindowOptions opts]) : this.created(new JsObject(
          context['google']['maps']['InfoWindow'], [__codec305.encode(opts)]));

  void close() {
    asJsObject(this).callMethod('close');
  }
  dynamic /*String|Node*/ get content => _getContent();
  dynamic /*String|Node*/ _getContent() =>
      asJsObject(this).callMethod('getContent');
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec261.decode(asJsObject(this).callMethod('getPosition'));
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void open([dynamic /*GMap|StreetViewPanorama*/ map, MVCObject anchor]) {
    _open((new ChainedCodec()
      ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
          (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
      ..add(new JsInterfaceCodec<StreetViewPanorama>((o) =>
          new StreetViewPanorama.created(o), (o) => o != null &&
              o.instanceof(context['google']['maps']['StreetViewPanorama']))))
        .encode(map), anchor);
  }
  _open([dynamic /*GMap|StreetViewPanorama*/ map, MVCObject anchor]) =>
      asJsObject(this).callMethod('open', [map, __codec306.encode(anchor)]);
  void set content(dynamic /*String|Node*/ content) => _setContent(content);
  void _setContent(dynamic /*String|Node*/ content) {
    asJsObject(this).callMethod('setContent', [content]);
  }
  void set options(InfoWindowOptions options) => _setOptions(options);
  void _setOptions(InfoWindowOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec305.encode(options)]);
  }
  void set position(LatLng position) => _setPosition(position);
  void _setPosition(LatLng position) {
    asJsObject(this).callMethod('setPosition', [__codec261.encode(position)]);
  }
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream get onCloseclick => getStream(this, #onCloseclick, "closeclick");
  Stream get onContentChanged =>
      getStream(this, #onContentChanged, "content_changed");
  Stream get onDomready => getStream(this, #onDomready, "domready");
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");
}
/// codec for google_maps.src.InfoWindowOptions
final __codec305 = new JsInterfaceCodec<InfoWindowOptions>(
    (o) => new InfoWindowOptions.created(o));

/// codec for google_maps.src.MVCObject
final __codec306 =
    new JsInterfaceCodec<MVCObject>((o) => new MVCObject.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _InfoWindowOptions
// **************************************************************************

@anonymous
class InfoWindowOptions extends JsInterface implements _InfoWindowOptions {
  InfoWindowOptions.created(JsObject o) : super.created(o);
  InfoWindowOptions() : this.created(new JsObject(context['Object']));

  void set content(dynamic _content) {
    asJsObject(this)['content'] = _content;
  }
  dynamic get content => asJsObject(this)['content'];
  void set disableAutoPan(bool _disableAutoPan) {
    asJsObject(this)['disableAutoPan'] = _disableAutoPan;
  }
  bool get disableAutoPan => asJsObject(this)['disableAutoPan'];
  void set maxWidth(num _maxWidth) {
    asJsObject(this)['maxWidth'] = _maxWidth;
  }
  num get maxWidth => asJsObject(this)['maxWidth'];
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec303.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec303.decode(asJsObject(this)['pixelOffset']);
  void set position(LatLng _position) {
    asJsObject(this)['position'] = __codec261.encode(_position);
  }
  LatLng get position => __codec261.decode(asJsObject(this)['position']);
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Polyline
// **************************************************************************

@JsName('google.maps.Polyline')
class Polyline extends MVCObject implements _Polyline {
  Polyline.created(JsObject o) : super.created(o);
  Polyline([PolylineOptions opts]) : this.created(new JsObject(
          context['google']['maps']['Polyline'], [__codec307.encode(opts)]));

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
          .decode(_getPath());
  _getPath() => asJsObject(this).callMethod('getPath');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set options(PolylineOptions options) => _setOptions(options);
  void _setOptions(PolylineOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec307.encode(options)]);
  }
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) =>
      _setPath((new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['LatLng'])))))
      .encode(path));
  void _setPath(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [path]);
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream<PolyMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblclick => getStream(this, #onDblclick,
      "dblclick", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseout => getStream(this, #onMouseout,
      "mouseout", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup",
      (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new PolyMouseEvent.created(o));
}
/// codec for google_maps.src.PolylineOptions
final __codec307 = new JsInterfaceCodec<PolylineOptions>(
    (o) => new PolylineOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PolylineOptions
// **************************************************************************

@anonymous
class PolylineOptions extends JsInterface implements _PolylineOptions {
  PolylineOptions.created(JsObject o) : super.created(o);
  PolylineOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }
  bool get editable => asJsObject(this)['editable'];
  void set geodesic(bool _geodesic) {
    asJsObject(this)['geodesic'] = _geodesic;
  }
  bool get geodesic => asJsObject(this)['geodesic'];
  void set icons(List<IconSequence> _icons) {
    asJsObject(this)['icons'] = __codec309.encode(_icons);
  }
  List<IconSequence> get icons => __codec309.decode(asJsObject(this)['icons']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set _path(dynamic __path) {
    asJsObject(this)['path'] = __path;
  }
  dynamic get _path => asJsObject(this)['path'];
  dynamic /*MVCArray<LatLng>|List<LatLng>*/ get path =>
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o), (o) => o != null &&
            o.instanceof(context['google']['maps']['LatLng']))))).decode(_path);
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    _path =
        (new ChainedCodec()
      ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
          (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
              (o) => new LatLng.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['LatLng'])))))
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
              (o) => new LatLng.created(o), (o) => o != null &&
                  o.instanceof(context['google']['maps']['LatLng'])))))
        .encode(path);
  }
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}
/// codec for google_maps.src.IconSequence
final __codec308 =
    new JsInterfaceCodec<IconSequence>((o) => new IconSequence.created(o));

/// codec for dart.core.List<IconSequence>
final __codec309 = new JsListCodec<IconSequence>(__codec308);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _IconSequence
// **************************************************************************

@anonymous
class IconSequence extends JsInterface implements _IconSequence {
  IconSequence.created(JsObject o) : super.created(o);
  IconSequence() : this.created(new JsObject(context['Object']));

  void set fixedRotation(bool _fixedRotation) {
    asJsObject(this)['fixedRotation'] = _fixedRotation;
  }
  bool get fixedRotation => asJsObject(this)['fixedRotation'];
  void set icon(GSymbol _icon) {
    asJsObject(this)['icon'] = __codec310.encode(_icon);
  }
  GSymbol get icon => __codec310.decode(asJsObject(this)['icon']);
  void set offset(String _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  String get offset => asJsObject(this)['offset'];
  void set repeat(String _repeat) {
    asJsObject(this)['repeat'] = _repeat;
  }
  String get repeat => asJsObject(this)['repeat'];
}
/// codec for google_maps.src.GSymbol
final __codec310 = new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Polygon
// **************************************************************************

@JsName('google.maps.Polygon')
class Polygon extends MVCObject implements _Polygon {
  Polygon.created(JsObject o) : super.created(o);
  Polygon([PolygonOptions opts]) : this.created(new JsObject(
          context['google']['maps']['Polygon'], [__codec311.encode(opts)]));

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
          .decode(_getPath());
  _getPath() => asJsObject(this).callMethod('getPath');
  MVCArray<MVCArray<LatLng>> get paths =>
      (new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
              (o) =>
                  new MVCArray<MVCArray<LatLng>>.created(o,
                      new JsInterfaceCodec<MVCArray<LatLng>>(
                          (o) => new MVCArray<LatLng>.created(o,
                              new JsInterfaceCodec<LatLng>(
                                  (o) => new LatLng.created(o),
                                  (o) => o != null &&
                                      o.instanceof(context['google']['maps'][
                                          'LatLng'])))))))
          .decode(
              _getPaths());
  _getPaths() => asJsObject(this).callMethod('getPaths');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set options(PolygonOptions options) => _setOptions(options);
  void _setOptions(PolygonOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec311.encode(options)]);
  }
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) =>
      _setPath((new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o), (o) =>
            o != null && o.instanceof(context['google']['maps']['LatLng'])))))
      .encode(path));
  void _setPath(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [path]);
  }
  void set paths(
          dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) =>
      _setPaths(
          (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
            (o) =>
                new MVCArray<MVCArray<LatLng>>.created(o,
                    new JsInterfaceCodec<MVCArray<LatLng>>(
                        (o) => new MVCArray<LatLng>.created(o,
                            new JsInterfaceCodec<LatLng>(
                                (o) => new LatLng.created(o),
                                (o) => o != null &&
                                    o.instanceof(context['google']['maps'][
                                        'LatLng'])))))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) =>
                new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(
        new JsListCodec<List<LatLng>>(
            new JsListCodec<LatLng>(
                new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                    (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(
        new JsListCodec<LatLng>(
            new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o),
                (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng'])))))
              .encode(paths));
  void _setPaths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    asJsObject(this).callMethod('setPaths', [paths]);
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream<PolyMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblclick => getStream(this, #onDblclick,
      "dblclick", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseout => getStream(this, #onMouseout,
      "mouseout", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup",
      (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new PolyMouseEvent.created(o));
}
/// codec for google_maps.src.PolygonOptions
final __codec311 =
    new JsInterfaceCodec<PolygonOptions>((o) => new PolygonOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PolygonOptions
// **************************************************************************

@anonymous
class PolygonOptions extends JsInterface implements _PolygonOptions {
  PolygonOptions.created(JsObject o) : super.created(o);
  PolygonOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }
  bool get editable => asJsObject(this)['editable'];
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set geodesic(bool _geodesic) {
    asJsObject(this)['geodesic'] = _geodesic;
  }
  bool get geodesic => asJsObject(this)['geodesic'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set _paths(dynamic __paths) {
    asJsObject(this)['paths'] = __paths;
  }
  dynamic get _paths => asJsObject(this)['paths'];
  dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ get paths =>
      (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
            (o) =>
                new MVCArray<MVCArray<LatLng>>.created(o,
                    new JsInterfaceCodec<MVCArray<LatLng>>(
                        (o) => new MVCArray<LatLng>.created(o,
                            new JsInterfaceCodec<LatLng>(
                                (o) => new LatLng.created(o),
                                (o) => o != null &&
                                    o.instanceof(context['google']['maps'][
                                        'LatLng'])))))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) =>
                new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(
        new JsListCodec<List<LatLng>>(
            new JsListCodec<LatLng>(
                new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                    (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
    ..add(
        new JsListCodec<LatLng>(
            new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o),
                (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng'])))))
      .decode(
          _paths);
  void set paths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    _paths =
        (new ChainedCodec()
      ..add(
          new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
              (o) =>
                  new MVCArray<MVCArray<LatLng>>.created(o,
                      new JsInterfaceCodec<MVCArray<LatLng>>(
                          (o) => new MVCArray<LatLng>.created(o,
                              new JsInterfaceCodec<LatLng>(
                                  (o) => new LatLng.created(o),
                                  (o) => o != null &&
                                      o.instanceof(context['google']['maps'][
                                          'LatLng'])))))))
      ..add(
          new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) =>
                  new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                      (o) => new LatLng.created(o), (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
      ..add(
          new JsListCodec<List<LatLng>>(
              new JsListCodec<LatLng>(
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
      ..add(
          new JsListCodec<LatLng>(
              new JsInterfaceCodec<LatLng>(
                  (o) => new LatLng.created(o),
                  (o) => o != null &&
                      o.instanceof(context['google']['maps']['LatLng'])))))
        .encode(
            paths);
  }
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec312.encode(_strokePosition);
  }
  StrokePosition get strokePosition =>
      __codec312.decode(asJsObject(this)['strokePosition']);
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}
/// codec for google_maps.src.StrokePosition
final __codec312 = new BiMapCodec<StrokePosition, dynamic>(
    new Map<StrokePosition, dynamic>.fromIterable(StrokePosition.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PolyMouseEvent
// **************************************************************************

@anonymous
class PolyMouseEvent extends MouseEvent implements _PolyMouseEvent {
  PolyMouseEvent.created(JsObject o) : super.created(o);
  PolyMouseEvent() : this.created(new JsObject(context['Object']));

  void set edge(num _edge) {
    asJsObject(this)['edge'] = _edge;
  }
  num get edge => asJsObject(this)['edge'];
  void set path(num _path) {
    asJsObject(this)['path'] = _path;
  }
  num get path => asJsObject(this)['path'];
  void set vertex(num _vertex) {
    asJsObject(this)['vertex'] = _vertex;
  }
  num get vertex => asJsObject(this)['vertex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Rectangle
// **************************************************************************

@JsName('google.maps.Rectangle')
class Rectangle extends MVCObject implements _Rectangle {
  Rectangle.created(JsObject o) : super.created(o);
  Rectangle([RectangleOptions opts]) : this.created(new JsObject(
          context['google']['maps']['Rectangle'], [__codec313.encode(opts)]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec260.decode(asJsObject(this).callMethod('getBounds'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec260.encode(bounds)]);
  }
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set options(RectangleOptions options) => _setOptions(options);
  void _setOptions(RectangleOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec313.encode(options)]);
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream get onBoundsChanged =>
      getStream(this, #onBoundsChanged, "bounds_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, "mouseup", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
}
/// codec for google_maps.src.RectangleOptions
final __codec313 = new JsInterfaceCodec<RectangleOptions>(
    (o) => new RectangleOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _RectangleOptions
// **************************************************************************

@anonymous
class RectangleOptions extends JsInterface implements _RectangleOptions {
  RectangleOptions.created(JsObject o) : super.created(o);
  RectangleOptions() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec260.encode(_bounds);
  }
  LatLngBounds get bounds => __codec260.decode(asJsObject(this)['bounds']);
  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }
  bool get editable => asJsObject(this)['editable'];
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec312.encode(_strokePosition);
  }
  StrokePosition get strokePosition =>
      __codec312.decode(asJsObject(this)['strokePosition']);
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Circle
// **************************************************************************

@JsName('google.maps.Circle')
class Circle extends MVCObject implements _Circle {
  Circle.created(JsObject o) : super.created(o);
  Circle([CircleOptions opts]) : this.created(new JsObject(
          context['google']['maps']['Circle'], [__codec314.encode(opts)]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec260.decode(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec261.decode(asJsObject(this).callMethod('getCenter'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  num get radius => _getRadius();
  num _getRadius() => asJsObject(this).callMethod('getRadius');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set center(LatLng center) => _setCenter(center);
  void _setCenter(LatLng center) {
    asJsObject(this).callMethod('setCenter', [__codec261.encode(center)]);
  }
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable]);
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set options(CircleOptions options) => _setOptions(options);
  void _setOptions(CircleOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec314.encode(options)]);
  }
  void set radius(num radius) => _setRadius(radius);
  void _setRadius(num radius) {
    asJsObject(this).callMethod('setRadius', [radius]);
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible]);
  }

  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, "center_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDrag => getStream(
      this, #onDrag, "drag", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragend => getStream(
      this, #onDragend, "dragend", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart,
      "dragstart", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMousedown => getStream(this, #onMousedown,
      "mousedown", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMousemove => getStream(this, #onMousemove,
      "mousemove", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseout => getStream(
      this, #onMouseout, "mouseout", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover,
      "mouseover", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onMouseup => getStream(
      this, #onMouseup, "mouseup", (JsObject o) => new MouseEvent.created(o));
  Stream get onRadiusChanged =>
      getStream(this, #onRadiusChanged, "radius_changed");
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick,
      "rightclick", (JsObject o) => new MouseEvent.created(o));
}
/// codec for google_maps.src.CircleOptions
final __codec314 =
    new JsInterfaceCodec<CircleOptions>((o) => new CircleOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _CircleOptions
// **************************************************************************

@anonymous
class CircleOptions extends JsInterface implements _CircleOptions {
  CircleOptions.created(JsObject o) : super.created(o);
  CircleOptions() : this.created(new JsObject(context['Object']));

  void set center(LatLng _center) {
    asJsObject(this)['center'] = __codec261.encode(_center);
  }
  LatLng get center => __codec261.decode(asJsObject(this)['center']);
  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set editable(bool _editable) {
    asJsObject(this)['editable'] = _editable;
  }
  bool get editable => asJsObject(this)['editable'];
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec312.encode(_strokePosition);
  }
  StrokePosition get strokePosition =>
      __codec312.decode(asJsObject(this)['strokePosition']);
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _StrokePosition
// **************************************************************************

class StrokePosition extends JsEnum {
  static final values = <StrokePosition>[CENTER, INSIDE, OUTSIDE];
  static final CENTER = new StrokePosition._(
      'CENTER', context['google']['maps']['StrokePosition']['CENTER']);
  static final INSIDE = new StrokePosition._(
      'INSIDE', context['google']['maps']['StrokePosition']['INSIDE']);
  static final OUTSIDE = new StrokePosition._(
      'OUTSIDE', context['google']['maps']['StrokePosition']['OUTSIDE']);

  final String _name;
  StrokePosition._(this._name, o) : super.created(o);

  String toString() => 'StrokePosition.$_name';

  // dumb code to remove analyzer hint for unused _StrokePosition
  _StrokePosition _dumbMethod1() => _dumbMethod2();
  _StrokePosition _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GroundOverlay
// **************************************************************************

@JsName('google.maps.GroundOverlay')
class GroundOverlay extends MVCObject implements _GroundOverlay {
  GroundOverlay.created(JsObject o) : super.created(o);
  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts])
      : this.created(new JsObject(context['google']['maps']['GroundOverlay'], [
        url,
        __codec260.encode(bounds),
        __codec315.encode(opts)
      ]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec260.decode(asJsObject(this).callMethod('getBounds'));
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblclick => getStream(
      this, #onDblclick, "dblclick", (JsObject o) => new MouseEvent.created(o));
}
/// codec for google_maps.src.GroundOverlayOptions
final __codec315 = new JsInterfaceCodec<GroundOverlayOptions>(
    (o) => new GroundOverlayOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GroundOverlayOptions
// **************************************************************************

@anonymous
class GroundOverlayOptions extends JsInterface
    implements _GroundOverlayOptions {
  GroundOverlayOptions.created(JsObject o) : super.created(o);
  GroundOverlayOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _OverlayView
// **************************************************************************

@JsName('google.maps.OverlayView')
class OverlayView extends JsInterface implements _OverlayView {
  OverlayView.created(JsObject o) : super.created(o);
  OverlayView()
      : this.created(new JsObject(context['google']['maps']['OverlayView']));

  void draw() {
    asJsObject(this).callMethod('draw');
  }
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
      .decode(_getMap());
  _getMap() => asJsObject(this).callMethod('getMap');
  MapPanes get panes => _getPanes();
  MapPanes _getPanes() =>
      __codec316.decode(asJsObject(this).callMethod('getPanes'));
  MapCanvasProjection get projection => _getProjection();
  MapCanvasProjection _getProjection() =>
      __codec317.decode(asJsObject(this).callMethod('getProjection'));
  void onAdd() {
    asJsObject(this).callMethod('onAdd');
  }
  void onRemove() {
    asJsObject(this).callMethod('onRemove');
  }
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Map'])))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
        (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(context['google']['maps']['StreetViewPanorama']))))
          .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map) {
    asJsObject(this).callMethod('setMap', [map]);
  }
}
/// codec for google_maps.src.MapPanes
final __codec316 =
    new JsInterfaceCodec<MapPanes>((o) => new MapPanes.created(o));

/// codec for google_maps.src.MapCanvasProjection
final __codec317 = new JsInterfaceCodec<MapCanvasProjection>(
    (o) => new MapCanvasProjection.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapPanes
// **************************************************************************

@anonymous
class MapPanes extends JsInterface implements _MapPanes {
  MapPanes.created(JsObject o) : super.created(o);
  MapPanes() : this.created(new JsObject(context['Object']));

  void set floatPane(Node _floatPane) {
    asJsObject(this)['floatPane'] = _floatPane;
  }
  Node get floatPane => asJsObject(this)['floatPane'];
  void set mapPane(Node _mapPane) {
    asJsObject(this)['mapPane'] = _mapPane;
  }
  Node get mapPane => asJsObject(this)['mapPane'];
  void set markerLayer(Node _markerLayer) {
    asJsObject(this)['markerLayer'] = _markerLayer;
  }
  Node get markerLayer => asJsObject(this)['markerLayer'];
  void set overlayLayer(Node _overlayLayer) {
    asJsObject(this)['overlayLayer'] = _overlayLayer;
  }
  Node get overlayLayer => asJsObject(this)['overlayLayer'];
  void set overlayMouseTarget(Node _overlayMouseTarget) {
    asJsObject(this)['overlayMouseTarget'] = _overlayMouseTarget;
  }
  Node get overlayMouseTarget => asJsObject(this)['overlayMouseTarget'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapCanvasProjection
// **************************************************************************

@anonymous
class MapCanvasProjection extends MVCObject implements _MapCanvasProjection {
  MapCanvasProjection.created(JsObject o) : super.created(o);
  MapCanvasProjection() : this.created(new JsObject(context['Object']));

  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) => __codec261
      .decode(asJsObject(this).callMethod(
          'fromContainerPixelToLatLng', [__codec302.encode(pixel), nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) => __codec261.decode(
      asJsObject(this).callMethod(
          'fromDivPixelToLatLng', [__codec302.encode(pixel), nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) => __codec302.decode(
      asJsObject(this).callMethod(
          'fromLatLngToContainerPixel', [__codec261.encode(latLng)]));
  Point fromLatLngToDivPixel(LatLng latLng) => __codec302.decode(
      asJsObject(this).callMethod(
          'fromLatLngToDivPixel', [__codec261.encode(latLng)]));
  num get worldWidth => _getWorldWidth();
  num _getWorldWidth() => asJsObject(this).callMethod('getWorldWidth');
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Geocoder
// **************************************************************************

@JsName('google.maps.Geocoder')
class Geocoder extends JsInterface implements _Geocoder {
  Geocoder.created(JsObject o) : super.created(o);
  Geocoder()
      : this.created(new JsObject(context['google']['maps']['Geocoder']));

  void geocode(GeocoderRequest request,
      callback(List<GeocoderResult> p1, GeocoderStatus p2)) {
    asJsObject(this).callMethod(
        'geocode', [__codec318.encode(request), __codec322.encode(callback)]);
  }
}
/// codec for google_maps.src.GeocoderRequest
final __codec318 = new JsInterfaceCodec<GeocoderRequest>(
    (o) => new GeocoderRequest.created(o));

/// codec for google_maps.src.GeocoderResult
final __codec319 =
    new JsInterfaceCodec<GeocoderResult>((o) => new GeocoderResult.created(o));

/// codec for dart.core.List<GeocoderResult>
final __codec320 = new JsListCodec<GeocoderResult>(__codec319);

/// codec for google_maps.src.GeocoderStatus
final __codec321 = new BiMapCodec<GeocoderStatus, dynamic>(
    new Map<GeocoderStatus, dynamic>.fromIterable(GeocoderStatus.values,
        value: asJs));

/// codec for google_maps.src.(List<GeocoderResult>, GeocoderStatus) → dynamic
final __codec322 =
    new FunctionCodec /*<(List<GeocoderResult>, GeocoderStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec320.decode(p_p1);
  p_p2 = __codec321.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec320.encode(p_p1);
  p_p2 = __codec321.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GeocoderRequest
// **************************************************************************

@anonymous
class GeocoderRequest extends JsInterface implements _GeocoderRequest {
  GeocoderRequest.created(JsObject o) : super.created(o);
  GeocoderRequest() : this.created(new JsObject(context['Object']));

  void set address(String _address) {
    asJsObject(this)['address'] = _address;
  }
  String get address => asJsObject(this)['address'];
  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec260.encode(_bounds);
  }
  LatLngBounds get bounds => __codec260.decode(asJsObject(this)['bounds']);
  void set componentRestrictions(
      GeocoderComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec323.encode(_componentRestrictions);
  }
  GeocoderComponentRestrictions get componentRestrictions =>
      __codec323.decode(asJsObject(this)['componentRestrictions']);
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }
  String get placeId => asJsObject(this)['placeId'];
  void set region(String _region) {
    asJsObject(this)['region'] = _region;
  }
  String get region => asJsObject(this)['region'];
}
/// codec for google_maps.src.GeocoderComponentRestrictions
final __codec323 = new JsInterfaceCodec<GeocoderComponentRestrictions>(
    (o) => new GeocoderComponentRestrictions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GeocoderComponentRestrictions
// **************************************************************************

@anonymous
class GeocoderComponentRestrictions extends JsInterface
    implements _GeocoderComponentRestrictions {
  GeocoderComponentRestrictions.created(JsObject o) : super.created(o);
  GeocoderComponentRestrictions()
      : this.created(new JsObject(context['Object']));

  void set administrativeArea(String _administrativeArea) {
    asJsObject(this)['administrativeArea'] = _administrativeArea;
  }
  String get administrativeArea => asJsObject(this)['administrativeArea'];
  void set country(String _country) {
    asJsObject(this)['country'] = _country;
  }
  String get country => asJsObject(this)['country'];
  void set locality(String _locality) {
    asJsObject(this)['locality'] = _locality;
  }
  String get locality => asJsObject(this)['locality'];
  void set postalCode(String _postalCode) {
    asJsObject(this)['postalCode'] = _postalCode;
  }
  String get postalCode => asJsObject(this)['postalCode'];
  void set route(String _route) {
    asJsObject(this)['route'] = _route;
  }
  String get route => asJsObject(this)['route'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _GeocoderStatus
// **************************************************************************

class GeocoderStatus extends JsEnum {
  static final values = <GeocoderStatus>[
    ERROR,
    INVALID_REQUEST,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR,
    ZERO_RESULTS
  ];
  static final ERROR = new GeocoderStatus._(
      'ERROR', context['google']['maps']['GeocoderStatus']['ERROR']);
  static final INVALID_REQUEST = new GeocoderStatus._('INVALID_REQUEST',
      context['google']['maps']['GeocoderStatus']['INVALID_REQUEST']);
  static final OK = new GeocoderStatus._(
      'OK', context['google']['maps']['GeocoderStatus']['OK']);
  static final OVER_QUERY_LIMIT = new GeocoderStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['GeocoderStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new GeocoderStatus._('REQUEST_DENIED',
      context['google']['maps']['GeocoderStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new GeocoderStatus._('UNKNOWN_ERROR',
      context['google']['maps']['GeocoderStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = new GeocoderStatus._('ZERO_RESULTS',
      context['google']['maps']['GeocoderStatus']['ZERO_RESULTS']);

  final String _name;
  GeocoderStatus._(this._name, o) : super.created(o);

  String toString() => 'GeocoderStatus.$_name';

  // dumb code to remove analyzer hint for unused _GeocoderStatus
  _GeocoderStatus _dumbMethod1() => _dumbMethod2();
  _GeocoderStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GeocoderResult
// **************************************************************************

@anonymous
class GeocoderResult extends JsInterface implements _GeocoderResult {
  GeocoderResult.created(JsObject o) : super.created(o);
  GeocoderResult() : this.created(new JsObject(context['Object']));

  void set _address_components(
      List<GeocoderAddressComponent> __address_components) {
    asJsObject(this)['address_components'] =
        __codec325.encode(__address_components);
  }
  List<GeocoderAddressComponent> get _address_components =>
      __codec325.decode(asJsObject(this)['address_components']);
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  void set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }
  void set _formatted_address(String __formatted_address) {
    asJsObject(this)['formatted_address'] = __formatted_address;
  }
  String get _formatted_address => asJsObject(this)['formatted_address'];
  String get formattedAddress => _formatted_address;
  void set formattedAddress(String formattedAddress) {
    _formatted_address = formattedAddress;
  }
  void set geometry(GeocoderGeometry _geometry) {
    asJsObject(this)['geometry'] = __codec326.encode(_geometry);
  }
  GeocoderGeometry get geometry =>
      __codec326.decode(asJsObject(this)['geometry']);
  void set _partial_match(bool __partial_match) {
    asJsObject(this)['partial_match'] = __partial_match;
  }
  bool get _partial_match => asJsObject(this)['partial_match'];
  bool get partialMatch => _partial_match;
  void set partialMatch(bool partialMatch) {
    _partial_match = partialMatch;
  }
  void set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }
  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  void set _postcode_localities(List<String> __postcode_localities) {
    asJsObject(this)['postcode_localities'] =
        __codec282.encode(__postcode_localities);
  }
  List<String> get _postcode_localities =>
      __codec282.decode(asJsObject(this)['postcode_localities']);
  List<String> get postcodeLocalities => _postcode_localities;
  void set postcodeLocalities(List<String> postcodeLocalities) {
    _postcode_localities = postcodeLocalities;
  }
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec282.encode(_types);
  }
  List<String> get types => __codec282.decode(asJsObject(this)['types']);
}
/// codec for google_maps.src.GeocoderAddressComponent
final __codec324 = new JsInterfaceCodec<GeocoderAddressComponent>(
    (o) => new GeocoderAddressComponent.created(o));

/// codec for dart.core.List<GeocoderAddressComponent>
final __codec325 = new JsListCodec<GeocoderAddressComponent>(__codec324);

/// codec for google_maps.src.GeocoderGeometry
final __codec326 = new JsInterfaceCodec<GeocoderGeometry>(
    (o) => new GeocoderGeometry.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GeocoderAddressComponent
// **************************************************************************

@anonymous
class GeocoderAddressComponent extends JsInterface
    implements _GeocoderAddressComponent {
  GeocoderAddressComponent.created(JsObject o) : super.created(o);
  GeocoderAddressComponent() : this.created(new JsObject(context['Object']));

  void set _long_name(String __long_name) {
    asJsObject(this)['long_name'] = __long_name;
  }
  String get _long_name => asJsObject(this)['long_name'];
  String get longName => _long_name;
  void set longName(String longName) {
    _long_name = longName;
  }
  void set _short_name(String __short_name) {
    asJsObject(this)['short_name'] = __short_name;
  }
  String get _short_name => asJsObject(this)['short_name'];
  String get shortName => _short_name;
  void set shortName(String shortName) {
    _short_name = shortName;
  }
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec282.encode(_types);
  }
  List<String> get types => __codec282.decode(asJsObject(this)['types']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GeocoderGeometry
// **************************************************************************

@anonymous
class GeocoderGeometry extends JsInterface implements _GeocoderGeometry {
  GeocoderGeometry.created(JsObject o) : super.created(o);
  GeocoderGeometry() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec260.encode(_bounds);
  }
  LatLngBounds get bounds => __codec260.decode(asJsObject(this)['bounds']);
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set _location_type(GeocoderLocationType __location_type) {
    asJsObject(this)['location_type'] = __codec327.encode(__location_type);
  }
  GeocoderLocationType get _location_type =>
      __codec327.decode(asJsObject(this)['location_type']);
  GeocoderLocationType get locationType => _location_type;
  void set locationType(GeocoderLocationType locationType) {
    _location_type = locationType;
  }
  void set viewport(LatLngBounds _viewport) {
    asJsObject(this)['viewport'] = __codec260.encode(_viewport);
  }
  LatLngBounds get viewport => __codec260.decode(asJsObject(this)['viewport']);
}
/// codec for google_maps.src.GeocoderLocationType
final __codec327 = new BiMapCodec<GeocoderLocationType, dynamic>(
    new Map<GeocoderLocationType, dynamic>.fromIterable(
        GeocoderLocationType.values, value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _GeocoderLocationType
// **************************************************************************

class GeocoderLocationType extends JsEnum {
  static final values = <GeocoderLocationType>[
    APPROXIMATE,
    GEOMETRIC_CENTER,
    RANGE_INTERPOLATED,
    ROOFTOP
  ];
  static final APPROXIMATE = new GeocoderLocationType._('APPROXIMATE',
      context['google']['maps']['GeocoderLocationType']['APPROXIMATE']);
  static final GEOMETRIC_CENTER = new GeocoderLocationType._('GEOMETRIC_CENTER',
      context['google']['maps']['GeocoderLocationType']['GEOMETRIC_CENTER']);
  static final RANGE_INTERPOLATED = new GeocoderLocationType._(
      'RANGE_INTERPOLATED',
      context['google']['maps']['GeocoderLocationType']['RANGE_INTERPOLATED']);
  static final ROOFTOP = new GeocoderLocationType._(
      'ROOFTOP', context['google']['maps']['GeocoderLocationType']['ROOFTOP']);

  final String _name;
  GeocoderLocationType._(this._name, o) : super.created(o);

  String toString() => 'GeocoderLocationType.$_name';

  // dumb code to remove analyzer hint for unused _GeocoderLocationType
  _GeocoderLocationType _dumbMethod1() => _dumbMethod2();
  _GeocoderLocationType _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsRenderer
// **************************************************************************

@JsName('google.maps.DirectionsRenderer')
class DirectionsRenderer extends MVCObject implements _DirectionsRenderer {
  DirectionsRenderer.created(JsObject o) : super.created(o);
  DirectionsRenderer([DirectionsRendererOptions opts]) : this.created(
          new JsObject(context['google']['maps']['DirectionsRenderer'],
              [__codec328.encode(opts)]));

  DirectionsResult get directions => _getDirections();
  DirectionsResult _getDirections() =>
      __codec329.decode(asJsObject(this).callMethod('getDirections'));
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  Node get panel => _getPanel();
  Node _getPanel() => asJsObject(this).callMethod('getPanel');
  num get routeIndex => _getRouteIndex();
  num _getRouteIndex() => asJsObject(this).callMethod('getRouteIndex');
  void set directions(DirectionsResult directions) =>
      _setDirections(directions);
  void _setDirections(DirectionsResult directions) {
    asJsObject(this).callMethod(
        'setDirections', [__codec329.encode(directions)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set options(DirectionsRendererOptions options) => _setOptions(options);
  void _setOptions(DirectionsRendererOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec328.encode(options)]);
  }
  void set panel(Node panel) => _setPanel(panel);
  void _setPanel(Node panel) {
    asJsObject(this).callMethod('setPanel', [panel]);
  }
  void set routeIndex(num routeIndex) => _setRouteIndex(routeIndex);
  void _setRouteIndex(num routeIndex) {
    asJsObject(this).callMethod('setRouteIndex', [routeIndex]);
  }

  Stream get onDirectionsChanged =>
      getStream(this, #onDirectionsChanged, "directions_changed");
}
/// codec for google_maps.src.DirectionsRendererOptions
final __codec328 = new JsInterfaceCodec<DirectionsRendererOptions>(
    (o) => new DirectionsRendererOptions.created(o));

/// codec for google_maps.src.DirectionsResult
final __codec329 = new JsInterfaceCodec<DirectionsResult>(
    (o) => new DirectionsResult.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsRendererOptions
// **************************************************************************

@anonymous
class DirectionsRendererOptions extends JsInterface
    implements _DirectionsRendererOptions {
  DirectionsRendererOptions.created(JsObject o) : super.created(o);
  DirectionsRendererOptions() : this.created(new JsObject(context['Object']));

  void set directions(DirectionsResult _directions) {
    asJsObject(this)['directions'] = __codec329.encode(_directions);
  }
  DirectionsResult get directions =>
      __codec329.decode(asJsObject(this)['directions']);
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set hideRouteList(bool _hideRouteList) {
    asJsObject(this)['hideRouteList'] = _hideRouteList;
  }
  bool get hideRouteList => asJsObject(this)['hideRouteList'];
  void set infoWindow(InfoWindow _infoWindow) {
    asJsObject(this)['infoWindow'] = __codec330.encode(_infoWindow);
  }
  InfoWindow get infoWindow =>
      __codec330.decode(asJsObject(this)['infoWindow']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec297.encode(_markerOptions);
  }
  MarkerOptions get markerOptions =>
      __codec297.decode(asJsObject(this)['markerOptions']);
  void set panel(Node _panel) {
    asJsObject(this)['panel'] = _panel;
  }
  Node get panel => asJsObject(this)['panel'];
  void set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec307.encode(_polylineOptions);
  }
  PolylineOptions get polylineOptions =>
      __codec307.decode(asJsObject(this)['polylineOptions']);
  void set preserveViewport(bool _preserveViewport) {
    asJsObject(this)['preserveViewport'] = _preserveViewport;
  }
  bool get preserveViewport => asJsObject(this)['preserveViewport'];
  void set routeIndex(num _routeIndex) {
    asJsObject(this)['routeIndex'] = _routeIndex;
  }
  num get routeIndex => asJsObject(this)['routeIndex'];
  void set suppressBicyclingLayer(bool _suppressBicyclingLayer) {
    asJsObject(this)['suppressBicyclingLayer'] = _suppressBicyclingLayer;
  }
  bool get suppressBicyclingLayer => asJsObject(this)['suppressBicyclingLayer'];
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set suppressMarkers(bool _suppressMarkers) {
    asJsObject(this)['suppressMarkers'] = _suppressMarkers;
  }
  bool get suppressMarkers => asJsObject(this)['suppressMarkers'];
  void set suppressPolylines(bool _suppressPolylines) {
    asJsObject(this)['suppressPolylines'] = _suppressPolylines;
  }
  bool get suppressPolylines => asJsObject(this)['suppressPolylines'];
}
/// codec for google_maps.src.InfoWindow
final __codec330 =
    new JsInterfaceCodec<InfoWindow>((o) => new InfoWindow.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsService
// **************************************************************************

@JsName('google.maps.DirectionsService')
class DirectionsService extends JsInterface implements _DirectionsService {
  DirectionsService.created(JsObject o) : super.created(o);
  DirectionsService() : this.created(
          new JsObject(context['google']['maps']['DirectionsService']));

  void route(DirectionsRequest request,
      callback(DirectionsResult p1, DirectionsStatus p2)) {
    asJsObject(this).callMethod(
        'route', [__codec331.encode(request), __codec333.encode(callback)]);
  }
}
/// codec for google_maps.src.DirectionsRequest
final __codec331 = new JsInterfaceCodec<DirectionsRequest>(
    (o) => new DirectionsRequest.created(o));

/// codec for google_maps.src.DirectionsStatus
final __codec332 = new BiMapCodec<DirectionsStatus, dynamic>(
    new Map<DirectionsStatus, dynamic>.fromIterable(DirectionsStatus.values,
        value: asJs));

/// codec for google_maps.src.(DirectionsResult, DirectionsStatus) → dynamic
final __codec333 =
    new FunctionCodec /*<(DirectionsResult, DirectionsStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec329.decode(p_p1);
  p_p2 = __codec332.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec329.encode(p_p1);
  p_p2 = __codec332.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsRequest
// **************************************************************************

@anonymous
class DirectionsRequest extends JsInterface implements _DirectionsRequest {
  DirectionsRequest.created(JsObject o) : super.created(o);
  DirectionsRequest() : this.created(new JsObject(context['Object']));

  void set avoidFerries(bool _avoidFerries) {
    asJsObject(this)['avoidFerries'] = _avoidFerries;
  }
  bool get avoidFerries => asJsObject(this)['avoidFerries'];
  void set avoidHighways(bool _avoidHighways) {
    asJsObject(this)['avoidHighways'] = _avoidHighways;
  }
  bool get avoidHighways => asJsObject(this)['avoidHighways'];
  void set avoidTolls(bool _avoidTolls) {
    asJsObject(this)['avoidTolls'] = _avoidTolls;
  }
  bool get avoidTolls => asJsObject(this)['avoidTolls'];
  void set _destination(dynamic __destination) {
    asJsObject(this)['destination'] = __destination;
  }
  dynamic get _destination => asJsObject(this)['destination'];
  dynamic /*LatLng|Place|String*/ get destination => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
    ..add(new IdentityCodec<String>())).decode(_destination);
  void set destination(dynamic /*LatLng|Place|String*/ destination) {
    _destination = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
      ..add(new IdentityCodec<String>())).encode(destination);
  }
  void set drivingOptions(DrivingOptions _drivingOptions) {
    asJsObject(this)['drivingOptions'] = __codec334.encode(_drivingOptions);
  }
  DrivingOptions get drivingOptions =>
      __codec334.decode(asJsObject(this)['drivingOptions']);
  void set optimizeWaypoints(bool _optimizeWaypoints) {
    asJsObject(this)['optimizeWaypoints'] = _optimizeWaypoints;
  }
  bool get optimizeWaypoints => asJsObject(this)['optimizeWaypoints'];
  void set _origin(dynamic __origin) {
    asJsObject(this)['origin'] = __origin;
  }
  dynamic get _origin => asJsObject(this)['origin'];
  dynamic /*LatLng|Place|String*/ get origin => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
    ..add(new IdentityCodec<String>())).decode(_origin);
  void set origin(dynamic /*LatLng|Place|String*/ origin) {
    _origin = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
      ..add(new IdentityCodec<String>())).encode(origin);
  }
  void set provideRouteAlternatives(bool _provideRouteAlternatives) {
    asJsObject(this)['provideRouteAlternatives'] = _provideRouteAlternatives;
  }
  bool get provideRouteAlternatives =>
      asJsObject(this)['provideRouteAlternatives'];
  void set region(String _region) {
    asJsObject(this)['region'] = _region;
  }
  String get region => asJsObject(this)['region'];
  void set transitOptions(TransitOptions _transitOptions) {
    asJsObject(this)['transitOptions'] = __codec335.encode(_transitOptions);
  }
  TransitOptions get transitOptions =>
      __codec335.decode(asJsObject(this)['transitOptions']);
  void set travelMode(TravelMode _travelMode) {
    asJsObject(this)['travelMode'] = __codec336.encode(_travelMode);
  }
  TravelMode get travelMode =>
      __codec336.decode(asJsObject(this)['travelMode']);
  void set unitSystem(UnitSystem _unitSystem) {
    asJsObject(this)['unitSystem'] = __codec337.encode(_unitSystem);
  }
  UnitSystem get unitSystem =>
      __codec337.decode(asJsObject(this)['unitSystem']);
  void set waypoints(List<DirectionsWaypoint> _waypoints) {
    asJsObject(this)['waypoints'] = __codec339.encode(_waypoints);
  }
  List<DirectionsWaypoint> get waypoints =>
      __codec339.decode(asJsObject(this)['waypoints']);
}
/// codec for google_maps.src.DrivingOptions
final __codec334 =
    new JsInterfaceCodec<DrivingOptions>((o) => new DrivingOptions.created(o));

/// codec for google_maps.src.TransitOptions
final __codec335 =
    new JsInterfaceCodec<TransitOptions>((o) => new TransitOptions.created(o));

/// codec for google_maps.src.TravelMode
final __codec336 = new BiMapCodec<TravelMode, dynamic>(
    new Map<TravelMode, dynamic>.fromIterable(TravelMode.values, value: asJs));

/// codec for google_maps.src.UnitSystem
final __codec337 = new BiMapCodec<UnitSystem, dynamic>(
    new Map<UnitSystem, dynamic>.fromIterable(UnitSystem.values, value: asJs));

/// codec for google_maps.src.DirectionsWaypoint
final __codec338 = new JsInterfaceCodec<DirectionsWaypoint>(
    (o) => new DirectionsWaypoint.created(o));

/// codec for dart.core.List<DirectionsWaypoint>
final __codec339 = new JsListCodec<DirectionsWaypoint>(__codec338);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Place
// **************************************************************************

@anonymous
class Place extends JsInterface implements _Place {
  Place.created(JsObject o) : super.created(o);
  Place() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }
  String get placeId => asJsObject(this)['placeId'];
  void set query(String _query) {
    asJsObject(this)['query'] = _query;
  }
  String get query => asJsObject(this)['query'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _TravelMode
// **************************************************************************

class TravelMode extends JsEnum {
  static final values = <TravelMode>[BICYCLING, DRIVING, TRANSIT, WALKING];
  static final BICYCLING = new TravelMode._(
      'BICYCLING', context['google']['maps']['TravelMode']['BICYCLING']);
  static final DRIVING = new TravelMode._(
      'DRIVING', context['google']['maps']['TravelMode']['DRIVING']);
  static final TRANSIT = new TravelMode._(
      'TRANSIT', context['google']['maps']['TravelMode']['TRANSIT']);
  static final WALKING = new TravelMode._(
      'WALKING', context['google']['maps']['TravelMode']['WALKING']);

  final String _name;
  TravelMode._(this._name, o) : super.created(o);

  String toString() => 'TravelMode.$_name';

  // dumb code to remove analyzer hint for unused _TravelMode
  _TravelMode _dumbMethod1() => _dumbMethod2();
  _TravelMode _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _UnitSystem
// **************************************************************************

class UnitSystem extends JsEnum {
  static final values = <UnitSystem>[IMPERIAL, METRIC];
  static final IMPERIAL = new UnitSystem._(
      'IMPERIAL', context['google']['maps']['UnitSystem']['IMPERIAL']);
  static final METRIC = new UnitSystem._(
      'METRIC', context['google']['maps']['UnitSystem']['METRIC']);

  final String _name;
  UnitSystem._(this._name, o) : super.created(o);

  String toString() => 'UnitSystem.$_name';

  // dumb code to remove analyzer hint for unused _UnitSystem
  _UnitSystem _dumbMethod1() => _dumbMethod2();
  _UnitSystem _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitOptions
// **************************************************************************

@anonymous
class TransitOptions extends JsInterface implements _TransitOptions {
  TransitOptions.created(JsObject o) : super.created(o);
  TransitOptions() : this.created(new JsObject(context['Object']));

  void set arrivalTime(DateTime _arrivalTime) {
    asJsObject(this)['arrivalTime'] = _arrivalTime;
  }
  DateTime get arrivalTime => asJsObject(this)['arrivalTime'];
  void set departureTime(DateTime _departureTime) {
    asJsObject(this)['departureTime'] = _departureTime;
  }
  DateTime get departureTime => asJsObject(this)['departureTime'];
  void set modes(List<TransitMode> _modes) {
    asJsObject(this)['modes'] = __codec341.encode(_modes);
  }
  List<TransitMode> get modes => __codec341.decode(asJsObject(this)['modes']);
  void set routingPreference(TransitRoutePreference _routingPreference) {
    asJsObject(this)['routingPreference'] =
        __codec342.encode(_routingPreference);
  }
  TransitRoutePreference get routingPreference =>
      __codec342.decode(asJsObject(this)['routingPreference']);
}
/// codec for google_maps.src.TransitMode
final __codec340 = new BiMapCodec<TransitMode, dynamic>(
    new Map<TransitMode, dynamic>.fromIterable(TransitMode.values,
        value: asJs));

/// codec for dart.core.List<TransitMode>
final __codec341 = new JsListCodec<TransitMode>(__codec340);

/// codec for google_maps.src.TransitRoutePreference
final __codec342 = new BiMapCodec<TransitRoutePreference, dynamic>(
    new Map<TransitRoutePreference, dynamic>.fromIterable(
        TransitRoutePreference.values, value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _TransitMode
// **************************************************************************

class TransitMode extends JsEnum {
  static final values = <TransitMode>[BUS, RAIL, SUBWAY, TRAIN, TRAM];
  static final BUS =
      new TransitMode._('BUS', context['google']['maps']['TransitMode']['BUS']);
  static final RAIL = new TransitMode._(
      'RAIL', context['google']['maps']['TransitMode']['RAIL']);
  static final SUBWAY = new TransitMode._(
      'SUBWAY', context['google']['maps']['TransitMode']['SUBWAY']);
  static final TRAIN = new TransitMode._(
      'TRAIN', context['google']['maps']['TransitMode']['TRAIN']);
  static final TRAM = new TransitMode._(
      'TRAM', context['google']['maps']['TransitMode']['TRAM']);

  final String _name;
  TransitMode._(this._name, o) : super.created(o);

  String toString() => 'TransitMode.$_name';

  // dumb code to remove analyzer hint for unused _TransitMode
  _TransitMode _dumbMethod1() => _dumbMethod2();
  _TransitMode _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _TransitRoutePreference
// **************************************************************************

class TransitRoutePreference extends JsEnum {
  static final values = <TransitRoutePreference>[FEWER_TRANSFERS, LESS_WALKING];
  static final FEWER_TRANSFERS = new TransitRoutePreference._('FEWER_TRANSFERS',
      context['google']['maps']['TransitRoutePreference']['FEWER_TRANSFERS']);
  static final LESS_WALKING = new TransitRoutePreference._('LESS_WALKING',
      context['google']['maps']['TransitRoutePreference']['LESS_WALKING']);

  final String _name;
  TransitRoutePreference._(this._name, o) : super.created(o);

  String toString() => 'TransitRoutePreference.$_name';

  // dumb code to remove analyzer hint for unused _TransitRoutePreference
  _TransitRoutePreference _dumbMethod1() => _dumbMethod2();
  _TransitRoutePreference _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitFare
// **************************************************************************

@anonymous
class TransitFare extends JsInterface implements _TransitFare {
  TransitFare.created(JsObject o) : super.created(o);
  TransitFare() : this.created(new JsObject(context['Object']));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DrivingOptions
// **************************************************************************

@anonymous
class DrivingOptions extends JsInterface implements _DrivingOptions {
  DrivingOptions.created(JsObject o) : super.created(o);
  DrivingOptions() : this.created(new JsObject(context['Object']));

  void set departureTime(DateTime _departureTime) {
    asJsObject(this)['departureTime'] = _departureTime;
  }
  DateTime get departureTime => asJsObject(this)['departureTime'];
  void set trafficModel(TrafficModel _trafficModel) {
    asJsObject(this)['trafficModel'] = __codec343.encode(_trafficModel);
  }
  TrafficModel get trafficModel =>
      __codec343.decode(asJsObject(this)['trafficModel']);
}
/// codec for google_maps.src.TrafficModel
final __codec343 = new BiMapCodec<TrafficModel, dynamic>(
    new Map<TrafficModel, dynamic>.fromIterable(TrafficModel.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _TrafficModel
// **************************************************************************

class TrafficModel extends JsEnum {
  static final values = <TrafficModel>[BEST_GUESS, OPTIMISTIC, PESSIMISTIC];
  static final BEST_GUESS = new TrafficModel._(
      'BEST_GUESS', context['google']['maps']['TrafficModel']['BEST_GUESS']);
  static final OPTIMISTIC = new TrafficModel._(
      'OPTIMISTIC', context['google']['maps']['TrafficModel']['OPTIMISTIC']);
  static final PESSIMISTIC = new TrafficModel._(
      'PESSIMISTIC', context['google']['maps']['TrafficModel']['PESSIMISTIC']);

  final String _name;
  TrafficModel._(this._name, o) : super.created(o);

  String toString() => 'TrafficModel.$_name';

  // dumb code to remove analyzer hint for unused _TrafficModel
  _TrafficModel _dumbMethod1() => _dumbMethod2();
  _TrafficModel _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsWaypoint
// **************************************************************************

@anonymous
class DirectionsWaypoint extends JsInterface implements _DirectionsWaypoint {
  DirectionsWaypoint.created(JsObject o) : super.created(o);
  DirectionsWaypoint() : this.created(new JsObject(context['Object']));

  void set _location(dynamic __location) {
    asJsObject(this)['location'] = __location;
  }
  dynamic get _location => asJsObject(this)['location'];
  dynamic /*LatLng|Place|String*/ get location => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
    ..add(new IdentityCodec<String>())).decode(_location);
  void set location(dynamic /*LatLng|Place|String*/ location) {
    _location = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
      ..add(new IdentityCodec<String>())).encode(location);
  }
  void set stopover(bool _stopover) {
    asJsObject(this)['stopover'] = _stopover;
  }
  bool get stopover => asJsObject(this)['stopover'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _DirectionsStatus
// **************************************************************************

class DirectionsStatus extends JsEnum {
  static final values = <DirectionsStatus>[
    INVALID_REQUEST,
    MAX_WAYPOINTS_EXCEEDED,
    NOT_FOUND,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR,
    ZERO_RESULTS
  ];
  static final INVALID_REQUEST = new DirectionsStatus._('INVALID_REQUEST',
      context['google']['maps']['DirectionsStatus']['INVALID_REQUEST']);
  static final MAX_WAYPOINTS_EXCEEDED = new DirectionsStatus._(
      'MAX_WAYPOINTS_EXCEEDED',
      context['google']['maps']['DirectionsStatus']['MAX_WAYPOINTS_EXCEEDED']);
  static final NOT_FOUND = new DirectionsStatus._(
      'NOT_FOUND', context['google']['maps']['DirectionsStatus']['NOT_FOUND']);
  static final OK = new DirectionsStatus._(
      'OK', context['google']['maps']['DirectionsStatus']['OK']);
  static final OVER_QUERY_LIMIT = new DirectionsStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['DirectionsStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new DirectionsStatus._('REQUEST_DENIED',
      context['google']['maps']['DirectionsStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new DirectionsStatus._('UNKNOWN_ERROR',
      context['google']['maps']['DirectionsStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = new DirectionsStatus._('ZERO_RESULTS',
      context['google']['maps']['DirectionsStatus']['ZERO_RESULTS']);

  final String _name;
  DirectionsStatus._(this._name, o) : super.created(o);

  String toString() => 'DirectionsStatus.$_name';

  // dumb code to remove analyzer hint for unused _DirectionsStatus
  _DirectionsStatus _dumbMethod1() => _dumbMethod2();
  _DirectionsStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsResult
// **************************************************************************

@anonymous
class DirectionsResult extends JsInterface implements _DirectionsResult {
  DirectionsResult.created(JsObject o) : super.created(o);
  DirectionsResult() : this.created(new JsObject(context['Object']));

  void set _geocoded_waypoints(
      List<DirectionsGeocodedWaypoint> __geocoded_waypoints) {
    asJsObject(this)['geocoded_waypoints'] =
        __codec345.encode(__geocoded_waypoints);
  }
  List<DirectionsGeocodedWaypoint> get _geocoded_waypoints =>
      __codec345.decode(asJsObject(this)['geocoded_waypoints']);
  List<DirectionsGeocodedWaypoint> get geocodedWaypoints => _geocoded_waypoints;
  void set geocodedWaypoints(
      List<DirectionsGeocodedWaypoint> geocodedWaypoints) {
    _geocoded_waypoints = geocodedWaypoints;
  }
  void set routes(List<DirectionsRoute> _routes) {
    asJsObject(this)['routes'] = __codec347.encode(_routes);
  }
  List<DirectionsRoute> get routes =>
      __codec347.decode(asJsObject(this)['routes']);
}
/// codec for google_maps.src.DirectionsGeocodedWaypoint
final __codec344 = new JsInterfaceCodec<DirectionsGeocodedWaypoint>(
    (o) => new DirectionsGeocodedWaypoint.created(o));

/// codec for dart.core.List<DirectionsGeocodedWaypoint>
final __codec345 = new JsListCodec<DirectionsGeocodedWaypoint>(__codec344);

/// codec for google_maps.src.DirectionsRoute
final __codec346 = new JsInterfaceCodec<DirectionsRoute>(
    (o) => new DirectionsRoute.created(o));

/// codec for dart.core.List<DirectionsRoute>
final __codec347 = new JsListCodec<DirectionsRoute>(__codec346);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsGeocodedWaypoint
// **************************************************************************

@anonymous
class DirectionsGeocodedWaypoint extends JsInterface
    implements _DirectionsGeocodedWaypoint {
  DirectionsGeocodedWaypoint.created(JsObject o) : super.created(o);
  DirectionsGeocodedWaypoint() : this.created(new JsObject(context['Object']));

  void set _partial_match(bool __partial_match) {
    asJsObject(this)['partial_match'] = __partial_match;
  }
  bool get _partial_match => asJsObject(this)['partial_match'];
  bool get partialMatch => _partial_match;
  void set partialMatch(bool partialMatch) {
    _partial_match = partialMatch;
  }
  void set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }
  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec282.encode(_types);
  }
  List<String> get types => __codec282.decode(asJsObject(this)['types']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsRoute
// **************************************************************************

@anonymous
class DirectionsRoute extends JsInterface implements _DirectionsRoute {
  DirectionsRoute.created(JsObject o) : super.created(o);
  DirectionsRoute() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec260.encode(_bounds);
  }
  LatLngBounds get bounds => __codec260.decode(asJsObject(this)['bounds']);
  void set copyrights(String _copyrights) {
    asJsObject(this)['copyrights'] = _copyrights;
  }
  String get copyrights => asJsObject(this)['copyrights'];
  void set fare(TransitFare _fare) {
    asJsObject(this)['fare'] = __codec348.encode(_fare);
  }
  TransitFare get fare => __codec348.decode(asJsObject(this)['fare']);
  void set legs(List<DirectionsLeg> _legs) {
    asJsObject(this)['legs'] = __codec350.encode(_legs);
  }
  List<DirectionsLeg> get legs => __codec350.decode(asJsObject(this)['legs']);
  void set _overview_path(List<LatLng> __overview_path) {
    asJsObject(this)['overview_path'] = __codec290.encode(__overview_path);
  }
  List<LatLng> get _overview_path =>
      __codec290.decode(asJsObject(this)['overview_path']);
  List<LatLng> get overviewPath => _overview_path;
  void set overviewPath(List<LatLng> overviewPath) {
    _overview_path = overviewPath;
  }
  void set _overview_polyline(String __overview_polyline) {
    asJsObject(this)['overview_polyline'] = __overview_polyline;
  }
  String get _overview_polyline => asJsObject(this)['overview_polyline'];
  String get overviewPolyline => _overview_polyline;
  void set overviewPolyline(String overviewPolyline) {
    _overview_polyline = overviewPolyline;
  }
  void set warnings(List<String> _warnings) {
    asJsObject(this)['warnings'] = __codec282.encode(_warnings);
  }
  List<String> get warnings => __codec282.decode(asJsObject(this)['warnings']);
  void set _waypoint_order(List<num> __waypoint_order) {
    asJsObject(this)['waypoint_order'] = __codec304.encode(__waypoint_order);
  }
  List<num> get _waypoint_order =>
      __codec304.decode(asJsObject(this)['waypoint_order']);
  List<num> get waypointOrder => _waypoint_order;
  void set waypointOrder(List<num> waypointOrder) {
    _waypoint_order = waypointOrder;
  }
}
/// codec for google_maps.src.TransitFare
final __codec348 =
    new JsInterfaceCodec<TransitFare>((o) => new TransitFare.created(o));

/// codec for google_maps.src.DirectionsLeg
final __codec349 =
    new JsInterfaceCodec<DirectionsLeg>((o) => new DirectionsLeg.created(o));

/// codec for dart.core.List<DirectionsLeg>
final __codec350 = new JsListCodec<DirectionsLeg>(__codec349);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsLeg
// **************************************************************************

@anonymous
class DirectionsLeg extends JsInterface implements _DirectionsLeg {
  DirectionsLeg.created(JsObject o) : super.created(o);
  DirectionsLeg() : this.created(new JsObject(context['Object']));

  void set _arrival_time(Time __arrival_time) {
    asJsObject(this)['arrival_time'] = __codec351.encode(__arrival_time);
  }
  Time get _arrival_time => __codec351.decode(asJsObject(this)['arrival_time']);
  Time get arrivalTime => _arrival_time;
  void set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }
  void set _departure_time(Time __departure_time) {
    asJsObject(this)['departure_time'] = __codec351.encode(__departure_time);
  }
  Time get _departure_time =>
      __codec351.decode(asJsObject(this)['departure_time']);
  Time get departureTime => _departure_time;
  void set departureTime(Time departureTime) {
    _departure_time = departureTime;
  }
  void set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec352.encode(_distance);
  }
  Distance get distance => __codec352.decode(asJsObject(this)['distance']);
  void set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec353.encode(_duration);
  }
  GDuration get duration => __codec353.decode(asJsObject(this)['duration']);
  void set _duration_in_traffic(GDuration __duration_in_traffic) {
    asJsObject(this)['duration_in_traffic'] =
        __codec353.encode(__duration_in_traffic);
  }
  GDuration get _duration_in_traffic =>
      __codec353.decode(asJsObject(this)['duration_in_traffic']);
  GDuration get durationInTraffic => _duration_in_traffic;
  void set durationInTraffic(GDuration durationInTraffic) {
    _duration_in_traffic = durationInTraffic;
  }
  void set _end_address(String __end_address) {
    asJsObject(this)['end_address'] = __end_address;
  }
  String get _end_address => asJsObject(this)['end_address'];
  String get endAddress => _end_address;
  void set endAddress(String endAddress) {
    _end_address = endAddress;
  }
  void set _end_location(LatLng __end_location) {
    asJsObject(this)['end_location'] = __codec261.encode(__end_location);
  }
  LatLng get _end_location =>
      __codec261.decode(asJsObject(this)['end_location']);
  LatLng get endLocation => _end_location;
  void set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }
  void set _start_address(String __start_address) {
    asJsObject(this)['start_address'] = __start_address;
  }
  String get _start_address => asJsObject(this)['start_address'];
  String get startAddress => _start_address;
  void set startAddress(String startAddress) {
    _start_address = startAddress;
  }
  void set _start_location(LatLng __start_location) {
    asJsObject(this)['start_location'] = __codec261.encode(__start_location);
  }
  LatLng get _start_location =>
      __codec261.decode(asJsObject(this)['start_location']);
  LatLng get startLocation => _start_location;
  void set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }
  void set steps(List<DirectionsStep> _steps) {
    asJsObject(this)['steps'] = __codec355.encode(_steps);
  }
  List<DirectionsStep> get steps =>
      __codec355.decode(asJsObject(this)['steps']);
  void set _via_waypoints(List<LatLng> __via_waypoints) {
    asJsObject(this)['via_waypoints'] = __codec290.encode(__via_waypoints);
  }
  List<LatLng> get _via_waypoints =>
      __codec290.decode(asJsObject(this)['via_waypoints']);
  List<LatLng> get viaWaypoints => _via_waypoints;
  void set viaWaypoints(List<LatLng> viaWaypoints) {
    _via_waypoints = viaWaypoints;
  }
}
/// codec for google_maps.src.Time
final __codec351 = new JsInterfaceCodec<Time>((o) => new Time.created(o));

/// codec for google_maps.src.Distance
final __codec352 =
    new JsInterfaceCodec<Distance>((o) => new Distance.created(o));

/// codec for google_maps.src.GDuration
final __codec353 =
    new JsInterfaceCodec<GDuration>((o) => new GDuration.created(o));

/// codec for google_maps.src.DirectionsStep
final __codec354 =
    new JsInterfaceCodec<DirectionsStep>((o) => new DirectionsStep.created(o));

/// codec for dart.core.List<DirectionsStep>
final __codec355 = new JsListCodec<DirectionsStep>(__codec354);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsStep
// **************************************************************************

@anonymous
class DirectionsStep extends JsInterface implements _DirectionsStep {
  DirectionsStep.created(JsObject o) : super.created(o);
  DirectionsStep() : this.created(new JsObject(context['Object']));

  void set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec352.encode(_distance);
  }
  Distance get distance => __codec352.decode(asJsObject(this)['distance']);
  void set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec353.encode(_duration);
  }
  GDuration get duration => __codec353.decode(asJsObject(this)['duration']);
  void set _end_location(LatLng __end_location) {
    asJsObject(this)['end_location'] = __codec261.encode(__end_location);
  }
  LatLng get _end_location =>
      __codec261.decode(asJsObject(this)['end_location']);
  LatLng get endLocation => _end_location;
  void set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }
  void set instructions(String _instructions) {
    asJsObject(this)['instructions'] = _instructions;
  }
  String get instructions => asJsObject(this)['instructions'];
  void set path(List<LatLng> _path) {
    asJsObject(this)['path'] = __codec290.encode(_path);
  }
  List<LatLng> get path => __codec290.decode(asJsObject(this)['path']);
  void set _start_location(LatLng __start_location) {
    asJsObject(this)['start_location'] = __codec261.encode(__start_location);
  }
  LatLng get _start_location =>
      __codec261.decode(asJsObject(this)['start_location']);
  LatLng get startLocation => _start_location;
  void set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }
  void set steps(List<DirectionsStep> _steps) {
    asJsObject(this)['steps'] = __codec355.encode(_steps);
  }
  List<DirectionsStep> get steps =>
      __codec355.decode(asJsObject(this)['steps']);
  void set transit(TransitDetails _transit) {
    asJsObject(this)['transit'] = __codec356.encode(_transit);
  }
  TransitDetails get transit => __codec356.decode(asJsObject(this)['transit']);
  void set _travel_mode(TravelMode __travel_mode) {
    asJsObject(this)['travel_mode'] = __codec336.encode(__travel_mode);
  }
  TravelMode get _travel_mode =>
      __codec336.decode(asJsObject(this)['travel_mode']);
  TravelMode get travelMode => _travel_mode;
  void set travelMode(TravelMode travelMode) {
    _travel_mode = travelMode;
  }
}
/// codec for google_maps.src.TransitDetails
final __codec356 =
    new JsInterfaceCodec<TransitDetails>((o) => new TransitDetails.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Distance
// **************************************************************************

@anonymous
class Distance extends JsInterface implements _Distance {
  Distance.created(JsObject o) : super.created(o);
  Distance() : this.created(new JsObject(context['Object']));

  void set text(String _text) {
    asJsObject(this)['text'] = _text;
  }
  String get text => asJsObject(this)['text'];
  void set value(num _value) {
    asJsObject(this)['value'] = _value;
  }
  num get value => asJsObject(this)['value'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GDuration
// **************************************************************************

@anonymous
class GDuration extends JsInterface implements _GDuration {
  GDuration.created(JsObject o) : super.created(o);
  GDuration() : this.created(new JsObject(context['Object']));

  void set text(String _text) {
    asJsObject(this)['text'] = _text;
  }
  String get text => asJsObject(this)['text'];
  void set value(num _value) {
    asJsObject(this)['value'] = _value;
  }
  num get value => asJsObject(this)['value'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Time
// **************************************************************************

@anonymous
class Time extends JsInterface implements _Time {
  Time.created(JsObject o) : super.created(o);
  Time() : this.created(new JsObject(context['Object']));

  void set text(String _text) {
    asJsObject(this)['text'] = _text;
  }
  String get text => asJsObject(this)['text'];
  void set _time_zone(String __time_zone) {
    asJsObject(this)['time_zone'] = __time_zone;
  }
  String get _time_zone => asJsObject(this)['time_zone'];
  String get timeZone => _time_zone;
  void set timeZone(String timeZone) {
    _time_zone = timeZone;
  }
  void set value(DateTime _value) {
    asJsObject(this)['value'] = _value;
  }
  DateTime get value => asJsObject(this)['value'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitDetails
// **************************************************************************

@anonymous
class TransitDetails extends JsInterface implements _TransitDetails {
  TransitDetails.created(JsObject o) : super.created(o);
  TransitDetails() : this.created(new JsObject(context['Object']));

  void set _arrival_stop(TransitStop __arrival_stop) {
    asJsObject(this)['arrival_stop'] = __codec357.encode(__arrival_stop);
  }
  TransitStop get _arrival_stop =>
      __codec357.decode(asJsObject(this)['arrival_stop']);
  TransitStop get arrivalStop => _arrival_stop;
  void set arrivalStop(TransitStop arrivalStop) {
    _arrival_stop = arrivalStop;
  }
  void set _arrival_time(Time __arrival_time) {
    asJsObject(this)['arrival_time'] = __codec351.encode(__arrival_time);
  }
  Time get _arrival_time => __codec351.decode(asJsObject(this)['arrival_time']);
  Time get arrivalTime => _arrival_time;
  void set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }
  void set _departure_stop(TransitStop __departure_stop) {
    asJsObject(this)['departure_stop'] = __codec357.encode(__departure_stop);
  }
  TransitStop get _departure_stop =>
      __codec357.decode(asJsObject(this)['departure_stop']);
  TransitStop get departureStop => _departure_stop;
  void set departureStop(TransitStop departureStop) {
    _departure_stop = departureStop;
  }
  void set _departure_time(Time __departure_time) {
    asJsObject(this)['departure_time'] = __codec351.encode(__departure_time);
  }
  Time get _departure_time =>
      __codec351.decode(asJsObject(this)['departure_time']);
  Time get departureTime => _departure_time;
  void set departureTime(Time departureTime) {
    _departure_time = departureTime;
  }
  void set headsign(String _headsign) {
    asJsObject(this)['headsign'] = _headsign;
  }
  String get headsign => asJsObject(this)['headsign'];
  void set headway(num _headway) {
    asJsObject(this)['headway'] = _headway;
  }
  num get headway => asJsObject(this)['headway'];
  void set line(TransitLine _line) {
    asJsObject(this)['line'] = __codec358.encode(_line);
  }
  TransitLine get line => __codec358.decode(asJsObject(this)['line']);
  void set _num_stops(num __num_stops) {
    asJsObject(this)['num_stops'] = __num_stops;
  }
  num get _num_stops => asJsObject(this)['num_stops'];
  num get numStops => _num_stops;
  void set numStops(num numStops) {
    _num_stops = numStops;
  }
}
/// codec for google_maps.src.TransitStop
final __codec357 =
    new JsInterfaceCodec<TransitStop>((o) => new TransitStop.created(o));

/// codec for google_maps.src.TransitLine
final __codec358 =
    new JsInterfaceCodec<TransitLine>((o) => new TransitLine.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitStop
// **************************************************************************

@anonymous
class TransitStop extends JsInterface implements _TransitStop {
  TransitStop.created(JsObject o) : super.created(o);
  TransitStop() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitLine
// **************************************************************************

@anonymous
class TransitLine extends JsInterface implements _TransitLine {
  TransitLine.created(JsObject o) : super.created(o);
  TransitLine() : this.created(new JsObject(context['Object']));

  void set agencies(List<TransitAgency> _agencies) {
    asJsObject(this)['agencies'] = __codec360.encode(_agencies);
  }
  List<TransitAgency> get agencies =>
      __codec360.decode(asJsObject(this)['agencies']);
  void set color(String _color) {
    asJsObject(this)['color'] = _color;
  }
  String get color => asJsObject(this)['color'];
  void set icon(String _icon) {
    asJsObject(this)['icon'] = _icon;
  }
  String get icon => asJsObject(this)['icon'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set _short_name(String __short_name) {
    asJsObject(this)['short_name'] = __short_name;
  }
  String get _short_name => asJsObject(this)['short_name'];
  String get shortName => _short_name;
  void set shortName(String shortName) {
    _short_name = shortName;
  }
  void set _text_color(String __text_color) {
    asJsObject(this)['text_color'] = __text_color;
  }
  String get _text_color => asJsObject(this)['text_color'];
  String get textColor => _text_color;
  void set textColor(String textColor) {
    _text_color = textColor;
  }
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
  void set vehicle(TransitVehicle _vehicle) {
    asJsObject(this)['vehicle'] = __codec361.encode(_vehicle);
  }
  TransitVehicle get vehicle => __codec361.decode(asJsObject(this)['vehicle']);
}
/// codec for google_maps.src.TransitAgency
final __codec359 =
    new JsInterfaceCodec<TransitAgency>((o) => new TransitAgency.created(o));

/// codec for dart.core.List<TransitAgency>
final __codec360 = new JsListCodec<TransitAgency>(__codec359);

/// codec for google_maps.src.TransitVehicle
final __codec361 =
    new JsInterfaceCodec<TransitVehicle>((o) => new TransitVehicle.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitAgency
// **************************************************************************

@anonymous
class TransitAgency extends JsInterface implements _TransitAgency {
  TransitAgency.created(JsObject o) : super.created(o);
  TransitAgency() : this.created(new JsObject(context['Object']));

  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set phone(String _phone) {
    asJsObject(this)['phone'] = _phone;
  }
  String get phone => asJsObject(this)['phone'];
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitVehicle
// **************************************************************************

@anonymous
class TransitVehicle extends JsInterface implements _TransitVehicle {
  TransitVehicle.created(JsObject o) : super.created(o);
  TransitVehicle() : this.created(new JsObject(context['Object']));

  void set icon(String _icon) {
    asJsObject(this)['icon'] = _icon;
  }
  String get icon => asJsObject(this)['icon'];
  void set _local_icon(String __local_icon) {
    asJsObject(this)['local_icon'] = __local_icon;
  }
  String get _local_icon => asJsObject(this)['local_icon'];
  String get localIcon => _local_icon;
  void set localIcon(String localIcon) {
    _local_icon = localIcon;
  }
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set type(VehicleType _type) {
    asJsObject(this)['type'] = __codec362.encode(_type);
  }
  VehicleType get type => __codec362.decode(asJsObject(this)['type']);
}
/// codec for google_maps.src.VehicleType
final __codec362 = new BiMapCodec<VehicleType, dynamic>(
    new Map<VehicleType, dynamic>.fromIterable(VehicleType.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ElevationService
// **************************************************************************

@JsName('google.maps.ElevationService')
class ElevationService extends JsInterface implements _ElevationService {
  ElevationService.created(JsObject o) : super.created(o);
  ElevationService() : this.created(
          new JsObject(context['google']['maps']['ElevationService']));

  void getElevationAlongPath(PathElevationRequest request,
      callback(List<ElevationResult> p1, ElevationStatus p2)) {
    asJsObject(this).callMethod('getElevationAlongPath', [
      __codec363.encode(request),
      __codec367.encode(callback)
    ]);
  }
  void getElevationForLocations(LocationElevationRequest request,
      callback(List<ElevationResult> p1, ElevationStatus p2)) {
    asJsObject(this).callMethod('getElevationForLocations', [
      __codec368.encode(request),
      __codec367.encode(callback)
    ]);
  }
}
/// codec for google_maps.src.PathElevationRequest
final __codec363 = new JsInterfaceCodec<PathElevationRequest>(
    (o) => new PathElevationRequest.created(o));

/// codec for google_maps.src.ElevationResult
final __codec364 = new JsInterfaceCodec<ElevationResult>(
    (o) => new ElevationResult.created(o));

/// codec for dart.core.List<ElevationResult>
final __codec365 = new JsListCodec<ElevationResult>(__codec364);

/// codec for google_maps.src.ElevationStatus
final __codec366 = new BiMapCodec<ElevationStatus, dynamic>(
    new Map<ElevationStatus, dynamic>.fromIterable(ElevationStatus.values,
        value: asJs));

/// codec for google_maps.src.(List<ElevationResult>, ElevationStatus) → dynamic
final __codec367 =
    new FunctionCodec /*<(List<ElevationResult>, ElevationStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec365.decode(p_p1);
  p_p2 = __codec366.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec365.encode(p_p1);
  p_p2 = __codec366.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

/// codec for google_maps.src.LocationElevationRequest
final __codec368 = new JsInterfaceCodec<LocationElevationRequest>(
    (o) => new LocationElevationRequest.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LocationElevationRequest
// **************************************************************************

@anonymous
class LocationElevationRequest extends JsInterface
    implements _LocationElevationRequest {
  LocationElevationRequest.created(JsObject o) : super.created(o);
  LocationElevationRequest() : this.created(new JsObject(context['Object']));

  void set locations(List<LatLng> _locations) {
    asJsObject(this)['locations'] = __codec290.encode(_locations);
  }
  List<LatLng> get locations =>
      __codec290.decode(asJsObject(this)['locations']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PathElevationRequest
// **************************************************************************

@anonymous
class PathElevationRequest extends JsInterface
    implements _PathElevationRequest {
  PathElevationRequest.created(JsObject o) : super.created(o);
  PathElevationRequest() : this.created(new JsObject(context['Object']));

  void set path(List<LatLng> _path) {
    asJsObject(this)['path'] = __codec290.encode(_path);
  }
  List<LatLng> get path => __codec290.decode(asJsObject(this)['path']);
  void set samples(num _samples) {
    asJsObject(this)['samples'] = _samples;
  }
  num get samples => asJsObject(this)['samples'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ElevationResult
// **************************************************************************

@anonymous
class ElevationResult extends JsInterface implements _ElevationResult {
  ElevationResult.created(JsObject o) : super.created(o);
  ElevationResult() : this.created(new JsObject(context['Object']));

  void set elevation(num _elevation) {
    asJsObject(this)['elevation'] = _elevation;
  }
  num get elevation => asJsObject(this)['elevation'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set resolution(num _resolution) {
    asJsObject(this)['resolution'] = _resolution;
  }
  num get resolution => asJsObject(this)['resolution'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _ElevationStatus
// **************************************************************************

class ElevationStatus extends JsEnum {
  static final values = <ElevationStatus>[
    INVALID_REQUEST,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR
  ];
  static final INVALID_REQUEST = new ElevationStatus._('INVALID_REQUEST',
      context['google']['maps']['ElevationStatus']['INVALID_REQUEST']);
  static final OK = new ElevationStatus._(
      'OK', context['google']['maps']['ElevationStatus']['OK']);
  static final OVER_QUERY_LIMIT = new ElevationStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['ElevationStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new ElevationStatus._('REQUEST_DENIED',
      context['google']['maps']['ElevationStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new ElevationStatus._('UNKNOWN_ERROR',
      context['google']['maps']['ElevationStatus']['UNKNOWN_ERROR']);

  final String _name;
  ElevationStatus._(this._name, o) : super.created(o);

  String toString() => 'ElevationStatus.$_name';

  // dumb code to remove analyzer hint for unused _ElevationStatus
  _ElevationStatus _dumbMethod1() => _dumbMethod2();
  _ElevationStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MaxZoomService
// **************************************************************************

@JsName('google.maps.MaxZoomService')
class MaxZoomService extends JsInterface implements _MaxZoomService {
  MaxZoomService.created(JsObject o) : super.created(o);
  MaxZoomService()
      : this.created(new JsObject(context['google']['maps']['MaxZoomService']));

  void getMaxZoomAtLatLng(LatLng latlng, callback(MaxZoomResult p1)) {
    asJsObject(this).callMethod('getMaxZoomAtLatLng', [
      __codec261.encode(latlng),
      __codec370.encode(callback)
    ]);
  }
}
/// codec for google_maps.src.MaxZoomResult
final __codec369 =
    new JsInterfaceCodec<MaxZoomResult>((o) => new MaxZoomResult.created(o));

/// codec for google_maps.src.(MaxZoomResult) → dynamic
final __codec370 = new FunctionCodec /*<(MaxZoomResult) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec369.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec369.encode(p_p1);
  return f.apply([p_p1]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MaxZoomResult
// **************************************************************************

@anonymous
class MaxZoomResult extends JsInterface implements _MaxZoomResult {
  MaxZoomResult.created(JsObject o) : super.created(o);
  MaxZoomResult() : this.created(new JsObject(context['Object']));

  void set status(MaxZoomStatus _status) {
    asJsObject(this)['status'] = __codec371.encode(_status);
  }
  MaxZoomStatus get status => __codec371.decode(asJsObject(this)['status']);
  void set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }
  num get zoom => asJsObject(this)['zoom'];
}
/// codec for google_maps.src.MaxZoomStatus
final __codec371 = new BiMapCodec<MaxZoomStatus, dynamic>(
    new Map<MaxZoomStatus, dynamic>.fromIterable(MaxZoomStatus.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _MaxZoomStatus
// **************************************************************************

class MaxZoomStatus extends JsEnum {
  static final values = <MaxZoomStatus>[ERROR, OK];
  static final ERROR = new MaxZoomStatus._(
      'ERROR', context['google']['maps']['MaxZoomStatus']['ERROR']);
  static final OK = new MaxZoomStatus._(
      'OK', context['google']['maps']['MaxZoomStatus']['OK']);

  final String _name;
  MaxZoomStatus._(this._name, o) : super.created(o);

  String toString() => 'MaxZoomStatus.$_name';

  // dumb code to remove analyzer hint for unused _MaxZoomStatus
  _MaxZoomStatus _dumbMethod1() => _dumbMethod2();
  _MaxZoomStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DistanceMatrixService
// **************************************************************************

@JsName('google.maps.DistanceMatrixService')
class DistanceMatrixService extends JsInterface
    implements _DistanceMatrixService {
  DistanceMatrixService.created(JsObject o) : super.created(o);
  DistanceMatrixService() : this.created(
          new JsObject(context['google']['maps']['DistanceMatrixService']));

  void getDistanceMatrix(DistanceMatrixRequest request,
      callback(DistanceMatrixResponse p1, DistanceMatrixStatus p2)) {
    asJsObject(this).callMethod('getDistanceMatrix', [
      __codec372.encode(request),
      __codec375.encode(callback)
    ]);
  }
}
/// codec for google_maps.src.DistanceMatrixRequest
final __codec372 = new JsInterfaceCodec<DistanceMatrixRequest>(
    (o) => new DistanceMatrixRequest.created(o));

/// codec for google_maps.src.DistanceMatrixResponse
final __codec373 = new JsInterfaceCodec<DistanceMatrixResponse>(
    (o) => new DistanceMatrixResponse.created(o));

/// codec for google_maps.src.DistanceMatrixStatus
final __codec374 = new BiMapCodec<DistanceMatrixStatus, dynamic>(
    new Map<DistanceMatrixStatus, dynamic>.fromIterable(
        DistanceMatrixStatus.values, value: asJs));

/// codec for google_maps.src.(DistanceMatrixResponse, DistanceMatrixStatus) → dynamic
final __codec375 =
    new FunctionCodec /*<(DistanceMatrixResponse, DistanceMatrixStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec373.decode(p_p1);
  p_p2 = __codec374.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec373.encode(p_p1);
  p_p2 = __codec374.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DistanceMatrixRequest
// **************************************************************************

@anonymous
class DistanceMatrixRequest extends JsInterface
    implements _DistanceMatrixRequest {
  DistanceMatrixRequest.created(JsObject o) : super.created(o);
  DistanceMatrixRequest() : this.created(new JsObject(context['Object']));

  void set avoidFerries(bool _avoidFerries) {
    asJsObject(this)['avoidFerries'] = _avoidFerries;
  }
  bool get avoidFerries => asJsObject(this)['avoidFerries'];
  void set avoidHighways(bool _avoidHighways) {
    asJsObject(this)['avoidHighways'] = _avoidHighways;
  }
  bool get avoidHighways => asJsObject(this)['avoidHighways'];
  void set avoidTolls(bool _avoidTolls) {
    asJsObject(this)['avoidTolls'] = _avoidTolls;
  }
  bool get avoidTolls => asJsObject(this)['avoidTolls'];
  void set _destinations(dynamic __destinations) {
    asJsObject(this)['destinations'] = __destinations;
  }
  dynamic get _destinations => asJsObject(this)['destinations'];
  List<dynamic /*LatLng|String*/ > get destinations =>
      (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new IdentityCodec<String>()))).decode(_destinations);
  void set destinations(List<dynamic /*LatLng|String*/ > destinations) {
    _destinations = (new JsListCodec<dynamic /*LatLng|String*/ >(
        new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new IdentityCodec<String>()))).encode(destinations);
  }

  void set drivingOptions(DrivingOptions _drivingOptions) {
    asJsObject(this)['drivingOptions'] = __codec334.encode(_drivingOptions);
  }
  DrivingOptions get drivingOptions =>
      __codec334.decode(asJsObject(this)['drivingOptions']);
  void set _origins(dynamic __origins) {
    asJsObject(this)['origins'] = __origins;
  }
  dynamic get _origins => asJsObject(this)['origins'];
  List<dynamic /*LatLng|String*/ > get origins =>
      (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new IdentityCodec<String>()))).decode(_origins);
  void set origins(List<dynamic /*LatLng|String*/ > origins) {
    _origins = (new JsListCodec<dynamic /*LatLng|String*/ >(new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new IdentityCodec<String>()))).encode(origins);
  }

  void set region(String _region) {
    asJsObject(this)['region'] = _region;
  }
  String get region => asJsObject(this)['region'];
  void set transitOptions(TransitOptions _transitOptions) {
    asJsObject(this)['transitOptions'] = __codec335.encode(_transitOptions);
  }
  TransitOptions get transitOptions =>
      __codec335.decode(asJsObject(this)['transitOptions']);
  void set travelMode(TravelMode _travelMode) {
    asJsObject(this)['travelMode'] = __codec336.encode(_travelMode);
  }
  TravelMode get travelMode =>
      __codec336.decode(asJsObject(this)['travelMode']);
  void set unitSystem(UnitSystem _unitSystem) {
    asJsObject(this)['unitSystem'] = __codec337.encode(_unitSystem);
  }
  UnitSystem get unitSystem =>
      __codec337.decode(asJsObject(this)['unitSystem']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DistanceMatrixResponse
// **************************************************************************

@anonymous
class DistanceMatrixResponse extends JsInterface
    implements _DistanceMatrixResponse {
  DistanceMatrixResponse.created(JsObject o) : super.created(o);
  DistanceMatrixResponse() : this.created(new JsObject(context['Object']));

  void set destinationAddresses(List<String> _destinationAddresses) {
    asJsObject(this)['destinationAddresses'] =
        __codec282.encode(_destinationAddresses);
  }
  List<String> get destinationAddresses =>
      __codec282.decode(asJsObject(this)['destinationAddresses']);
  void set originAddresses(List<String> _originAddresses) {
    asJsObject(this)['originAddresses'] = __codec282.encode(_originAddresses);
  }
  List<String> get originAddresses =>
      __codec282.decode(asJsObject(this)['originAddresses']);
  void set rows(List<DistanceMatrixResponseRow> _rows) {
    asJsObject(this)['rows'] = __codec377.encode(_rows);
  }
  List<DistanceMatrixResponseRow> get rows =>
      __codec377.decode(asJsObject(this)['rows']);
}
/// codec for google_maps.src.DistanceMatrixResponseRow
final __codec376 = new JsInterfaceCodec<DistanceMatrixResponseRow>(
    (o) => new DistanceMatrixResponseRow.created(o));

/// codec for dart.core.List<DistanceMatrixResponseRow>
final __codec377 = new JsListCodec<DistanceMatrixResponseRow>(__codec376);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DistanceMatrixResponseRow
// **************************************************************************

@anonymous
class DistanceMatrixResponseRow extends JsInterface
    implements _DistanceMatrixResponseRow {
  DistanceMatrixResponseRow.created(JsObject o) : super.created(o);
  DistanceMatrixResponseRow() : this.created(new JsObject(context['Object']));

  void set elements(List<DistanceMatrixResponseElement> _elements) {
    asJsObject(this)['elements'] = __codec379.encode(_elements);
  }
  List<DistanceMatrixResponseElement> get elements =>
      __codec379.decode(asJsObject(this)['elements']);
}
/// codec for google_maps.src.DistanceMatrixResponseElement
final __codec378 = new JsInterfaceCodec<DistanceMatrixResponseElement>(
    (o) => new DistanceMatrixResponseElement.created(o));

/// codec for dart.core.List<DistanceMatrixResponseElement>
final __codec379 = new JsListCodec<DistanceMatrixResponseElement>(__codec378);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DistanceMatrixResponseElement
// **************************************************************************

@anonymous
class DistanceMatrixResponseElement extends JsInterface
    implements _DistanceMatrixResponseElement {
  DistanceMatrixResponseElement.created(JsObject o) : super.created(o);
  DistanceMatrixResponseElement()
      : this.created(new JsObject(context['Object']));

  void set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec352.encode(_distance);
  }
  Distance get distance => __codec352.decode(asJsObject(this)['distance']);
  void set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec353.encode(_duration);
  }
  GDuration get duration => __codec353.decode(asJsObject(this)['duration']);
  void set _duration_in_traffic(GDuration __duration_in_traffic) {
    asJsObject(this)['duration_in_traffic'] =
        __codec353.encode(__duration_in_traffic);
  }
  GDuration get _duration_in_traffic =>
      __codec353.decode(asJsObject(this)['duration_in_traffic']);
  GDuration get durationInTraffic => _duration_in_traffic;
  void set durationInTraffic(GDuration durationInTraffic) {
    _duration_in_traffic = durationInTraffic;
  }
  void set fare(TransitFare _fare) {
    asJsObject(this)['fare'] = __codec348.encode(_fare);
  }
  TransitFare get fare => __codec348.decode(asJsObject(this)['fare']);
  void set status(DistanceMatrixElementStatus _status) {
    asJsObject(this)['status'] = __codec380.encode(_status);
  }
  DistanceMatrixElementStatus get status =>
      __codec380.decode(asJsObject(this)['status']);
}
/// codec for google_maps.src.DistanceMatrixElementStatus
final __codec380 = new BiMapCodec<DistanceMatrixElementStatus, dynamic>(
    new Map<DistanceMatrixElementStatus, dynamic>.fromIterable(
        DistanceMatrixElementStatus.values, value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _DistanceMatrixStatus
// **************************************************************************

class DistanceMatrixStatus extends JsEnum {
  static final values = <DistanceMatrixStatus>[
    INVALID_REQUEST,
    MAX_DIMENSIONS_EXCEEDED,
    MAX_ELEMENTS_EXCEEDED,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR
  ];
  static final INVALID_REQUEST = new DistanceMatrixStatus._('INVALID_REQUEST',
      context['google']['maps']['DistanceMatrixStatus']['INVALID_REQUEST']);
  static final MAX_DIMENSIONS_EXCEEDED = new DistanceMatrixStatus._(
      'MAX_DIMENSIONS_EXCEEDED', context['google']['maps'][
      'DistanceMatrixStatus']['MAX_DIMENSIONS_EXCEEDED']);
  static final MAX_ELEMENTS_EXCEEDED = new DistanceMatrixStatus._(
      'MAX_ELEMENTS_EXCEEDED', context['google']['maps'][
      'DistanceMatrixStatus']['MAX_ELEMENTS_EXCEEDED']);
  static final OK = new DistanceMatrixStatus._(
      'OK', context['google']['maps']['DistanceMatrixStatus']['OK']);
  static final OVER_QUERY_LIMIT = new DistanceMatrixStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['DistanceMatrixStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new DistanceMatrixStatus._('REQUEST_DENIED',
      context['google']['maps']['DistanceMatrixStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new DistanceMatrixStatus._('UNKNOWN_ERROR',
      context['google']['maps']['DistanceMatrixStatus']['UNKNOWN_ERROR']);

  final String _name;
  DistanceMatrixStatus._(this._name, o) : super.created(o);

  String toString() => 'DistanceMatrixStatus.$_name';

  // dumb code to remove analyzer hint for unused _DistanceMatrixStatus
  _DistanceMatrixStatus _dumbMethod1() => _dumbMethod2();
  _DistanceMatrixStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _DistanceMatrixElementStatus
// **************************************************************************

class DistanceMatrixElementStatus extends JsEnum {
  static final values = <DistanceMatrixElementStatus>[
    NOT_FOUND,
    OK,
    ZERO_RESULTS
  ];
  static final NOT_FOUND = new DistanceMatrixElementStatus._('NOT_FOUND',
      context['google']['maps']['DistanceMatrixElementStatus']['NOT_FOUND']);
  static final OK = new DistanceMatrixElementStatus._(
      'OK', context['google']['maps']['DistanceMatrixElementStatus']['OK']);
  static final ZERO_RESULTS = new DistanceMatrixElementStatus._('ZERO_RESULTS',
      context['google']['maps']['DistanceMatrixElementStatus']['ZERO_RESULTS']);

  final String _name;
  DistanceMatrixElementStatus._(this._name, o) : super.created(o);

  String toString() => 'DistanceMatrixElementStatus.$_name';

  // dumb code to remove analyzer hint for unused _DistanceMatrixElementStatus
  _DistanceMatrixElementStatus _dumbMethod1() => _dumbMethod2();
  _DistanceMatrixElementStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Attribution
// **************************************************************************

@anonymous
class Attribution extends JsInterface implements _Attribution {
  Attribution.created(JsObject o) : super.created(o);
  Attribution() : this.created(new JsObject(context['Object']));

  void set iosDeepLinkId(String _iosDeepLinkId) {
    asJsObject(this)['iosDeepLinkId'] = _iosDeepLinkId;
  }
  String get iosDeepLinkId => asJsObject(this)['iosDeepLinkId'];
  void set source(String _source) {
    asJsObject(this)['source'] = _source;
  }
  String get source => asJsObject(this)['source'];
  void set webUrl(String _webUrl) {
    asJsObject(this)['webUrl'] = _webUrl;
  }
  String get webUrl => asJsObject(this)['webUrl'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MarkerPlace
// **************************************************************************

@anonymous
class MarkerPlace extends JsInterface implements _MarkerPlace {
  MarkerPlace.created(JsObject o) : super.created(o);
  MarkerPlace() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }
  String get placeId => asJsObject(this)['placeId'];
  void set query(String _query) {
    asJsObject(this)['query'] = _query;
  }
  String get query => asJsObject(this)['query'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _SaveWidget
// **************************************************************************

@JsName('google.maps.SaveWidget')
class SaveWidget extends MVCObject implements _SaveWidget {
  SaveWidget.created(JsObject o) : super.created(o);
  SaveWidget(Node container, [SaveWidgetOptions opts]) : this.created(
          new JsObject(context['google']['maps']['SaveWidget'], [
        container,
        __codec381.encode(opts)
      ]));

  Attribution get attribution => _getAttribution();
  Attribution _getAttribution() =>
      __codec299.decode(asJsObject(this).callMethod('getAttribution'));
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace() =>
      __codec301.decode(asJsObject(this).callMethod('getPlace'));
  void set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution) {
    asJsObject(this).callMethod(
        'setAttribution', [__codec299.encode(attribution)]);
  }
  void set options(SaveWidgetOptions opts) => _setOptions(opts);
  void _setOptions(SaveWidgetOptions opts) {
    asJsObject(this).callMethod('setOptions', [__codec381.encode(opts)]);
  }
  void set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place) {
    asJsObject(this).callMethod('setPlace', [__codec301.encode(place)]);
  }
}
/// codec for google_maps.src.SaveWidgetOptions
final __codec381 = new JsInterfaceCodec<SaveWidgetOptions>(
    (o) => new SaveWidgetOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _SaveWidgetOptions
// **************************************************************************

@anonymous
class SaveWidgetOptions extends JsInterface implements _SaveWidgetOptions {
  SaveWidgetOptions.created(JsObject o) : super.created(o);
  SaveWidgetOptions() : this.created(new JsObject(context['Object']));

  void set attribution(Attribution _attribution) {
    asJsObject(this)['attribution'] = __codec299.encode(_attribution);
  }
  Attribution get attribution =>
      __codec299.decode(asJsObject(this)['attribution']);
  void set place(MarkerPlace _place) {
    asJsObject(this)['place'] = __codec301.encode(_place);
  }
  MarkerPlace get place => __codec301.decode(asJsObject(this)['place']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapType
// **************************************************************************

@anonymous
class MapType extends JsInterface implements _MapType {
  MapType.created(JsObject o) : super.created(o);
  MapType() : this.created(new JsObject(context['Object']));

  Node getTile(Point tileCoord, num zoom, Document ownerDocument) =>
      asJsObject(this).callMethod(
          'getTile', [__codec302.encode(tileCoord), zoom, ownerDocument]);
  void releaseTile(Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile]);
  }

  void set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }
  String get alt => asJsObject(this)['alt'];
  void set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }
  num get maxZoom => asJsObject(this)['maxZoom'];
  void set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }
  num get minZoom => asJsObject(this)['minZoom'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set projection(Projection _projection) {
    asJsObject(this)['projection'] = __codec262.encode(_projection);
  }
  Projection get projection =>
      __codec262.decode(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec303.encode(_tileSize);
  }
  Size get tileSize => __codec303.decode(asJsObject(this)['tileSize']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapTypeRegistry
// **************************************************************************

@JsName('google.maps.MapTypeRegistry')
class MapTypeRegistry extends MVCObject implements _MapTypeRegistry {
  MapTypeRegistry.created(JsObject o) : super.created(o);
  MapTypeRegistry() : this.created(
          new JsObject(context['google']['maps']['MapTypeRegistry']));

  void set(String id, MapType mapType) {
    asJsObject(this).callMethod('set', [id, __codec382.encode(mapType)]);
  }
}
/// codec for google_maps.src.MapType
final __codec382 = new JsInterfaceCodec<MapType>((o) => new MapType.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Projection
// **************************************************************************

@anonymous
class Projection extends JsInterface implements _Projection {
  Projection.created(JsObject o) : super.created(o);
  Projection() : this.created(new JsObject(context['Object']));

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => __codec302.decode(
      asJsObject(this).callMethod('fromLatLngToPoint', [
    __codec261.encode(latLng),
    __codec302.encode(point)
  ]));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => __codec261.decode(
      asJsObject(this).callMethod(
          'fromPointToLatLng', [__codec302.encode(pixel), nowrap]));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ImageMapType
// **************************************************************************

@JsName('google.maps.ImageMapType')
class ImageMapType extends MVCObject implements MapType, _ImageMapType {
  ImageMapType.created(JsObject o) : super.created(o);
  ImageMapType(ImageMapTypeOptions opts) : this.created(new JsObject(
          context['google']['maps']['ImageMapType'],
          [__codec383.encode(opts)]));

  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  Node getTile(Point tileCoord, num zoom, Document ownerDocument) =>
      asJsObject(this).callMethod(
          'getTile', [__codec302.encode(tileCoord), zoom, ownerDocument]);
  void releaseTile(Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile]);
  }
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  void set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }
  String get alt => asJsObject(this)['alt'];
  void set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }
  num get maxZoom => asJsObject(this)['maxZoom'];
  void set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }
  num get minZoom => asJsObject(this)['minZoom'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set projection(Projection _projection) {
    asJsObject(this)['projection'] = __codec262.encode(_projection);
  }
  Projection get projection =>
      __codec262.decode(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec303.encode(_tileSize);
  }
  Size get tileSize => __codec303.decode(asJsObject(this)['tileSize']);

  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
}
/// codec for google_maps.src.ImageMapTypeOptions
final __codec383 = new JsInterfaceCodec<ImageMapTypeOptions>(
    (o) => new ImageMapTypeOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ImageMapTypeOptions
// **************************************************************************

@anonymous
class ImageMapTypeOptions extends JsInterface implements _ImageMapTypeOptions {
  ImageMapTypeOptions.created(JsObject o) : super.created(o);
  ImageMapTypeOptions() : this.created(new JsObject(context['Object']));

  void set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }
  String get alt => asJsObject(this)['alt'];
  void set getTileUrl(dynamic _getTileUrl) {
    asJsObject(this)['getTileUrl'] = _getTileUrl;
  }
  dynamic get getTileUrl => asJsObject(this)['getTileUrl'];
  void set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }
  num get maxZoom => asJsObject(this)['maxZoom'];
  void set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }
  num get minZoom => asJsObject(this)['minZoom'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec303.encode(_tileSize);
  }
  Size get tileSize => __codec303.decode(asJsObject(this)['tileSize']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StyledMapType
// **************************************************************************

@JsName('google.maps.StyledMapType')
class StyledMapType extends MVCObject implements MapType, _StyledMapType {
  StyledMapType.created(JsObject o) : super.created(o);
  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options])
      : this.created(new JsObject(context['google']['maps']['StyledMapType'], [
        __codec271.encode(styles),
        __codec384.encode(options)
      ]));

  Node getTile(Point tileCoord, num zoom, Document ownerDocument) =>
      asJsObject(this).callMethod(
          'getTile', [__codec302.encode(tileCoord), zoom, ownerDocument]);
  void releaseTile(Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile]);
  }

  void set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }
  String get alt => asJsObject(this)['alt'];
  void set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }
  num get maxZoom => asJsObject(this)['maxZoom'];
  void set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }
  num get minZoom => asJsObject(this)['minZoom'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set projection(Projection _projection) {
    asJsObject(this)['projection'] = __codec262.encode(_projection);
  }
  Projection get projection =>
      __codec262.decode(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec303.encode(_tileSize);
  }
  Size get tileSize => __codec303.decode(asJsObject(this)['tileSize']);
}
/// codec for google_maps.src.StyledMapTypeOptions
final __codec384 = new JsInterfaceCodec<StyledMapTypeOptions>(
    (o) => new StyledMapTypeOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StyledMapTypeOptions
// **************************************************************************

@anonymous
class StyledMapTypeOptions extends JsInterface
    implements _StyledMapTypeOptions {
  StyledMapTypeOptions.created(JsObject o) : super.created(o);
  StyledMapTypeOptions() : this.created(new JsObject(context['Object']));

  void set alt(String _alt) {
    asJsObject(this)['alt'] = _alt;
  }
  String get alt => asJsObject(this)['alt'];
  void set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }
  num get maxZoom => asJsObject(this)['maxZoom'];
  void set minZoom(num _minZoom) {
    asJsObject(this)['minZoom'] = _minZoom;
  }
  num get minZoom => asJsObject(this)['minZoom'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapTypeStyle
// **************************************************************************

@anonymous
class MapTypeStyle extends JsInterface implements _MapTypeStyle {
  MapTypeStyle.created(JsObject o) : super.created(o);
  MapTypeStyle() : this.created(new JsObject(context['Object']));

  void set elementType(MapTypeStyleElementType _elementType) {
    asJsObject(this)['elementType'] = __codec385.encode(_elementType);
  }
  MapTypeStyleElementType get elementType =>
      __codec385.decode(asJsObject(this)['elementType']);
  void set featureType(MapTypeStyleFeatureType _featureType) {
    asJsObject(this)['featureType'] = __codec386.encode(_featureType);
  }
  MapTypeStyleFeatureType get featureType =>
      __codec386.decode(asJsObject(this)['featureType']);
  void set stylers(List<MapTypeStyler> _stylers) {
    asJsObject(this)['stylers'] = __codec388.encode(_stylers);
  }
  List<MapTypeStyler> get stylers =>
      __codec388.decode(asJsObject(this)['stylers']);
}
/// codec for google_maps.src.MapTypeStyleElementType
final __codec385 = new BiMapCodec<MapTypeStyleElementType, dynamic>(
    new Map<MapTypeStyleElementType, dynamic>.fromIterable(
        MapTypeStyleElementType.values, value: asJs));

/// codec for google_maps.src.MapTypeStyleFeatureType
final __codec386 = new BiMapCodec<MapTypeStyleFeatureType, dynamic>(
    new Map<MapTypeStyleFeatureType, dynamic>.fromIterable(
        MapTypeStyleFeatureType.values, value: asJs));

/// codec for google_maps.src.MapTypeStyler
final __codec387 =
    new JsInterfaceCodec<MapTypeStyler>((o) => new MapTypeStyler.created(o));

/// codec for dart.core.List<MapTypeStyler>
final __codec388 = new JsListCodec<MapTypeStyler>(__codec387);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapTypeStyler
// **************************************************************************

@anonymous
class MapTypeStyler extends JsInterface implements _MapTypeStyler {
  MapTypeStyler.created(JsObject o) : super.created(o);
  MapTypeStyler() : this.created(new JsObject(context['Object']));

  void set color(String _color) {
    asJsObject(this)['color'] = _color;
  }
  String get color => asJsObject(this)['color'];
  void set gamma(num _gamma) {
    asJsObject(this)['gamma'] = _gamma;
  }
  num get gamma => asJsObject(this)['gamma'];
  void set hue(String _hue) {
    asJsObject(this)['hue'] = _hue;
  }
  String get hue => asJsObject(this)['hue'];
  void set _invert_lightness(bool __invert_lightness) {
    asJsObject(this)['invert_lightness'] = __invert_lightness;
  }
  bool get _invert_lightness => asJsObject(this)['invert_lightness'];
  bool get invertLightness => _invert_lightness;
  void set invertLightness(bool invertLightness) {
    _invert_lightness = invertLightness;
  }
  void set lightness(num _lightness) {
    asJsObject(this)['lightness'] = _lightness;
  }
  num get lightness => asJsObject(this)['lightness'];
  void set saturation(num _saturation) {
    asJsObject(this)['saturation'] = _saturation;
  }
  num get saturation => asJsObject(this)['saturation'];
  void set visibility(String _visibility) {
    asJsObject(this)['visibility'] = _visibility;
  }
  String get visibility => asJsObject(this)['visibility'];
  void set weight(num _weight) {
    asJsObject(this)['weight'] = _weight;
  }
  num get weight => asJsObject(this)['weight'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _BicyclingLayer
// **************************************************************************

@JsName('google.maps.BicyclingLayer')
class BicyclingLayer extends MVCObject implements _BicyclingLayer {
  BicyclingLayer.created(JsObject o) : super.created(o);
  BicyclingLayer()
      : this.created(new JsObject(context['google']['maps']['BicyclingLayer']));

  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesLayer
// **************************************************************************

@JsName('google.maps.FusionTablesLayer')
class FusionTablesLayer extends MVCObject implements _FusionTablesLayer {
  FusionTablesLayer.created(JsObject o) : super.created(o);
  FusionTablesLayer(FusionTablesLayerOptions options) : this.created(
          new JsObject(context['google']['maps']['FusionTablesLayer'],
              [__codec389.encode(options)]));

  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set options(FusionTablesLayerOptions options) => _setOptions(options);
  void _setOptions(FusionTablesLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec389.encode(options)]);
  }

  Stream<FusionTablesMouseEvent> get onClick => getStream(this, #onClick,
      "click", (JsObject o) => new FusionTablesMouseEvent.created(o));
}
/// codec for google_maps.src.FusionTablesLayerOptions
final __codec389 = new JsInterfaceCodec<FusionTablesLayerOptions>(
    (o) => new FusionTablesLayerOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesLayerOptions
// **************************************************************************

@anonymous
class FusionTablesLayerOptions extends JsInterface
    implements _FusionTablesLayerOptions {
  FusionTablesLayerOptions.created(JsObject o) : super.created(o);
  FusionTablesLayerOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set heatmap(FusionTablesHeatmap _heatmap) {
    asJsObject(this)['heatmap'] = __codec390.encode(_heatmap);
  }
  FusionTablesHeatmap get heatmap =>
      __codec390.decode(asJsObject(this)['heatmap']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set query(FusionTablesQuery _query) {
    asJsObject(this)['query'] = __codec391.encode(_query);
  }
  FusionTablesQuery get query => __codec391.decode(asJsObject(this)['query']);
  void set styles(List<FusionTablesStyle> _styles) {
    asJsObject(this)['styles'] = __codec393.encode(_styles);
  }
  List<FusionTablesStyle> get styles =>
      __codec393.decode(asJsObject(this)['styles']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
}
/// codec for google_maps.src.FusionTablesHeatmap
final __codec390 = new JsInterfaceCodec<FusionTablesHeatmap>(
    (o) => new FusionTablesHeatmap.created(o));

/// codec for google_maps.src.FusionTablesQuery
final __codec391 = new JsInterfaceCodec<FusionTablesQuery>(
    (o) => new FusionTablesQuery.created(o));

/// codec for google_maps.src.FusionTablesStyle
final __codec392 = new JsInterfaceCodec<FusionTablesStyle>(
    (o) => new FusionTablesStyle.created(o));

/// codec for dart.core.List<FusionTablesStyle>
final __codec393 = new JsListCodec<FusionTablesStyle>(__codec392);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesQuery
// **************************************************************************

@anonymous
class FusionTablesQuery extends JsInterface implements _FusionTablesQuery {
  FusionTablesQuery.created(JsObject o) : super.created(o);
  FusionTablesQuery() : this.created(new JsObject(context['Object']));

  void set from(String _from) {
    asJsObject(this)['from'] = _from;
  }
  String get from => asJsObject(this)['from'];
  void set limit(num _limit) {
    asJsObject(this)['limit'] = _limit;
  }
  num get limit => asJsObject(this)['limit'];
  void set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  num get offset => asJsObject(this)['offset'];
  void set orderBy(String _orderBy) {
    asJsObject(this)['orderBy'] = _orderBy;
  }
  String get orderBy => asJsObject(this)['orderBy'];
  void set select(String _select) {
    asJsObject(this)['select'] = _select;
  }
  String get select => asJsObject(this)['select'];
  void set where(String _where) {
    asJsObject(this)['where'] = _where;
  }
  String get where => asJsObject(this)['where'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesStyle
// **************************************************************************

@anonymous
class FusionTablesStyle extends JsInterface implements _FusionTablesStyle {
  FusionTablesStyle.created(JsObject o) : super.created(o);
  FusionTablesStyle() : this.created(new JsObject(context['Object']));

  void set markerOptions(FusionTablesMarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec394.encode(_markerOptions);
  }
  FusionTablesMarkerOptions get markerOptions =>
      __codec394.decode(asJsObject(this)['markerOptions']);
  void set polygonOptions(FusionTablesPolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec395.encode(_polygonOptions);
  }
  FusionTablesPolygonOptions get polygonOptions =>
      __codec395.decode(asJsObject(this)['polygonOptions']);
  void set polylineOptions(FusionTablesPolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec396.encode(_polylineOptions);
  }
  FusionTablesPolylineOptions get polylineOptions =>
      __codec396.decode(asJsObject(this)['polylineOptions']);
  void set where(String _where) {
    asJsObject(this)['where'] = _where;
  }
  String get where => asJsObject(this)['where'];
}
/// codec for google_maps.src.FusionTablesMarkerOptions
final __codec394 = new JsInterfaceCodec<FusionTablesMarkerOptions>(
    (o) => new FusionTablesMarkerOptions.created(o));

/// codec for google_maps.src.FusionTablesPolygonOptions
final __codec395 = new JsInterfaceCodec<FusionTablesPolygonOptions>(
    (o) => new FusionTablesPolygonOptions.created(o));

/// codec for google_maps.src.FusionTablesPolylineOptions
final __codec396 = new JsInterfaceCodec<FusionTablesPolylineOptions>(
    (o) => new FusionTablesPolylineOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesHeatmap
// **************************************************************************

@anonymous
class FusionTablesHeatmap extends JsInterface implements _FusionTablesHeatmap {
  FusionTablesHeatmap.created(JsObject o) : super.created(o);
  FusionTablesHeatmap() : this.created(new JsObject(context['Object']));

  void set enabled(bool _enabled) {
    asJsObject(this)['enabled'] = _enabled;
  }
  bool get enabled => asJsObject(this)['enabled'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesMarkerOptions
// **************************************************************************

@anonymous
class FusionTablesMarkerOptions extends JsInterface
    implements _FusionTablesMarkerOptions {
  FusionTablesMarkerOptions.created(JsObject o) : super.created(o);
  FusionTablesMarkerOptions() : this.created(new JsObject(context['Object']));

  void set iconName(String _iconName) {
    asJsObject(this)['iconName'] = _iconName;
  }
  String get iconName => asJsObject(this)['iconName'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesPolygonOptions
// **************************************************************************

@anonymous
class FusionTablesPolygonOptions extends JsInterface
    implements _FusionTablesPolygonOptions {
  FusionTablesPolygonOptions.created(JsObject o) : super.created(o);
  FusionTablesPolygonOptions() : this.created(new JsObject(context['Object']));

  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesPolylineOptions
// **************************************************************************

@anonymous
class FusionTablesPolylineOptions extends JsInterface
    implements _FusionTablesPolylineOptions {
  FusionTablesPolylineOptions.created(JsObject o) : super.created(o);
  FusionTablesPolylineOptions() : this.created(new JsObject(context['Object']));

  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokeWeight(num _strokeWeight) {
    asJsObject(this)['strokeWeight'] = _strokeWeight;
  }
  num get strokeWeight => asJsObject(this)['strokeWeight'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesMouseEvent
// **************************************************************************

@anonymous
class FusionTablesMouseEvent extends JsInterface
    implements _FusionTablesMouseEvent {
  FusionTablesMouseEvent.created(JsObject o) : super.created(o);
  FusionTablesMouseEvent() : this.created(new JsObject(context['Object']));

  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec261.encode(_latLng);
  }
  LatLng get latLng => __codec261.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec303.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec303.decode(asJsObject(this)['pixelOffset']);
  void set row(Map<String, FusionTablesCell> _row) {
    asJsObject(this)['row'] = __codec398.encode(_row);
  }
  Map<String, FusionTablesCell> get row =>
      __codec398.decode(asJsObject(this)['row']);
}
/// codec for google_maps.src.FusionTablesCell
final __codec397 = new JsInterfaceCodec<FusionTablesCell>(
    (o) => new FusionTablesCell.created(o));

/// codec for dart.core.Map<String, FusionTablesCell>
final __codec398 = new JsObjectAsMapCodec<FusionTablesCell>(__codec397);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FusionTablesCell
// **************************************************************************

@anonymous
class FusionTablesCell extends JsInterface implements _FusionTablesCell {
  FusionTablesCell.created(JsObject o) : super.created(o);
  FusionTablesCell() : this.created(new JsObject(context['Object']));

  void set columnName(String _columnName) {
    asJsObject(this)['columnName'] = _columnName;
  }
  String get columnName => asJsObject(this)['columnName'];
  void set value(String _value) {
    asJsObject(this)['value'] = _value;
  }
  String get value => asJsObject(this)['value'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlLayer
// **************************************************************************

@JsName('google.maps.KmlLayer')
class KmlLayer extends MVCObject implements _KmlLayer {
  KmlLayer.created(JsObject o) : super.created(o);
  KmlLayer([KmlLayerOptions opts]) : this.created(new JsObject(
          context['google']['maps']['KmlLayer'], [__codec399.encode(opts)]));

  LatLngBounds get defaultViewport => _getDefaultViewport();
  LatLngBounds _getDefaultViewport() =>
      __codec260.decode(asJsObject(this).callMethod('getDefaultViewport'));
  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  KmlLayerMetadata get metadata => _getMetadata();
  KmlLayerMetadata _getMetadata() =>
      __codec400.decode(asJsObject(this).callMethod('getMetadata'));
  KmlLayerStatus get status => _getStatus();
  KmlLayerStatus _getStatus() =>
      __codec401.decode(asJsObject(this).callMethod('getStatus'));
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
  void set url(String url) => _setUrl(url);
  void _setUrl(String url) {
    asJsObject(this).callMethod('setUrl', [url]);
  }
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream<KmlMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new KmlMouseEvent.created(o));
  Stream get onDefaultviewportChanged =>
      getStream(this, #onDefaultviewportChanged, "defaultviewport_changed");
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
}
/// codec for google_maps.src.KmlLayerOptions
final __codec399 = new JsInterfaceCodec<KmlLayerOptions>(
    (o) => new KmlLayerOptions.created(o));

/// codec for google_maps.src.KmlLayerMetadata
final __codec400 = new JsInterfaceCodec<KmlLayerMetadata>(
    (o) => new KmlLayerMetadata.created(o));

/// codec for google_maps.src.KmlLayerStatus
final __codec401 = new BiMapCodec<KmlLayerStatus, dynamic>(
    new Map<KmlLayerStatus, dynamic>.fromIterable(KmlLayerStatus.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlLayerOptions
// **************************************************************************

@anonymous
class KmlLayerOptions extends JsInterface implements _KmlLayerOptions {
  KmlLayerOptions.created(JsObject o) : super.created(o);
  KmlLayerOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec283.encode(_map);
  }
  GMap get map => __codec283.decode(asJsObject(this)['map']);
  void set preserveViewport(bool _preserveViewport) {
    asJsObject(this)['preserveViewport'] = _preserveViewport;
  }
  bool get preserveViewport => asJsObject(this)['preserveViewport'];
  void set screenOverlays(bool _screenOverlays) {
    asJsObject(this)['screenOverlays'] = _screenOverlays;
  }
  bool get screenOverlays => asJsObject(this)['screenOverlays'];
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlLayerMetadata
// **************************************************************************

@anonymous
class KmlLayerMetadata extends JsInterface implements _KmlLayerMetadata {
  KmlLayerMetadata.created(JsObject o) : super.created(o);
  KmlLayerMetadata() : this.created(new JsObject(context['Object']));

  void set author(KmlAuthor _author) {
    asJsObject(this)['author'] = __codec402.encode(_author);
  }
  KmlAuthor get author => __codec402.decode(asJsObject(this)['author']);
  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set hasScreenOverlays(bool _hasScreenOverlays) {
    asJsObject(this)['hasScreenOverlays'] = _hasScreenOverlays;
  }
  bool get hasScreenOverlays => asJsObject(this)['hasScreenOverlays'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set snippet(String _snippet) {
    asJsObject(this)['snippet'] = _snippet;
  }
  String get snippet => asJsObject(this)['snippet'];
}
/// codec for google_maps.src.KmlAuthor
final __codec402 =
    new JsInterfaceCodec<KmlAuthor>((o) => new KmlAuthor.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _KmlLayerStatus
// **************************************************************************

class KmlLayerStatus extends JsEnum {
  static final values = <KmlLayerStatus>[
    DOCUMENT_NOT_FOUND,
    DOCUMENT_TOO_LARGE,
    FETCH_ERROR,
    INVALID_DOCUMENT,
    INVALID_REQUEST,
    LIMITS_EXCEEDED,
    OK,
    TIMED_OUT,
    UNKNOWN
  ];
  static final DOCUMENT_NOT_FOUND = new KmlLayerStatus._('DOCUMENT_NOT_FOUND',
      context['google']['maps']['KmlLayerStatus']['DOCUMENT_NOT_FOUND']);
  static final DOCUMENT_TOO_LARGE = new KmlLayerStatus._('DOCUMENT_TOO_LARGE',
      context['google']['maps']['KmlLayerStatus']['DOCUMENT_TOO_LARGE']);
  static final FETCH_ERROR = new KmlLayerStatus._('FETCH_ERROR',
      context['google']['maps']['KmlLayerStatus']['FETCH_ERROR']);
  static final INVALID_DOCUMENT = new KmlLayerStatus._('INVALID_DOCUMENT',
      context['google']['maps']['KmlLayerStatus']['INVALID_DOCUMENT']);
  static final INVALID_REQUEST = new KmlLayerStatus._('INVALID_REQUEST',
      context['google']['maps']['KmlLayerStatus']['INVALID_REQUEST']);
  static final LIMITS_EXCEEDED = new KmlLayerStatus._('LIMITS_EXCEEDED',
      context['google']['maps']['KmlLayerStatus']['LIMITS_EXCEEDED']);
  static final OK = new KmlLayerStatus._(
      'OK', context['google']['maps']['KmlLayerStatus']['OK']);
  static final TIMED_OUT = new KmlLayerStatus._(
      'TIMED_OUT', context['google']['maps']['KmlLayerStatus']['TIMED_OUT']);
  static final UNKNOWN = new KmlLayerStatus._(
      'UNKNOWN', context['google']['maps']['KmlLayerStatus']['UNKNOWN']);

  final String _name;
  KmlLayerStatus._(this._name, o) : super.created(o);

  String toString() => 'KmlLayerStatus.$_name';

  // dumb code to remove analyzer hint for unused _KmlLayerStatus
  _KmlLayerStatus _dumbMethod1() => _dumbMethod2();
  _KmlLayerStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlMouseEvent
// **************************************************************************

@anonymous
class KmlMouseEvent extends JsInterface implements _KmlMouseEvent {
  KmlMouseEvent.created(JsObject o) : super.created(o);
  KmlMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureData(KmlFeatureData _featureData) {
    asJsObject(this)['featureData'] = __codec403.encode(_featureData);
  }
  KmlFeatureData get featureData =>
      __codec403.decode(asJsObject(this)['featureData']);
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec261.encode(_latLng);
  }
  LatLng get latLng => __codec261.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec303.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec303.decode(asJsObject(this)['pixelOffset']);
}
/// codec for google_maps.src.KmlFeatureData
final __codec403 =
    new JsInterfaceCodec<KmlFeatureData>((o) => new KmlFeatureData.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlFeatureData
// **************************************************************************

@anonymous
class KmlFeatureData extends JsInterface implements _KmlFeatureData {
  KmlFeatureData.created(JsObject o) : super.created(o);
  KmlFeatureData() : this.created(new JsObject(context['Object']));

  void set author(KmlAuthor _author) {
    asJsObject(this)['author'] = __codec402.encode(_author);
  }
  KmlAuthor get author => __codec402.decode(asJsObject(this)['author']);
  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set id(String _id) {
    asJsObject(this)['id'] = _id;
  }
  String get id => asJsObject(this)['id'];
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set snippet(String _snippet) {
    asJsObject(this)['snippet'] = _snippet;
  }
  String get snippet => asJsObject(this)['snippet'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlAuthor
// **************************************************************************

@anonymous
class KmlAuthor extends JsInterface implements _KmlAuthor {
  KmlAuthor.created(JsObject o) : super.created(o);
  KmlAuthor() : this.created(new JsObject(context['Object']));

  void set email(String _email) {
    asJsObject(this)['email'] = _email;
  }
  String get email => asJsObject(this)['email'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set uri(String _uri) {
    asJsObject(this)['uri'] = _uri;
  }
  String get uri => asJsObject(this)['uri'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TrafficLayer
// **************************************************************************

@JsName('google.maps.TrafficLayer')
class TrafficLayer extends MVCObject implements _TrafficLayer {
  TrafficLayer.created(JsObject o) : super.created(o);
  TrafficLayer()
      : this.created(new JsObject(context['google']['maps']['TrafficLayer']));

  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TransitLayer
// **************************************************************************

@JsName('google.maps.TransitLayer')
class TransitLayer extends MVCObject implements _TransitLayer {
  TransitLayer.created(JsObject o) : super.created(o);
  TransitLayer()
      : this.created(new JsObject(context['google']['maps']['TransitLayer']));

  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewPanorama
// **************************************************************************

@JsName('google.maps.StreetViewPanorama')
class StreetViewPanorama extends MVCObject implements _StreetViewPanorama {
  StreetViewPanorama.created(JsObject o) : super.created(o);
  StreetViewPanorama(Node container, [StreetViewPanoramaOptions opts])
      : this.created(new JsObject(
          context['google']['maps']['StreetViewPanorama'], [
        container,
        __codec404.encode(opts)
      ]));

  List<StreetViewLink> get links => _getLinks();
  List<StreetViewLink> _getLinks() =>
      __codec406.decode(asJsObject(this).callMethod('getLinks'));
  StreetViewLocation get location => _getLocation();
  StreetViewLocation _getLocation() =>
      __codec407.decode(asJsObject(this).callMethod('getLocation'));
  String get pano => _getPano();
  String _getPano() => asJsObject(this).callMethod('getPano');
  StreetViewPov get photographerPov => _getPhotographerPov();
  StreetViewPov _getPhotographerPov() =>
      __codec408.decode(asJsObject(this).callMethod('getPhotographerPov'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec261.decode(asJsObject(this).callMethod('getPosition'));
  StreetViewPov get pov => _getPov();
  StreetViewPov _getPov() =>
      __codec408.decode(asJsObject(this).callMethod('getPov'));
  StreetViewStatus get status => _getStatus();
  StreetViewStatus _getStatus() =>
      __codec409.decode(asJsObject(this).callMethod('getStatus'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void registerPanoProvider(provider(String p1)) {
    asJsObject(this).callMethod(
        'registerPanoProvider', [__codec410.encode(provider)]);
  }
  void set links(List<StreetViewLink> links) => _setLinks(links);
  void _setLinks(List<StreetViewLink> links) {
    asJsObject(this).callMethod('setLinks', [__codec406.encode(links)]);
  }
  void set options(StreetViewPanoramaOptions options) => _setOptions(options);
  void _setOptions(StreetViewPanoramaOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec404.encode(options)]);
  }
  void set pano(String pano) => _setPano(pano);
  void _setPano(String pano) {
    asJsObject(this).callMethod('setPano', [pano]);
  }
  void set position(LatLng latLng) => _setPosition(latLng);
  void _setPosition(LatLng latLng) {
    asJsObject(this).callMethod('setPosition', [__codec261.encode(latLng)]);
  }
  void set pov(StreetViewPov pov) => _setPov(pov);
  void _setPov(StreetViewPov pov) {
    asJsObject(this).callMethod('setPov', [__codec408.encode(pov)]);
  }
  void set visible(bool flag) => _setVisible(flag);
  void _setVisible(bool flag) {
    asJsObject(this).callMethod('setVisible', [flag]);
  }
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom) {
    asJsObject(this).callMethod('setZoom', [zoom]);
  }

  void set _controls(dynamic __controls) {
    asJsObject(this)['controls'] = __controls;
  }
  dynamic get _controls => asJsObject(this)['controls'];
  List<MVCArray<Node>> get controls => (new JsListCodec<MVCArray<Node>>(
          new JsInterfaceCodec<MVCArray<Node>>(
              (o) => new MVCArray<Node>.created(o, new IdentityCodec<Node>()))))
      .decode(_controls);
  void set controls(List<MVCArray<Node>> controls) {
    _controls = (new JsListCodec<MVCArray<Node>>(
            new JsInterfaceCodec<MVCArray<Node>>((o) =>
                new MVCArray<Node>.created(o, new IdentityCodec<Node>()))))
        .encode(controls);
  }
  Stream get onClicktogoChanged =>
      getStream(this, #onClicktogoChanged, "clicktogo_changed");
  Stream<JsObject> get onCloseclick =>
      getStream(this, #onCloseclick, "closeclick");
  Stream get onLinksChanged =>
      getStream(this, #onLinksChanged, "links_changed");
  Stream get onPanoChanged => getStream(this, #onPanoChanged, "pano_changed");
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream get onPovChanged => getStream(this, #onPovChanged, "pov_changed");
  Stream get onResize => getStream(this, #onResize, "resize");
  Stream get onScrollwheelChanged =>
      getStream(this, #onScrollwheelChanged, "scrollwheel_changed");
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZoomChanged => getStream(this, #onZoomChanged, "zoom_changed");
}
/// codec for google_maps.src.StreetViewPanoramaOptions
final __codec404 = new JsInterfaceCodec<StreetViewPanoramaOptions>(
    (o) => new StreetViewPanoramaOptions.created(o));

/// codec for google_maps.src.StreetViewLink
final __codec405 =
    new JsInterfaceCodec<StreetViewLink>((o) => new StreetViewLink.created(o));

/// codec for dart.core.List<StreetViewLink>
final __codec406 = new JsListCodec<StreetViewLink>(__codec405);

/// codec for google_maps.src.StreetViewLocation
final __codec407 = new JsInterfaceCodec<StreetViewLocation>(
    (o) => new StreetViewLocation.created(o));

/// codec for google_maps.src.StreetViewPov
final __codec408 =
    new JsInterfaceCodec<StreetViewPov>((o) => new StreetViewPov.created(o));

/// codec for google_maps.src.StreetViewStatus
final __codec409 = new BiMapCodec<StreetViewStatus, dynamic>(
    new Map<StreetViewStatus, dynamic>.fromIterable(StreetViewStatus.values,
        value: asJs));

/// codec for google_maps.src.(String) → dynamic
final __codec410 = new FunctionCodec /*<(String) → dynamic>*/ ((f) => f,
    (JsFunction f) => (p_p1) {
  return f.apply([p_p1]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewPanoramaOptions
// **************************************************************************

@anonymous
class StreetViewPanoramaOptions extends JsInterface
    implements _StreetViewPanoramaOptions {
  StreetViewPanoramaOptions.created(JsObject o) : super.created(o);
  StreetViewPanoramaOptions() : this.created(new JsObject(context['Object']));

  void set addressControl(bool _addressControl) {
    asJsObject(this)['addressControl'] = _addressControl;
  }
  bool get addressControl => asJsObject(this)['addressControl'];
  void set addressControlOptions(
      StreetViewAddressControlOptions _addressControlOptions) {
    asJsObject(this)['addressControlOptions'] =
        __codec411.encode(_addressControlOptions);
  }
  StreetViewAddressControlOptions get addressControlOptions =>
      __codec411.decode(asJsObject(this)['addressControlOptions']);
  void set clickToGo(bool _clickToGo) {
    asJsObject(this)['clickToGo'] = _clickToGo;
  }
  bool get clickToGo => asJsObject(this)['clickToGo'];
  void set disableDefaultUI(bool _disableDefaultUI) {
    asJsObject(this)['disableDefaultUI'] = _disableDefaultUI;
  }
  bool get disableDefaultUI => asJsObject(this)['disableDefaultUI'];
  void set disableDoubleClickZoom(bool _disableDoubleClickZoom) {
    asJsObject(this)['disableDoubleClickZoom'] = _disableDoubleClickZoom;
  }
  bool get disableDoubleClickZoom => asJsObject(this)['disableDoubleClickZoom'];
  void set enableCloseButton(bool _enableCloseButton) {
    asJsObject(this)['enableCloseButton'] = _enableCloseButton;
  }
  bool get enableCloseButton => asJsObject(this)['enableCloseButton'];
  void set imageDateControl(bool _imageDateControl) {
    asJsObject(this)['imageDateControl'] = _imageDateControl;
  }
  bool get imageDateControl => asJsObject(this)['imageDateControl'];
  void set linksControl(bool _linksControl) {
    asJsObject(this)['linksControl'] = _linksControl;
  }
  bool get linksControl => asJsObject(this)['linksControl'];
  void set panControl(bool _panControl) {
    asJsObject(this)['panControl'] = _panControl;
  }
  bool get panControl => asJsObject(this)['panControl'];
  void set panControlOptions(PanControlOptions _panControlOptions) {
    asJsObject(this)['panControlOptions'] =
        __codec266.encode(_panControlOptions);
  }
  PanControlOptions get panControlOptions =>
      __codec266.decode(asJsObject(this)['panControlOptions']);
  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
  void set panoProvider(dynamic _panoProvider) {
    asJsObject(this)['panoProvider'] = _panoProvider;
  }
  dynamic get panoProvider => asJsObject(this)['panoProvider'];
  void set position(LatLng _position) {
    asJsObject(this)['position'] = __codec261.encode(_position);
  }
  LatLng get position => __codec261.decode(asJsObject(this)['position']);
  void set pov(StreetViewPov _pov) {
    asJsObject(this)['pov'] = __codec408.encode(_pov);
  }
  StreetViewPov get pov => __codec408.decode(asJsObject(this)['pov']);
  void set scrollwheel(bool _scrollwheel) {
    asJsObject(this)['scrollwheel'] = _scrollwheel;
  }
  bool get scrollwheel => asJsObject(this)['scrollwheel'];
  void set visible(bool _visible) {
    asJsObject(this)['visible'] = _visible;
  }
  bool get visible => asJsObject(this)['visible'];
  void set zoomControl(bool _zoomControl) {
    asJsObject(this)['zoomControl'] = _zoomControl;
  }
  bool get zoomControl => asJsObject(this)['zoomControl'];
  void set zoomControlOptions(ZoomControlOptions _zoomControlOptions) {
    asJsObject(this)['zoomControlOptions'] =
        __codec272.encode(_zoomControlOptions);
  }
  ZoomControlOptions get zoomControlOptions =>
      __codec272.decode(asJsObject(this)['zoomControlOptions']);
}
/// codec for google_maps.src.StreetViewAddressControlOptions
final __codec411 = new JsInterfaceCodec<StreetViewAddressControlOptions>(
    (o) => new StreetViewAddressControlOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewAddressControlOptions
// **************************************************************************

@anonymous
class StreetViewAddressControlOptions extends JsInterface
    implements _StreetViewAddressControlOptions {
  StreetViewAddressControlOptions.created(JsObject o) : super.created(o);
  StreetViewAddressControlOptions()
      : this.created(new JsObject(context['Object']));

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec273.encode(_position);
  }
  ControlPosition get position =>
      __codec273.decode(asJsObject(this)['position']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewLink
// **************************************************************************

@anonymous
class StreetViewLink extends JsInterface implements _StreetViewLink {
  StreetViewLink.created(JsObject o) : super.created(o);
  StreetViewLink() : this.created(new JsObject(context['Object']));

  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set heading(num _heading) {
    asJsObject(this)['heading'] = _heading;
  }
  num get heading => asJsObject(this)['heading'];
  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewPov
// **************************************************************************

@anonymous
class StreetViewPov extends JsInterface implements _StreetViewPov {
  StreetViewPov.created(JsObject o) : super.created(o);
  StreetViewPov() : this.created(new JsObject(context['Object']));

  void set heading(num _heading) {
    asJsObject(this)['heading'] = _heading;
  }
  num get heading => asJsObject(this)['heading'];
  void set pitch(num _pitch) {
    asJsObject(this)['pitch'] = _pitch;
  }
  num get pitch => asJsObject(this)['pitch'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewLocationRequest
// **************************************************************************

@anonymous
class StreetViewLocationRequest extends JsInterface
    implements _StreetViewLocationRequest {
  StreetViewLocationRequest.created(JsObject o) : super.created(o);
  StreetViewLocationRequest() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec261.encode(_location);
  }
  LatLng get location => __codec261.decode(asJsObject(this)['location']);
  void set preference(StreetViewPreference _preference) {
    asJsObject(this)['preference'] = __codec412.encode(_preference);
  }
  StreetViewPreference get preference =>
      __codec412.decode(asJsObject(this)['preference']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set source(StreetViewSource _source) {
    asJsObject(this)['source'] = __codec413.encode(_source);
  }
  StreetViewSource get source => __codec413.decode(asJsObject(this)['source']);
}
/// codec for google_maps.src.StreetViewPreference
final __codec412 = new BiMapCodec<StreetViewPreference, dynamic>(
    new Map<StreetViewPreference, dynamic>.fromIterable(
        StreetViewPreference.values, value: asJs));

/// codec for google_maps.src.StreetViewSource
final __codec413 = new BiMapCodec<StreetViewSource, dynamic>(
    new Map<StreetViewSource, dynamic>.fromIterable(StreetViewSource.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewPanoRequest
// **************************************************************************

@anonymous
class StreetViewPanoRequest extends JsInterface
    implements _StreetViewPanoRequest {
  StreetViewPanoRequest.created(JsObject o) : super.created(o);
  StreetViewPanoRequest() : this.created(new JsObject(context['Object']));

  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewPanoramaData
// **************************************************************************

@anonymous
class StreetViewPanoramaData extends JsInterface
    implements _StreetViewPanoramaData {
  StreetViewPanoramaData.created(JsObject o) : super.created(o);
  StreetViewPanoramaData() : this.created(new JsObject(context['Object']));

  void set copyright(String _copyright) {
    asJsObject(this)['copyright'] = _copyright;
  }
  String get copyright => asJsObject(this)['copyright'];
  void set imageDate(String _imageDate) {
    asJsObject(this)['imageDate'] = _imageDate;
  }
  String get imageDate => asJsObject(this)['imageDate'];
  void set links(List<StreetViewLink> _links) {
    asJsObject(this)['links'] = __codec406.encode(_links);
  }
  List<StreetViewLink> get links =>
      __codec406.decode(asJsObject(this)['links']);
  void set location(StreetViewLocation _location) {
    asJsObject(this)['location'] = __codec407.encode(_location);
  }
  StreetViewLocation get location =>
      __codec407.decode(asJsObject(this)['location']);
  void set tiles(StreetViewTileData _tiles) {
    asJsObject(this)['tiles'] = __codec414.encode(_tiles);
  }
  StreetViewTileData get tiles => __codec414.decode(asJsObject(this)['tiles']);
}
/// codec for google_maps.src.StreetViewTileData
final __codec414 = new JsInterfaceCodec<StreetViewTileData>(
    (o) => new StreetViewTileData.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewLocation
// **************************************************************************

@anonymous
class StreetViewLocation extends JsInterface implements _StreetViewLocation {
  StreetViewLocation.created(JsObject o) : super.created(o);
  StreetViewLocation() : this.created(new JsObject(context['Object']));

  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec261.encode(_latLng);
  }
  LatLng get latLng => __codec261.decode(asJsObject(this)['latLng']);
  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
  void set shortDescription(String _shortDescription) {
    asJsObject(this)['shortDescription'] = _shortDescription;
  }
  String get shortDescription => asJsObject(this)['shortDescription'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _StreetViewPreference
// **************************************************************************

class StreetViewPreference extends JsEnum {
  static final values = <StreetViewPreference>[BEST, NEAREST];
  static final BEST = new StreetViewPreference._(
      'BEST', context['google']['maps']['StreetViewPreference']['BEST']);
  static final NEAREST = new StreetViewPreference._(
      'NEAREST', context['google']['maps']['StreetViewPreference']['NEAREST']);

  final String _name;
  StreetViewPreference._(this._name, o) : super.created(o);

  String toString() => 'StreetViewPreference.$_name';

  // dumb code to remove analyzer hint for unused _StreetViewPreference
  _StreetViewPreference _dumbMethod1() => _dumbMethod2();
  _StreetViewPreference _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _StreetViewSource
// **************************************************************************

class StreetViewSource extends JsEnum {
  static final values = <StreetViewSource>[DEFAULT, OUTDOOR];
  static final DEFAULT = new StreetViewSource._(
      'DEFAULT', context['google']['maps']['StreetViewSource']['DEFAULT']);
  static final OUTDOOR = new StreetViewSource._(
      'OUTDOOR', context['google']['maps']['StreetViewSource']['OUTDOOR']);

  final String _name;
  StreetViewSource._(this._name, o) : super.created(o);

  String toString() => 'StreetViewSource.$_name';

  // dumb code to remove analyzer hint for unused _StreetViewSource
  _StreetViewSource _dumbMethod1() => _dumbMethod2();
  _StreetViewSource _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewTileData
// **************************************************************************

@anonymous
class StreetViewTileData extends JsInterface implements _StreetViewTileData {
  StreetViewTileData.created(JsObject o) : super.created(o);
  StreetViewTileData() : this.created(new JsObject(context['Object']));

  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) =>
      asJsObject(this).callMethod('getTileUrl', [pano, tileZoom, tileX, tileY]);

  void set centerHeading(num _centerHeading) {
    asJsObject(this)['centerHeading'] = _centerHeading;
  }
  num get centerHeading => asJsObject(this)['centerHeading'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec303.encode(_tileSize);
  }
  Size get tileSize => __codec303.decode(asJsObject(this)['tileSize']);
  void set worldSize(Size _worldSize) {
    asJsObject(this)['worldSize'] = __codec303.encode(_worldSize);
  }
  Size get worldSize => __codec303.decode(asJsObject(this)['worldSize']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewService
// **************************************************************************

@JsName('google.maps.StreetViewService')
class StreetViewService extends JsInterface implements _StreetViewService {
  StreetViewService.created(JsObject o) : super.created(o);
  StreetViewService() : this.created(
          new JsObject(context['google']['maps']['StreetViewService']));

  void getPanoramaById(
      String pano, callback(StreetViewPanoramaData p1, StreetViewStatus p2)) {
    asJsObject(this).callMethod(
        'getPanoramaById', [pano, __codec416.encode(callback)]);
  }
  void getPanoramaByLocation(LatLng latlng, num radius,
      callback(StreetViewPanoramaData p1, StreetViewStatus p2)) {
    asJsObject(this).callMethod('getPanoramaByLocation', [
      __codec261.encode(latlng),
      radius,
      __codec416.encode(callback)
    ]);
  }
}
/// codec for google_maps.src.StreetViewPanoramaData
final __codec415 = new JsInterfaceCodec<StreetViewPanoramaData>(
    (o) => new StreetViewPanoramaData.created(o));

/// codec for google_maps.src.(StreetViewPanoramaData, StreetViewStatus) → dynamic
final __codec416 =
    new FunctionCodec /*<(StreetViewPanoramaData, StreetViewStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec415.decode(p_p1);
  p_p2 = __codec409.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec415.encode(p_p1);
  p_p2 = __codec409.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _StreetViewStatus
// **************************************************************************

class StreetViewStatus extends JsEnum {
  static final values = <StreetViewStatus>[OK, UNKNOWN_ERROR, ZERO_RESULTS];
  static final OK = new StreetViewStatus._(
      'OK', context['google']['maps']['StreetViewStatus']['OK']);
  static final UNKNOWN_ERROR = new StreetViewStatus._('UNKNOWN_ERROR',
      context['google']['maps']['StreetViewStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = new StreetViewStatus._('ZERO_RESULTS',
      context['google']['maps']['StreetViewStatus']['ZERO_RESULTS']);

  final String _name;
  StreetViewStatus._(this._name, o) : super.created(o);

  String toString() => 'StreetViewStatus.$_name';

  // dumb code to remove analyzer hint for unused _StreetViewStatus
  _StreetViewStatus _dumbMethod1() => _dumbMethod2();
  _StreetViewStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewCoverageLayer
// **************************************************************************

@JsName('google.maps.StreetViewCoverageLayer')
class StreetViewCoverageLayer extends MVCObject
    implements _StreetViewCoverageLayer {
  StreetViewCoverageLayer.created(JsObject o) : super.created(o);
  StreetViewCoverageLayer() : this.created(
          new JsObject(context['google']['maps']['StreetViewCoverageLayer']));

  GMap get map => _getMap();
  GMap _getMap() => __codec283.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec283.encode(map)]);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapsEventListener
// **************************************************************************

@anonymous
class MapsEventListener extends JsInterface implements _MapsEventListener {
  MapsEventListener.created(JsObject o) : super.created(o);
  MapsEventListener() : this.created(new JsObject(context['Object']));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Event
// **************************************************************************

class Event extends JsInterface implements _Event {
  Event.created(JsObject o) : super.created(o);

  MapsEventListener addDomListener(
      Object instance, String eventName, handler(dynamic p1),
      [bool capture]) => __codec418.decode(asJsObject(this).callMethod(
          'addDomListener', [
    instance,
    eventName,
    __codec417.encode(handler),
    capture
  ]));
  MapsEventListener addDomListenerOnce(
      Object instance, String eventName, handler(dynamic p1),
      [bool capture]) => __codec418.decode(asJsObject(this).callMethod(
          'addDomListenerOnce', [
    instance,
    eventName,
    __codec417.encode(handler),
    capture
  ]));
  MapsEventListener addListener(
      Object instance, String eventName, handler(dynamic p1)) => __codec418
      .decode(asJsObject(this).callMethod(
          'addListener', [instance, eventName, __codec417.encode(handler)]));
  MapsEventListener addListenerOnce(
      Object instance, String eventName, handler(dynamic p1)) => __codec418
      .decode(asJsObject(this).callMethod('addListenerOnce', [
    instance,
    eventName,
    __codec417.encode(handler)
  ]));
  void clearInstanceListeners(Object instance) {
    asJsObject(this).callMethod('clearInstanceListeners', [instance]);
  }
  void clearListeners(Object instance, String eventName) {
    asJsObject(this).callMethod('clearListeners', [instance, eventName]);
  }
  void removeListener(MapsEventListener listener) {
    asJsObject(this).callMethod(
        'removeListener', [__codec418.encode(listener)]);
  }
  void trigger(Object instance, String eventName, dynamic var_args) {
    asJsObject(this).callMethod('trigger', [instance, eventName, var_args]);
  }
}
/// codec for google_maps.src.(dynamic) → dynamic
final __codec417 = new FunctionCodec /*<(dynamic) → dynamic>*/ ((f) => f,
    (JsFunction f) => (p_p1) {
  return f.apply([p_p1]);
});

/// codec for google_maps.src.MapsEventListener
final __codec418 = new JsInterfaceCodec<MapsEventListener>(
    (o) => new MapsEventListener.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MouseEvent
// **************************************************************************

@anonymous
class MouseEvent extends JsInterface implements _MouseEvent {
  MouseEvent.created(JsObject o) : super.created(o);
  MouseEvent() : this.created(new JsObject(context['Object']));

  void stop() {
    asJsObject(this).callMethod('stop');
  }

  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec261.encode(_latLng);
  }
  LatLng get latLng => __codec261.decode(asJsObject(this)['latLng']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLng
// **************************************************************************

@JsName('google.maps.LatLng')
class LatLng extends JsInterface implements _LatLng {
  LatLng.created(JsObject o) : super.created(o);
  LatLng(num lat, num lng, [bool noWrap]) : this.created(new JsObject(
          context['google']['maps']['LatLng'], [lat, lng, noWrap]));

  bool equals(LatLng other) =>
      asJsObject(this).callMethod('equals', [__codec261.encode(other)]);
  num get lat => _lat();
  num _lat() => asJsObject(this).callMethod('lat');
  num get lng => _lng();
  num _lng() => asJsObject(this).callMethod('lng');
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision]);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLngBounds
// **************************************************************************

@JsName('google.maps.LatLngBounds')
class LatLngBounds extends JsInterface implements _LatLngBounds {
  LatLngBounds.created(JsObject o) : super.created(o);
  LatLngBounds([LatLng sw, LatLng ne]) : this.created(new JsObject(
          context['google']['maps']['LatLngBounds'], [
        __codec261.encode(sw),
        __codec261.encode(ne)
      ]));

  bool contains(LatLng latLng) =>
      asJsObject(this).callMethod('contains', [__codec261.encode(latLng)]);
  bool equals(LatLngBounds other) =>
      asJsObject(this).callMethod('equals', [__codec260.encode(other)]);
  LatLngBounds extend(LatLng point) => __codec260.decode(
      asJsObject(this).callMethod('extend', [__codec261.encode(point)]));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec261.decode(asJsObject(this).callMethod('getCenter'));
  LatLng get northEast => _getNorthEast();
  LatLng _getNorthEast() =>
      __codec261.decode(asJsObject(this).callMethod('getNorthEast'));
  LatLng get southWest => _getSouthWest();
  LatLng _getSouthWest() =>
      __codec261.decode(asJsObject(this).callMethod('getSouthWest'));
  bool intersects(LatLngBounds other) =>
      asJsObject(this).callMethod('intersects', [__codec260.encode(other)]);
  bool get isEmpty => _isEmpty();
  bool _isEmpty() => asJsObject(this).callMethod('isEmpty');
  LatLng toSpan() => __codec261.decode(asJsObject(this).callMethod('toSpan'));
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision]);
  LatLngBounds union(LatLngBounds other) => __codec260
      .decode(asJsObject(this).callMethod('union', [__codec260.encode(other)]));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Point
// **************************************************************************

@JsName('google.maps.Point')
class Point extends JsInterface implements _Point {
  Point.created(JsObject o) : super.created(o);
  Point(num x, num y)
      : this.created(new JsObject(context['google']['maps']['Point'], [x, y]));

  bool equals(Point other) =>
      asJsObject(this).callMethod('equals', [__codec302.encode(other)]);
  String toString() => asJsObject(this).callMethod('toString');

  void set x(num _x) {
    asJsObject(this)['x'] = _x;
  }
  num get x => asJsObject(this)['x'];
  void set y(num _y) {
    asJsObject(this)['y'] = _y;
  }
  num get y => asJsObject(this)['y'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Size
// **************************************************************************

@JsName('google.maps.Size')
class Size extends JsInterface implements _Size {
  Size.created(JsObject o) : super.created(o);
  Size(num width, num height, [String widthUnit, String heightUnit])
      : this.created(new JsObject(context['google']['maps']['Size'], [
        width,
        height,
        widthUnit,
        heightUnit
      ]));

  bool equals(Size other) =>
      asJsObject(this).callMethod('equals', [__codec303.encode(other)]);
  String toString() => asJsObject(this).callMethod('toString');

  void set height(num _height) {
    asJsObject(this)['height'] = _height;
  }
  num get height => asJsObject(this)['height'];
  void set width(num _width) {
    asJsObject(this)['width'] = _width;
  }
  num get width => asJsObject(this)['width'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MVCObject
// **************************************************************************

@JsName('google.maps.MVCObject')
class MVCObject extends JsInterface implements _MVCObject {
  MVCObject.created(JsObject o) : super.created(o);
  MVCObject()
      : this.created(new JsObject(context['google']['maps']['MVCObject']));

  MapsEventListener addListener(
      String eventName, Function handler) => __codec418
      .decode(asJsObject(this).callMethod('addListener', [eventName, handler]));
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) {
    asJsObject(this).callMethod(
        'bindTo', [key, __codec306.encode(target), targetKey, noNotify]);
  }
  void changed(String key) {
    asJsObject(this).callMethod('changed', [key]);
  }
  dynamic get(String key) => asJsObject(this).callMethod('get', [key]);
  void notify(String key) {
    asJsObject(this).callMethod('notify', [key]);
  }
  void set(String key, dynamic value) {
    asJsObject(this).callMethod('set', [key, value]);
  }
  void set values(Object values) => _setValues(values);
  void _setValues(Object values) {
    asJsObject(this).callMethod('setValues', [values]);
  }
  void unbind(String key) {
    asJsObject(this).callMethod('unbind', [key]);
  }
  void unbindAll() {
    asJsObject(this).callMethod('unbindAll');
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MVCArray
// **************************************************************************

@JsName('google.maps.MVCArray')
class MVCArray<E> extends MVCObject implements _MVCArray {
  Codec<E, dynamic> _codec = null;

  MVCArray({List<E> elements, Codec<E, dynamic> codec}) : this.created(
          new JsObject(context['google']['maps']['MVCArray'], [
        elements == null
            ? new JsArray()
            : new JsArray.from(
                codec == null ? elements : elements.map(codec.encode))
      ]), codec);

  MVCArray.created(JsObject o, [Codec<E, dynamic> codec])
      : _codec = codec != null ? codec : new IdentityCodec(),
        super.created(o);

  void clear() {
    asJsObject(this).callMethod('clear');
  }
  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index)) {
    asJsObject(this).callMethod('forEach', [__codec419.encode(callback)]);
  }
  List<E> getArray() => new JsList.created(_getArray(), _codec);
  JsArray _getArray() =>
      __codec420.decode(asJsObject(this).callMethod('getArray'));
  E getAt(num i) => _codec.decode(_getAt(i));
  _getAt(num i) => asJsObject(this).callMethod('getAt', [i]);
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem) {
    asJsObject(this).callMethod('insertAt', [i, elem]);
  }
  E pop() => _codec.decode(_pop());
  _pop() => asJsObject(this).callMethod('pop');
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem) => asJsObject(this).callMethod('push', [elem]);
  E removeAt(num i) => _codec.decode(_removeAt(i));
  _removeAt(num i) => asJsObject(this).callMethod('removeAt', [i]);
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem) {
    asJsObject(this).callMethod('setAt', [i, elem]);
  }

  Stream<int> get onInsertAt => getStream(this, #onInsertAt, "insert_at");
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(this, #onClick,
      "click", (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
  Stream<IndexAndElement<E>> get onSetAt => getStream(this, #onClick, "click",
      (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
}
/// codec for google_maps.src.(dynamic, num) → void
final __codec419 = new FunctionCodec /*<(dynamic, num) → void>*/ ((f) => f,
    (JsFunction f) => (p_o, p_index) {
  f.apply([p_o, p_index]);
});

/// codec for dart.js.JsArray<dynamic>
final __codec420 = new JsListCodec<dynamic>(null);
