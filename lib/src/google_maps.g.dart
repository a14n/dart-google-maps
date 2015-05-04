// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-04T19:49:13.314Z

part of google_maps;

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
          getPath('google.maps.Map'), [mapDiv, __codec1.encode(opts)]));

  void fitBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('fitBounds', [__codec5.encode(bounds)]);
  }
  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec5.decode(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec6.decode(asJsObject(this).callMethod('getCenter'));
  Node get div => _getDiv();
  Node _getDiv() => asJsObject(this).callMethod('getDiv');
  num get heading => _getHeading();
  num _getHeading() => asJsObject(this).callMethod('getHeading');
  dynamic /*MapTypeId|String*/ get mapTypeId => (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: getPath('google.maps.MapTypeId')['HYBRID'],
      MapTypeId.ROADMAP: getPath('google.maps.MapTypeId')['ROADMAP'],
      MapTypeId.SATELLITE: getPath('google.maps.MapTypeId')['SATELLITE'],
      MapTypeId.TERRAIN: getPath('google.maps.MapTypeId')['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).decode(_getMapTypeId());
  _getMapTypeId() => asJsObject(this).callMethod('getMapTypeId');
  Projection get projection => _getProjection();
  Projection _getProjection() =>
      __codec7.decode(asJsObject(this).callMethod('getProjection'));
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView() =>
      __codec8.decode(asJsObject(this).callMethod('getStreetView'));
  num get tilt => _getTilt();
  num _getTilt() => asJsObject(this).callMethod('getTilt');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void panBy(num x, num y) {
    asJsObject(this).callMethod('panBy', [x, y]);
  }
  void panTo(LatLng latLng) {
    asJsObject(this).callMethod('panTo', [__codec6.encode(latLng)]);
  }
  void panToBounds(LatLngBounds latLngBounds) {
    asJsObject(this).callMethod('panToBounds', [__codec5.encode(latLngBounds)]);
  }
  void set center(LatLng latlng) => _setCenter(latlng);
  void _setCenter(LatLng latlng) {
    asJsObject(this).callMethod('setCenter', [__codec6.encode(latlng)]);
  }
  void set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading) {
    asJsObject(this).callMethod('setHeading', [heading]);
  }
  void set mapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) => _setMapTypeId(
      (new ChainedCodec()
    ..add(new BiMapCodec<MapTypeId, dynamic>({
      MapTypeId.HYBRID: getPath('google.maps.MapTypeId')['HYBRID'],
      MapTypeId.ROADMAP: getPath('google.maps.MapTypeId')['ROADMAP'],
      MapTypeId.SATELLITE: getPath('google.maps.MapTypeId')['SATELLITE'],
      MapTypeId.TERRAIN: getPath('google.maps.MapTypeId')['TERRAIN']
    }))
    ..add(new IdentityCodec<String>())).encode(mapTypeId));
  void _setMapTypeId(dynamic /*MapTypeId|String*/ mapTypeId) {
    asJsObject(this).callMethod('setMapTypeId', [mapTypeId]);
  }
  void set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec1.encode(options)]);
  }
  void set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama) {
    asJsObject(this).callMethod('setStreetView', [__codec8.encode(panorama)]);
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
    asJsObject(this)['controls'] = __codec2.encode(_controls);
  }
  Controls get controls => __codec2.decode(asJsObject(this)['controls']);
  void set data(Data _data) {
    asJsObject(this)['data'] = __codec3.encode(_data);
  }
  Data get data => __codec3.decode(asJsObject(this)['data']);
  void set mapTypes(MapTypeRegistry _mapTypes) {
    asJsObject(this)['mapTypes'] = __codec4.encode(_mapTypes);
  }
  MapTypeRegistry get mapTypes => __codec4.decode(asJsObject(this)['mapTypes']);
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
/// codec for MapOptions
final __codec1 =
    new JsInterfaceCodec<MapOptions>((o) => new MapOptions.created(o));

/// codec for Controls
final __codec2 = new JsInterfaceCodec<Controls>((o) => new Controls.created(o));

/// codec for Data
final __codec3 = new JsInterfaceCodec<Data>((o) => new Data.created(o));

/// codec for MapTypeRegistry
final __codec4 = new JsInterfaceCodec<MapTypeRegistry>(
    (o) => new MapTypeRegistry.created(o));

/// codec for LatLngBounds
final __codec5 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));

/// codec for LatLng
final __codec6 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for Projection
final __codec7 =
    new JsInterfaceCodec<Projection>((o) => new Projection.created(o));

/// codec for StreetViewPanorama
final __codec8 = new JsInterfaceCodec<StreetViewPanorama>(
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
    asJsObject(this)['center'] = __codec6.encode(_center);
  }
  LatLng get center => __codec6.decode(asJsObject(this)['center']);
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
        __codec9.encode(_mapTypeControlOptions);
  }
  MapTypeControlOptions get mapTypeControlOptions =>
      __codec9.decode(asJsObject(this)['mapTypeControlOptions']);
  void set mapTypeId(MapTypeId _mapTypeId) {
    asJsObject(this)['mapTypeId'] = __codec10.encode(_mapTypeId);
  }
  MapTypeId get mapTypeId => __codec10.decode(asJsObject(this)['mapTypeId']);
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
        __codec11.encode(_overviewMapControlOptions);
  }
  OverviewMapControlOptions get overviewMapControlOptions =>
      __codec11.decode(asJsObject(this)['overviewMapControlOptions']);
  void set panControl(bool _panControl) {
    asJsObject(this)['panControl'] = _panControl;
  }
  bool get panControl => asJsObject(this)['panControl'];
  void set panControlOptions(PanControlOptions _panControlOptions) {
    asJsObject(this)['panControlOptions'] =
        __codec12.encode(_panControlOptions);
  }
  PanControlOptions get panControlOptions =>
      __codec12.decode(asJsObject(this)['panControlOptions']);
  void set rotateControl(bool _rotateControl) {
    asJsObject(this)['rotateControl'] = _rotateControl;
  }
  bool get rotateControl => asJsObject(this)['rotateControl'];
  void set rotateControlOptions(RotateControlOptions _rotateControlOptions) {
    asJsObject(this)['rotateControlOptions'] =
        __codec13.encode(_rotateControlOptions);
  }
  RotateControlOptions get rotateControlOptions =>
      __codec13.decode(asJsObject(this)['rotateControlOptions']);
  void set scaleControl(bool _scaleControl) {
    asJsObject(this)['scaleControl'] = _scaleControl;
  }
  bool get scaleControl => asJsObject(this)['scaleControl'];
  void set scaleControlOptions(ScaleControlOptions _scaleControlOptions) {
    asJsObject(this)['scaleControlOptions'] =
        __codec14.encode(_scaleControlOptions);
  }
  ScaleControlOptions get scaleControlOptions =>
      __codec14.decode(asJsObject(this)['scaleControlOptions']);
  void set scrollwheel(bool _scrollwheel) {
    asJsObject(this)['scrollwheel'] = _scrollwheel;
  }
  bool get scrollwheel => asJsObject(this)['scrollwheel'];
  void set streetView(StreetViewPanorama _streetView) {
    asJsObject(this)['streetView'] = __codec8.encode(_streetView);
  }
  StreetViewPanorama get streetView =>
      __codec8.decode(asJsObject(this)['streetView']);
  void set streetViewControl(bool _streetViewControl) {
    asJsObject(this)['streetViewControl'] = _streetViewControl;
  }
  bool get streetViewControl => asJsObject(this)['streetViewControl'];
  void set streetViewControlOptions(
      StreetViewControlOptions _streetViewControlOptions) {
    asJsObject(this)['streetViewControlOptions'] =
        __codec15.encode(_streetViewControlOptions);
  }
  StreetViewControlOptions get streetViewControlOptions =>
      __codec15.decode(asJsObject(this)['streetViewControlOptions']);
  void set styles(List<MapTypeStyle> _styles) {
    asJsObject(this)['styles'] = __codec17.encode(_styles);
  }
  List<MapTypeStyle> get styles => __codec17.decode(asJsObject(this)['styles']);
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
        __codec18.encode(_zoomControlOptions);
  }
  ZoomControlOptions get zoomControlOptions =>
      __codec18.decode(asJsObject(this)['zoomControlOptions']);
}
/// codec for MapTypeControlOptions
final __codec9 = new JsInterfaceCodec<MapTypeControlOptions>(
    (o) => new MapTypeControlOptions.created(o));

/// codec for MapTypeId
final __codec10 = new BiMapCodec<MapTypeId, dynamic>({
  MapTypeId.HYBRID: getPath('google.maps.MapTypeId')['HYBRID'],
  MapTypeId.ROADMAP: getPath('google.maps.MapTypeId')['ROADMAP'],
  MapTypeId.SATELLITE: getPath('google.maps.MapTypeId')['SATELLITE'],
  MapTypeId.TERRAIN: getPath('google.maps.MapTypeId')['TERRAIN']
});

/// codec for OverviewMapControlOptions
final __codec11 = new JsInterfaceCodec<OverviewMapControlOptions>(
    (o) => new OverviewMapControlOptions.created(o));

/// codec for PanControlOptions
final __codec12 = new JsInterfaceCodec<PanControlOptions>(
    (o) => new PanControlOptions.created(o));

/// codec for RotateControlOptions
final __codec13 = new JsInterfaceCodec<RotateControlOptions>(
    (o) => new RotateControlOptions.created(o));

/// codec for ScaleControlOptions
final __codec14 = new JsInterfaceCodec<ScaleControlOptions>(
    (o) => new ScaleControlOptions.created(o));

/// codec for StreetViewControlOptions
final __codec15 = new JsInterfaceCodec<StreetViewControlOptions>(
    (o) => new StreetViewControlOptions.created(o));

/// codec for MapTypeStyle
final __codec16 =
    new JsInterfaceCodec<MapTypeStyle>((o) => new MapTypeStyle.created(o));

/// codec for List<MapTypeStyle>
final __codec17 = new JsListCodec<MapTypeStyle>(__codec16);

/// codec for ZoomControlOptions
final __codec18 = new JsInterfaceCodec<ZoomControlOptions>(
    (o) => new ZoomControlOptions.created(o));

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
      MapTypeId.HYBRID: getPath('google.maps.MapTypeId')['HYBRID'],
      MapTypeId.ROADMAP: getPath('google.maps.MapTypeId')['ROADMAP'],
      MapTypeId.SATELLITE: getPath('google.maps.MapTypeId')['SATELLITE'],
      MapTypeId.TERRAIN: getPath('google.maps.MapTypeId')['TERRAIN']
    }))
    ..add(new IdentityCodec<String>()))).decode(_mapTypeIds);
  void set _mapTypeIds(dynamic mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = mapTypeIds;
  }
  void set mapTypeIds(List<dynamic /*MapTypeId|String*/ > mapTypeIds) {
    _mapTypeIds = (new JsListCodec<dynamic /*MapTypeId|String*/ >(
        new ChainedCodec()
      ..add(new BiMapCodec<MapTypeId, dynamic>({
        MapTypeId.HYBRID: getPath('google.maps.MapTypeId')['HYBRID'],
        MapTypeId.ROADMAP: getPath('google.maps.MapTypeId')['ROADMAP'],
        MapTypeId.SATELLITE: getPath('google.maps.MapTypeId')['SATELLITE'],
        MapTypeId.TERRAIN: getPath('google.maps.MapTypeId')['TERRAIN']
      }))
      ..add(new IdentityCodec<String>()))).encode(mapTypeIds);
  }

  void set position(ControlPosition _position) {
    asJsObject(this)['position'] = __codec19.encode(_position);
  }
  ControlPosition get position =>
      __codec19.decode(asJsObject(this)['position']);
  void set style(MapTypeControlStyle _style) {
    asJsObject(this)['style'] = __codec20.encode(_style);
  }
  MapTypeControlStyle get style => __codec20.decode(asJsObject(this)['style']);
}
/// codec for ControlPosition
final __codec19 = new BiMapCodec<ControlPosition, dynamic>({
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

/// codec for MapTypeControlStyle
final __codec20 = new BiMapCodec<MapTypeControlStyle, dynamic>({
  MapTypeControlStyle.DEFAULT:
      getPath('google.maps.MapTypeControlStyle')['DEFAULT'],
  MapTypeControlStyle.DROPDOWN_MENU:
      getPath('google.maps.MapTypeControlStyle')['DROPDOWN_MENU'],
  MapTypeControlStyle.HORIZONTAL_BAR:
      getPath('google.maps.MapTypeControlStyle')['HORIZONTAL_BAR']
});

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
    asJsObject(this)['position'] = __codec19.encode(_position);
  }
  ControlPosition get position =>
      __codec19.decode(asJsObject(this)['position']);
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
    asJsObject(this)['position'] = __codec19.encode(_position);
  }
  ControlPosition get position =>
      __codec19.decode(asJsObject(this)['position']);
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
    asJsObject(this)['style'] = __codec21.encode(_style);
  }
  ScaleControlStyle get style => __codec21.decode(asJsObject(this)['style']);
}
/// codec for ScaleControlStyle
final __codec21 = new BiMapCodec<ScaleControlStyle, dynamic>({
  ScaleControlStyle.DEFAULT: getPath('google.maps.ScaleControlStyle')['DEFAULT']
});

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
    asJsObject(this)['position'] = __codec19.encode(_position);
  }
  ControlPosition get position =>
      __codec19.decode(asJsObject(this)['position']);
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
    asJsObject(this)['position'] = __codec19.encode(_position);
  }
  ControlPosition get position =>
      __codec19.decode(asJsObject(this)['position']);
  void set style(ZoomControlStyle _style) {
    asJsObject(this)['style'] = __codec22.encode(_style);
  }
  ZoomControlStyle get style => __codec22.decode(asJsObject(this)['style']);
}
/// codec for ZoomControlStyle
final __codec22 = new BiMapCodec<ZoomControlStyle, dynamic>({
  ZoomControlStyle.DEFAULT: getPath('google.maps.ZoomControlStyle')['DEFAULT'],
  ZoomControlStyle.LARGE: getPath('google.maps.ZoomControlStyle')['LARGE'],
  ZoomControlStyle.SMALL: getPath('google.maps.ZoomControlStyle')['SMALL']
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Data
// **************************************************************************

@JsName('google.maps.Data')
class Data extends JsInterface implements _Data {
  Data.created(JsObject o) : super.created(o);
  Data([DataDataOptions options]) : this.created(new JsObject(
          getPath('google.maps.Data'), [__codec23.encode(options)]));

  DataFeature add(dynamic /*DataFeature|DataFeatureOptions*/ feature) => _add(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataFeature>((o) => new DataFeature.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Data.Feature"))))
    ..add(new JsInterfaceCodec<DataFeatureOptions>(
        (o) => new DataFeatureOptions.created(o)))).encode(feature));
  _add(dynamic /*DataFeature|DataFeatureOptions*/ feature) =>
      asJsObject(this).callMethod('add', [feature]);
  List<DataFeature> addGeoJson(Object geoJson, [DataGeoJsonOptions options]) =>
      __codec26.decode(asJsObject(this).callMethod(
          'addGeoJson', [geoJson, __codec24.encode(options)]));
  bool contains(DataFeature feature) =>
      asJsObject(this).callMethod('contains', [__codec25.encode(feature)]);
  void forEach(callback(DataFeature p1)) {
    asJsObject(this).callMethod('forEach', [__codec27.encode(callback)]);
  }
  DataFeature getFeatureById(dynamic /*num|String*/ id) =>
      __codec25.decode(asJsObject(this).callMethod('getFeatureById', [id]));
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
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
      __codec24.encode(options),
      __codec29.encode(callback)
    ]);
  }
  void overrideStyle(DataFeature feature, DataStyleOptions style) {
    asJsObject(this).callMethod(
        'overrideStyle', [__codec25.encode(feature), __codec30.encode(style)]);
  }
  void remove(DataFeature feature) {
    asJsObject(this).callMethod('remove', [__codec25.encode(feature)]);
  }
  void revertStyle([DataFeature feature]) {
    asJsObject(this).callMethod('revertStyle', [__codec25.encode(feature)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
    asJsObject(this).callMethod('toGeoJson', [__codec31.encode(callback)]);
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
/// codec for DataDataOptions
final __codec23 = new JsInterfaceCodec<DataDataOptions>(
    (o) => new DataDataOptions.created(o));

/// codec for DataGeoJsonOptions
final __codec24 = new JsInterfaceCodec<DataGeoJsonOptions>(
    (o) => new DataGeoJsonOptions.created(o));

/// codec for DataFeature
final __codec25 =
    new JsInterfaceCodec<DataFeature>((o) => new DataFeature.created(o));

/// codec for List<DataFeature>
final __codec26 = new JsListCodec<DataFeature>(__codec25);

/// codec for (DataFeature) → dynamic
final __codec27 = new FunctionCodec /*<(DataFeature) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec25.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec25.encode(p_p1);
  return f.apply([p_p1]);
});

/// codec for GMap
final __codec28 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for (List<DataFeature>) → dynamic
final __codec29 = new FunctionCodec /*<(List<DataFeature>) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec26.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec26.encode(p_p1);
  return f.apply([p_p1]);
});

/// codec for DataStyleOptions
final __codec30 = new JsInterfaceCodec<DataStyleOptions>(
    (o) => new DataStyleOptions.created(o));

/// codec for (Object) → dynamic
final __codec31 = new FunctionCodec /*<(Object) → dynamic>*/ ((f) => f,
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

  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
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
    asJsObject(this)['shape'] = __codec32.encode(_shape);
  }
  MarkerShape get shape => __codec32.decode(asJsObject(this)['shape']);
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
/// codec for MarkerShape
final __codec32 =
    new JsInterfaceCodec<MarkerShape>((o) => new MarkerShape.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataFeature
// **************************************************************************

@JsName('google.maps.Data.Feature')
class DataFeature extends JsInterface implements _DataFeature {
  DataFeature.created(JsObject o) : super.created(o);
  DataFeature([DataFeatureOptions options]) : this.created(new JsObject(
          getPath('google.maps.Data.Feature'), [__codec33.encode(options)]));

  void forEachProperty(callback(dynamic p1, String p2)) {
    asJsObject(this).callMethod(
        'forEachProperty', [__codec34.encode(callback)]);
  }
  DataGeometry get geometry => _getGeometry();
  DataGeometry _getGeometry() =>
      __codec35.decode(asJsObject(this).callMethod('getGeometry'));
  dynamic /*num|String*/ get id => _getId();
  dynamic /*num|String*/ _getId() => asJsObject(this).callMethod('getId');
  dynamic getProperty(String name) =>
      asJsObject(this).callMethod('getProperty', [name]);
  void removeProperty(String name) {
    asJsObject(this).callMethod('removeProperty', [name]);
  }
  void set geometry(dynamic /*DataGeometry|LatLng*/ newGeometry) =>
      _setGeometry((new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometry>((o) => new DataGeometry.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Data.Geometry"))))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
          .encode(newGeometry));
  void _setGeometry(dynamic /*DataGeometry|LatLng*/ newGeometry) {
    asJsObject(this).callMethod('setGeometry', [newGeometry]);
  }
  void setProperty(String name, dynamic newValue) {
    asJsObject(this).callMethod('setProperty', [name, newValue]);
  }
  void toGeoJson(callback(Object p1)) {
    asJsObject(this).callMethod('toGeoJson', [__codec31.encode(callback)]);
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
/// codec for DataFeatureOptions
final __codec33 = new JsInterfaceCodec<DataFeatureOptions>(
    (o) => new DataFeatureOptions.created(o));

/// codec for (dynamic, String) → dynamic
final __codec34 = new FunctionCodec /*<(dynamic, String) → dynamic>*/ ((f) => f,
    (JsFunction f) => (p_p1, p_p2) {
  return f.apply([p_p1, p_p2]);
});

/// codec for DataGeometry
final __codec35 =
    new JsInterfaceCodec<DataGeometry>((o) => new DataGeometry.created(o));

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
  dynamic /*DataGeometry|LatLng*/ get geometry => (new ChainedCodec()
    ..add(new JsInterfaceCodec<DataGeometry>((o) => new DataGeometry.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Data.Geometry"))))
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
      .decode(_geometry);
  void set geometry(dynamic /*DataGeometry|LatLng*/ geometry) {
    _geometry = (new ChainedCodec()
      ..add(new JsInterfaceCodec<DataGeometry>(
          (o) => new DataGeometry.created(o), (o) =>
              o != null && o.instanceof(getPath("google.maps.Data.Geometry"))))
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
              (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
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
          getPath('google.maps.Data.Point'), [__codec6.encode(latLng)]));

  LatLng get() => __codec6.decode(asJsObject(this).callMethod('get'));
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
          getPath('google.maps.Data.MultiPoint'),
          [__codec36.encode(elements)]));

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec36.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec6.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for List<LatLng>
final __codec36 = new JsListCodec<LatLng>(__codec6);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataLineString
// **************************************************************************

@JsName('google.maps.Data.LineString')
class DataLineString extends DataGeometry implements _DataLineString {
  DataLineString.created(JsObject o) : super.created(o);
  DataLineString(List<LatLng> elements) : this.created(new JsObject(
          getPath('google.maps.Data.LineString'),
          [__codec36.encode(elements)]));

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec36.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec6.decode(asJsObject(this).callMethod('getAt', [n]));
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
      : this.created(new JsObject(getPath('google.maps.Data.MultiLineString'),
          [__codec37.encode(elements)]));

  List<DataLineString> get array => _getArray();
  List<DataLineString> _getArray() =>
      __codec39.decode(asJsObject(this).callMethod('getArray'));
  DataLineString getAt(num n) =>
      __codec38.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for List<dynamic>
final __codec37 = new JsListCodec<dynamic>(null);

/// codec for DataLineString
final __codec38 =
    new JsInterfaceCodec<DataLineString>((o) => new DataLineString.created(o));

/// codec for List<DataLineString>
final __codec39 = new JsListCodec<DataLineString>(__codec38);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataLinearRing
// **************************************************************************

@JsName('google.maps.Data.LinearRing')
class DataLinearRing extends DataGeometry implements _DataLinearRing {
  DataLinearRing.created(JsObject o) : super.created(o);
  DataLinearRing(List<LatLng> elements) : this.created(new JsObject(
          getPath('google.maps.Data.LinearRing'),
          [__codec36.encode(elements)]));

  List<LatLng> get array => _getArray();
  List<LatLng> _getArray() =>
      __codec36.decode(asJsObject(this).callMethod('getArray'));
  LatLng getAt(num n) =>
      __codec6.decode(asJsObject(this).callMethod('getAt', [n]));
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
      : this.created(new JsObject(
          getPath('google.maps.Data.Polygon'), [__codec37.encode(elements)]));

  List<DataLinearRing> get array => _getArray();
  List<DataLinearRing> _getArray() =>
      __codec41.decode(asJsObject(this).callMethod('getArray'));
  DataLinearRing getAt(num n) =>
      __codec40.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for DataLinearRing
final __codec40 =
    new JsInterfaceCodec<DataLinearRing>((o) => new DataLinearRing.created(o));

/// codec for List<DataLinearRing>
final __codec41 = new JsListCodec<DataLinearRing>(__codec40);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataMultiPolygon
// **************************************************************************

@JsName('google.maps.Data.MultiPolygon')
class DataMultiPolygon extends DataGeometry implements _DataMultiPolygon {
  DataMultiPolygon.created(JsObject o) : super.created(o);
  DataMultiPolygon(
      List<dynamic /*DataPolygon|List<dynamic/*DataLinearRing|List<LatLng>*/>*/ > elements)
      : this.created(new JsObject(getPath('google.maps.Data.MultiPolygon'),
          [__codec37.encode(elements)]));

  List<DataPolygon> get array => _getArray();
  List<DataPolygon> _getArray() =>
      __codec43.decode(asJsObject(this).callMethod('getArray'));
  DataPolygon getAt(num n) =>
      __codec42.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for DataPolygon
final __codec42 =
    new JsInterfaceCodec<DataPolygon>((o) => new DataPolygon.created(o));

/// codec for List<DataPolygon>
final __codec43 = new JsListCodec<DataPolygon>(__codec42);

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
          getPath('google.maps.Data.GeometryCollection'),
          [__codec37.encode(elements)]));

  List<DataGeometry> get array => _getArray();
  List<DataGeometry> _getArray() =>
      __codec44.decode(asJsObject(this).callMethod('getArray'));
  DataGeometry getAt(num n) =>
      __codec35.decode(asJsObject(this).callMethod('getAt', [n]));
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  String get type => _getType();
  String _getType() => asJsObject(this).callMethod('getType');
}
/// codec for List<DataGeometry>
final __codec44 = new JsListCodec<DataGeometry>(__codec35);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DataMouseEvent
// **************************************************************************

@anonymous
class DataMouseEvent extends MouseEvent implements _DataMouseEvent {
  DataMouseEvent.created(JsObject o) : super.created(o);
  DataMouseEvent() : this.created(new JsObject(context['Object']));

  void set feature(DataFeature _feature) {
    asJsObject(this)['feature'] = __codec25.encode(_feature);
  }
  DataFeature get feature => __codec25.decode(asJsObject(this)['feature']);
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
    asJsObject(this)['feature'] = __codec25.encode(_feature);
  }
  DataFeature get feature => __codec25.decode(asJsObject(this)['feature']);
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
    asJsObject(this)['feature'] = __codec25.encode(_feature);
  }
  DataFeature get feature => __codec25.decode(asJsObject(this)['feature']);
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
    asJsObject(this)['feature'] = __codec25.encode(_feature);
  }
  DataFeature get feature => __codec25.decode(asJsObject(this)['feature']);
  void set newGeometry(DataGeometry _newGeometry) {
    asJsObject(this)['newGeometry'] = __codec35.encode(_newGeometry);
  }
  DataGeometry get newGeometry =>
      __codec35.decode(asJsObject(this)['newGeometry']);
  void set oldGeometry(DataGeometry _oldGeometry) {
    asJsObject(this)['oldGeometry'] = __codec35.encode(_oldGeometry);
  }
  DataGeometry get oldGeometry =>
      __codec35.decode(asJsObject(this)['oldGeometry']);
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
    asJsObject(this)['feature'] = __codec25.encode(_feature);
  }
  DataFeature get feature => __codec25.decode(asJsObject(this)['feature']);
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
    asJsObject(this)['feature'] = __codec25.encode(_feature);
  }
  DataFeature get feature => __codec25.decode(asJsObject(this)['feature']);
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
  static get MAX_ZINDEX => getPath('google.maps.Marker')['MAX_ZINDEX'];

  Marker.created(JsObject o) : super.created(o);
  Marker([MarkerOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Marker'), [__codec45.encode(opts)]));

  Animation get animation => _getAnimation();
  Animation _getAnimation() =>
      __codec46.decode(asJsObject(this).callMethod('getAnimation'));
  Attribution get attribution => _getAttribution();
  Attribution _getAttribution() =>
      __codec47.decode(asJsObject(this).callMethod('getAttribution'));
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
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(getPath("google.maps.StreetViewPanorama")))))
      .decode(_getMap());
  _getMap() => asJsObject(this).callMethod('getMap');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  Place get place => _getPlace();
  Place _getPlace() =>
      __codec48.decode(asJsObject(this).callMethod('getPlace'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec6.decode(asJsObject(this).callMethod('getPosition'));
  MarkerShape get shape => _getShape();
  MarkerShape _getShape() =>
      __codec32.decode(asJsObject(this).callMethod('getShape'));
  String get title => _getTitle();
  String _getTitle() => asJsObject(this).callMethod('getTitle');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void set animation(Animation animation) => _setAnimation(animation);
  void _setAnimation(Animation animation) {
    asJsObject(this).callMethod('setAnimation', [__codec46.encode(animation)]);
  }
  void set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution) {
    asJsObject(this).callMethod(
        'setAttribution', [__codec47.encode(attribution)]);
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
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
        (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(getPath("google.maps.StreetViewPanorama")))))
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
    asJsObject(this).callMethod('setOptions', [__codec45.encode(options)]);
  }
  void set place(Place place) => _setPlace(place);
  void _setPlace(Place place) {
    asJsObject(this).callMethod('setPlace', [__codec48.encode(place)]);
  }
  void set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng) {
    asJsObject(this).callMethod('setPosition', [__codec6.encode(latlng)]);
  }
  void set shape(MarkerShape shape) => _setShape(shape);
  void _setShape(MarkerShape shape) {
    asJsObject(this).callMethod('setShape', [__codec32.encode(shape)]);
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
/// codec for MarkerOptions
final __codec45 =
    new JsInterfaceCodec<MarkerOptions>((o) => new MarkerOptions.created(o));

/// codec for Animation
final __codec46 = new BiMapCodec<Animation, dynamic>({
  Animation.BOUNCE: getPath('google.maps.Animation')['BOUNCE'],
  Animation.DROP: getPath('google.maps.Animation')['DROP']
});

/// codec for Attribution
final __codec47 =
    new JsInterfaceCodec<Attribution>((o) => new Attribution.created(o));

/// codec for Place
final __codec48 = new JsInterfaceCodec<Place>((o) => new Place.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MarkerOptions
// **************************************************************************

@anonymous
class MarkerOptions extends JsInterface implements _MarkerOptions {
  MarkerOptions.created(JsObject o) : super.created(o);
  MarkerOptions() : this.created(new JsObject(context['Object']));

  void set anchorPoint(Point _anchorPoint) {
    asJsObject(this)['anchorPoint'] = __codec49.encode(_anchorPoint);
  }
  Point get anchorPoint => __codec49.decode(asJsObject(this)['anchorPoint']);
  void set animation(Animation _animation) {
    asJsObject(this)['animation'] = __codec46.encode(_animation);
  }
  Animation get animation => __codec46.decode(asJsObject(this)['animation']);
  void set attribution(Attribution _attribution) {
    asJsObject(this)['attribution'] = __codec47.encode(_attribution);
  }
  Attribution get attribution =>
      __codec47.decode(asJsObject(this)['attribution']);
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
  void set _map(dynamic __map) {
    asJsObject(this)['map'] = __map;
  }
  dynamic get _map => asJsObject(this)['map'];
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(getPath("google.maps.StreetViewPanorama")))))
      .decode(_map);
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) {
    _map = (new ChainedCodec()
      ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
      ..add(new JsInterfaceCodec<StreetViewPanorama>(
              (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                  o.instanceof(getPath("google.maps.StreetViewPanorama")))))
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
  void set place(Place _place) {
    asJsObject(this)['place'] = __codec48.encode(_place);
  }
  Place get place => __codec48.decode(asJsObject(this)['place']);
  void set position(LatLng _position) {
    asJsObject(this)['position'] = __codec6.encode(_position);
  }
  LatLng get position => __codec6.decode(asJsObject(this)['position']);
  void set shape(MarkerShape _shape) {
    asJsObject(this)['shape'] = __codec32.encode(_shape);
  }
  MarkerShape get shape => __codec32.decode(asJsObject(this)['shape']);
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
/// codec for Point
final __codec49 = new JsInterfaceCodec<Point>((o) => new Point.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Icon
// **************************************************************************

@anonymous
class Icon extends JsInterface implements _Icon {
  Icon.created(JsObject o) : super.created(o);
  Icon() : this.created(new JsObject(context['Object']));

  void set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec49.encode(_anchor);
  }
  Point get anchor => __codec49.decode(asJsObject(this)['anchor']);
  void set origin(Point _origin) {
    asJsObject(this)['origin'] = __codec49.encode(_origin);
  }
  Point get origin => __codec49.decode(asJsObject(this)['origin']);
  void set scaledSize(Size _scaledSize) {
    asJsObject(this)['scaledSize'] = __codec50.encode(_scaledSize);
  }
  Size get scaledSize => __codec50.decode(asJsObject(this)['scaledSize']);
  void set size(Size _size) {
    asJsObject(this)['size'] = __codec50.encode(_size);
  }
  Size get size => __codec50.decode(asJsObject(this)['size']);
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
}
/// codec for Size
final __codec50 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MarkerShape
// **************************************************************************

@anonymous
class MarkerShape extends JsInterface implements _MarkerShape {
  MarkerShape.created(JsObject o) : super.created(o);
  MarkerShape() : this.created(new JsObject(context['Object']));

  void set coords(List<num> _coords) {
    asJsObject(this)['coords'] = __codec51.encode(_coords);
  }
  List<num> get coords => __codec51.decode(asJsObject(this)['coords']);
  void set type(String _type) {
    asJsObject(this)['type'] = _type;
  }
  String get type => asJsObject(this)['type'];
}
/// codec for List<num>
final __codec51 = new JsListCodec<num>(null);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _GSymbol
// **************************************************************************

@anonymous
class GSymbol extends JsInterface implements _GSymbol {
  GSymbol.created(JsObject o) : super.created(o);
  GSymbol() : this.created(new JsObject(context['Object']));

  void set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec49.encode(_anchor);
  }
  Point get anchor => __codec49.decode(asJsObject(this)['anchor']);
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  void set _path(dynamic __path) {
    asJsObject(this)['path'] = __path;
  }
  dynamic get _path => asJsObject(this)['path'];
  dynamic /*SymbolPath|String*/ get path => (new ChainedCodec()
    ..add(new BiMapCodec<SymbolPath, dynamic>({
      SymbolPath.BACKWARD_CLOSED_ARROW:
          getPath('google.maps.SymbolPath')['BACKWARD_CLOSED_ARROW'],
      SymbolPath.BACKWARD_OPEN_ARROW:
          getPath('google.maps.SymbolPath')['BACKWARD_OPEN_ARROW'],
      SymbolPath.CIRCLE: getPath('google.maps.SymbolPath')['CIRCLE'],
      SymbolPath.FORWARD_CLOSED_ARROW:
          getPath('google.maps.SymbolPath')['FORWARD_CLOSED_ARROW'],
      SymbolPath.FORWARD_OPEN_ARROW:
          getPath('google.maps.SymbolPath')['FORWARD_OPEN_ARROW']
    }))
    ..add(new IdentityCodec<String>())).decode(_path);
  void set path(dynamic /*SymbolPath|String*/ path) {
    _path = (new ChainedCodec()
      ..add(new BiMapCodec<SymbolPath, dynamic>({
        SymbolPath.BACKWARD_CLOSED_ARROW:
            getPath('google.maps.SymbolPath')['BACKWARD_CLOSED_ARROW'],
        SymbolPath.BACKWARD_OPEN_ARROW:
            getPath('google.maps.SymbolPath')['BACKWARD_OPEN_ARROW'],
        SymbolPath.CIRCLE: getPath('google.maps.SymbolPath')['CIRCLE'],
        SymbolPath.FORWARD_CLOSED_ARROW:
            getPath('google.maps.SymbolPath')['FORWARD_CLOSED_ARROW'],
        SymbolPath.FORWARD_OPEN_ARROW:
            getPath('google.maps.SymbolPath')['FORWARD_OPEN_ARROW']
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
// Target: abstract class _InfoWindow
// **************************************************************************

@JsName('google.maps.InfoWindow')
class InfoWindow extends MVCObject implements _InfoWindow {
  InfoWindow.created(JsObject o) : super.created(o);
  InfoWindow([InfoWindowOptions opts]) : this.created(new JsObject(
          getPath('google.maps.InfoWindow'), [__codec52.encode(opts)]));

  void close() {
    asJsObject(this).callMethod('close');
  }
  dynamic /*String|Node*/ get content => _getContent();
  dynamic /*String|Node*/ _getContent() =>
      asJsObject(this).callMethod('getContent');
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec6.decode(asJsObject(this).callMethod('getPosition'));
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void open([dynamic /*GMap|StreetViewPanorama*/ map, MVCObject anchor]) {
    _open((new ChainedCodec()
      ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
      ..add(new JsInterfaceCodec<StreetViewPanorama>(
          (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                  o.instanceof(getPath("google.maps.StreetViewPanorama")))))
            .encode(map), anchor);
  }
  _open([dynamic /*GMap|StreetViewPanorama*/ map, MVCObject anchor]) =>
      asJsObject(this).callMethod('open', [map, __codec53.encode(anchor)]);
  void set content(dynamic /*String|Node*/ content) => _setContent(content);
  void _setContent(dynamic /*String|Node*/ content) {
    asJsObject(this).callMethod('setContent', [content]);
  }
  void set options(InfoWindowOptions options) => _setOptions(options);
  void _setOptions(InfoWindowOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec52.encode(options)]);
  }
  void set position(LatLng position) => _setPosition(position);
  void _setPosition(LatLng position) {
    asJsObject(this).callMethod('setPosition', [__codec6.encode(position)]);
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
/// codec for InfoWindowOptions
final __codec52 = new JsInterfaceCodec<InfoWindowOptions>(
    (o) => new InfoWindowOptions.created(o));

/// codec for MVCObject
final __codec53 =
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
    asJsObject(this)['pixelOffset'] = __codec50.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec50.decode(asJsObject(this)['pixelOffset']);
  void set position(LatLng _position) {
    asJsObject(this)['position'] = __codec6.encode(_position);
  }
  LatLng get position => __codec6.decode(asJsObject(this)['position']);
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
          getPath('google.maps.Polyline'), [__codec54.encode(opts)]));

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(getPath("google.maps.LatLng"))))))
          .decode(
              _getPath());
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
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
  }
  void set options(PolylineOptions options) => _setOptions(options);
  void _setOptions(PolylineOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec54.encode(options)]);
  }
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath(
      (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) =>
                    o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
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
/// codec for PolylineOptions
final __codec54 = new JsInterfaceCodec<PolylineOptions>(
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
    asJsObject(this)['icons'] = __codec56.encode(_icons);
  }
  List<IconSequence> get icons => __codec56.decode(asJsObject(this)['icons']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
  void set _path(dynamic __path) {
    asJsObject(this)['path'] = __path;
  }
  dynamic get _path => asJsObject(this)['path'];
  dynamic /*MVCArray<LatLng>|List<LatLng>*/ get path => (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) =>
                    o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
      .decode(_path);
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    _path = (new ChainedCodec()
      ..add(
          new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(getPath("google.maps.LatLng"))))))
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
              (o) => new LatLng.created(o), (o) =>
                  o != null && o.instanceof(getPath("google.maps.LatLng"))))))
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
/// codec for IconSequence
final __codec55 =
    new JsInterfaceCodec<IconSequence>((o) => new IconSequence.created(o));

/// codec for List<IconSequence>
final __codec56 = new JsListCodec<IconSequence>(__codec55);

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
    asJsObject(this)['icon'] = __codec57.encode(_icon);
  }
  GSymbol get icon => __codec57.decode(asJsObject(this)['icon']);
  void set offset(String _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  String get offset => asJsObject(this)['offset'];
  void set repeat(String _repeat) {
    asJsObject(this)['repeat'] = _repeat;
  }
  String get repeat => asJsObject(this)['repeat'];
}
/// codec for GSymbol
final __codec57 = new JsInterfaceCodec<GSymbol>((o) => new GSymbol.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Polygon
// **************************************************************************

@JsName('google.maps.Polygon')
class Polygon extends MVCObject implements _Polygon {
  Polygon.created(JsObject o) : super.created(o);
  Polygon([PolygonOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Polygon'), [__codec58.encode(opts)]));

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(getPath("google.maps.LatLng"))))))
          .decode(
              _getPath());
  _getPath() => asJsObject(this).callMethod('getPath');
  MVCArray<MVCArray<LatLng>> get paths =>
      (new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
              (o) =>
                  new MVCArray<MVCArray<LatLng>>.created(
                      o,
                      new JsInterfaceCodec<MVCArray<LatLng>>(
                          (o) => new MVCArray<LatLng>.created(o,
                              new JsInterfaceCodec<LatLng>(
                                  (o) => new LatLng.created(o),
                                  (o) => o != null &&
                                      o.instanceof(
                                          getPath("google.maps.LatLng"))))))))
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
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
  }
  void set options(PolygonOptions options) => _setOptions(options);
  void _setOptions(PolygonOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec58.encode(options)]);
  }
  void set path(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath(
      (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) =>
                    o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
      .encode(path));
  void _setPath(dynamic /*MVCArray<LatLng>|List<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [path]);
  }
  void set paths(
          dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) =>
      _setPaths((new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
            (o) =>
                new MVCArray<MVCArray<LatLng>>.created(
                    o,
                    new JsInterfaceCodec<MVCArray<LatLng>>(
                        (o) => new MVCArray<LatLng>.created(o,
                            new JsInterfaceCodec<LatLng>(
                                (o) => new LatLng.created(o),
                                (o) => o != null &&
                                    o.instanceof(
                                        getPath("google.maps.LatLng"))))))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) =>
                    o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<List<LatLng>>(new JsListCodec<LatLng>(
        new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
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
/// codec for PolygonOptions
final __codec58 =
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
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
  void set _paths(dynamic __paths) {
    asJsObject(this)['paths'] = __paths;
  }
  dynamic get _paths => asJsObject(this)['paths'];
  dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ get paths =>
      (new ChainedCodec()
    ..add(
        new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
            (o) =>
                new MVCArray<MVCArray<LatLng>>.created(
                    o,
                    new JsInterfaceCodec<MVCArray<LatLng>>(
                        (o) => new MVCArray<LatLng>.created(o,
                            new JsInterfaceCodec<LatLng>(
                                (o) => new LatLng.created(o),
                                (o) => o != null &&
                                    o.instanceof(
                                        getPath("google.maps.LatLng"))))))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) =>
                    o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<List<LatLng>>(new JsListCodec<LatLng>(
        new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
            (o) => new LatLng.created(o),
            (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))))
      .decode(_paths);
  void set paths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    _paths = (new ChainedCodec()
      ..add(
          new JsInterfaceCodec<MVCArray<MVCArray<LatLng>>>(
              (o) =>
                  new MVCArray<MVCArray<LatLng>>.created(
                      o,
                      new JsInterfaceCodec<MVCArray<LatLng>>(
                          (o) => new MVCArray<LatLng>.created(o,
                              new JsInterfaceCodec<LatLng>(
                                  (o) => new LatLng.created(o),
                                  (o) => o != null &&
                                      o.instanceof(
                                          getPath("google.maps.LatLng"))))))))
      ..add(
          new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(getPath("google.maps.LatLng"))))))
      ..add(new JsListCodec<List<LatLng>>(new JsListCodec<LatLng>(
          new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
              o != null && o.instanceof(getPath("google.maps.LatLng"))))))
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
              (o) => new LatLng.created(o), (o) =>
                  o != null && o.instanceof(getPath("google.maps.LatLng"))))))
        .encode(paths);
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
    asJsObject(this)['strokePosition'] = __codec59.encode(_strokePosition);
  }
  StrokePosition get strokePosition =>
      __codec59.decode(asJsObject(this)['strokePosition']);
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
/// codec for StrokePosition
final __codec59 = new BiMapCodec<StrokePosition, dynamic>({
  StrokePosition.CENTER: getPath('google.maps.StrokePosition')['CENTER'],
  StrokePosition.INSIDE: getPath('google.maps.StrokePosition')['INSIDE'],
  StrokePosition.OUTSIDE: getPath('google.maps.StrokePosition')['OUTSIDE']
});

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
          getPath('google.maps.Rectangle'), [__codec60.encode(opts)]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec5.decode(asJsObject(this).callMethod('getBounds'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec5.encode(bounds)]);
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
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
  }
  void set options(RectangleOptions options) => _setOptions(options);
  void _setOptions(RectangleOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec60.encode(options)]);
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
/// codec for RectangleOptions
final __codec60 = new JsInterfaceCodec<RectangleOptions>(
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
    asJsObject(this)['bounds'] = __codec5.encode(_bounds);
  }
  LatLngBounds get bounds => __codec5.decode(asJsObject(this)['bounds']);
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
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokePosition(StrokePosition _strokePosition) {
    asJsObject(this)['strokePosition'] = __codec59.encode(_strokePosition);
  }
  StrokePosition get strokePosition =>
      __codec59.decode(asJsObject(this)['strokePosition']);
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
          getPath('google.maps.Circle'), [__codec61.encode(opts)]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec5.decode(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec6.decode(asJsObject(this).callMethod('getCenter'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  num get radius => _getRadius();
  num _getRadius() => asJsObject(this).callMethod('getRadius');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set center(LatLng center) => _setCenter(center);
  void _setCenter(LatLng center) {
    asJsObject(this).callMethod('setCenter', [__codec6.encode(center)]);
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
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
  }
  void set options(CircleOptions options) => _setOptions(options);
  void _setOptions(CircleOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec61.encode(options)]);
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
/// codec for CircleOptions
final __codec61 =
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
    asJsObject(this)['center'] = __codec6.encode(_center);
  }
  LatLng get center => __codec6.decode(asJsObject(this)['center']);
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
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
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
    asJsObject(this)['strokePosition'] = __codec59.encode(_strokePosition);
  }
  StrokePosition get strokePosition =>
      __codec59.decode(asJsObject(this)['strokePosition']);
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
// Target: abstract class _GroundOverlay
// **************************************************************************

@JsName('google.maps.GroundOverlay')
class GroundOverlay extends MVCObject implements _GroundOverlay {
  GroundOverlay.created(JsObject o) : super.created(o);
  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts])
      : this.created(new JsObject(getPath('google.maps.GroundOverlay'), [
        url,
        __codec5.encode(bounds),
        __codec62.encode(opts)
      ]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec5.decode(asJsObject(this).callMethod('getBounds'));
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
/// codec for GroundOverlayOptions
final __codec62 = new JsInterfaceCodec<GroundOverlayOptions>(
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
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
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
      : this.created(new JsObject(getPath('google.maps.OverlayView')));

  void draw() {
    asJsObject(this).callMethod('draw');
  }
  dynamic /*GMap|StreetViewPanorama*/ get map => (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
            (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(getPath("google.maps.StreetViewPanorama")))))
      .decode(_getMap());
  _getMap() => asJsObject(this).callMethod('getMap');
  MapPanes get panes => _getPanes();
  MapPanes _getPanes() =>
      __codec63.decode(asJsObject(this).callMethod('getPanes'));
  MapCanvasProjection get projection => _getProjection();
  MapCanvasProjection _getProjection() =>
      __codec64.decode(asJsObject(this).callMethod('getProjection'));
  void onAdd() {
    asJsObject(this).callMethod('onAdd');
  }
  void onRemove() {
    asJsObject(this).callMethod('onRemove');
  }
  void set map(dynamic /*GMap|StreetViewPanorama*/ map) => _setMap(
      (new ChainedCodec()
    ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Map"))))
    ..add(new JsInterfaceCodec<StreetViewPanorama>(
        (o) => new StreetViewPanorama.created(o), (o) => o != null &&
                o.instanceof(getPath("google.maps.StreetViewPanorama")))))
          .encode(map));
  void _setMap(dynamic /*GMap|StreetViewPanorama*/ map) {
    asJsObject(this).callMethod('setMap', [map]);
  }
}
/// codec for MapPanes
final __codec63 =
    new JsInterfaceCodec<MapPanes>((o) => new MapPanes.created(o));

/// codec for MapCanvasProjection
final __codec64 = new JsInterfaceCodec<MapCanvasProjection>(
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

  LatLng fromContainerPixelToLatLng(Point pixel, [bool nowrap]) => __codec6
      .decode(asJsObject(this).callMethod(
          'fromContainerPixelToLatLng', [__codec49.encode(pixel), nowrap]));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) => __codec6.decode(
      asJsObject(this).callMethod(
          'fromDivPixelToLatLng', [__codec49.encode(pixel), nowrap]));
  Point fromLatLngToContainerPixel(LatLng latLng) => __codec49.decode(
      asJsObject(this).callMethod(
          'fromLatLngToContainerPixel', [__codec6.encode(latLng)]));
  Point fromLatLngToDivPixel(LatLng latLng) => __codec49.decode(asJsObject(this)
      .callMethod('fromLatLngToDivPixel', [__codec6.encode(latLng)]));
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
  Geocoder() : this.created(new JsObject(getPath('google.maps.Geocoder')));

  void geocode(GeocoderRequest request,
      callback(List<GeocoderResult> p1, GeocoderStatus p2)) {
    asJsObject(this).callMethod(
        'geocode', [__codec65.encode(request), __codec69.encode(callback)]);
  }
}
/// codec for GeocoderRequest
final __codec65 = new JsInterfaceCodec<GeocoderRequest>(
    (o) => new GeocoderRequest.created(o));

/// codec for GeocoderResult
final __codec66 =
    new JsInterfaceCodec<GeocoderResult>((o) => new GeocoderResult.created(o));

/// codec for List<GeocoderResult>
final __codec67 = new JsListCodec<GeocoderResult>(__codec66);

/// codec for GeocoderStatus
final __codec68 = new BiMapCodec<GeocoderStatus, dynamic>({
  GeocoderStatus.ERROR: getPath('google.maps.GeocoderStatus')['ERROR'],
  GeocoderStatus.INVALID_REQUEST:
      getPath('google.maps.GeocoderStatus')['INVALID_REQUEST'],
  GeocoderStatus.OK: getPath('google.maps.GeocoderStatus')['OK'],
  GeocoderStatus.OVER_QUERY_LIMIT:
      getPath('google.maps.GeocoderStatus')['OVER_QUERY_LIMIT'],
  GeocoderStatus.REQUEST_DENIED:
      getPath('google.maps.GeocoderStatus')['REQUEST_DENIED'],
  GeocoderStatus.UNKNOWN_ERROR:
      getPath('google.maps.GeocoderStatus')['UNKNOWN_ERROR'],
  GeocoderStatus.ZERO_RESULTS:
      getPath('google.maps.GeocoderStatus')['ZERO_RESULTS']
});

/// codec for (List<GeocoderResult>, GeocoderStatus) → dynamic
final __codec69 =
    new FunctionCodec /*<(List<GeocoderResult>, GeocoderStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec67.decode(p_p1);
  p_p2 = __codec68.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec67.encode(p_p1);
  p_p2 = __codec68.encode(p_p2);
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
    asJsObject(this)['bounds'] = __codec5.encode(_bounds);
  }
  LatLngBounds get bounds => __codec5.decode(asJsObject(this)['bounds']);
  void set componentRestrictions(
      GeocoderComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec70.encode(_componentRestrictions);
  }
  GeocoderComponentRestrictions get componentRestrictions =>
      __codec70.decode(asJsObject(this)['componentRestrictions']);
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec6.encode(_location);
  }
  LatLng get location => __codec6.decode(asJsObject(this)['location']);
  void set region(String _region) {
    asJsObject(this)['region'] = _region;
  }
  String get region => asJsObject(this)['region'];
}
/// codec for GeocoderComponentRestrictions
final __codec70 = new JsInterfaceCodec<GeocoderComponentRestrictions>(
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
// Target: abstract class _GeocoderResult
// **************************************************************************

@anonymous
class GeocoderResult extends JsInterface implements _GeocoderResult {
  GeocoderResult.created(JsObject o) : super.created(o);
  GeocoderResult() : this.created(new JsObject(context['Object']));

  void set _address_components(
      List<GeocoderAddressComponent> __address_components) {
    asJsObject(this)['address_components'] =
        __codec72.encode(__address_components);
  }
  List<GeocoderAddressComponent> get _address_components =>
      __codec72.decode(asJsObject(this)['address_components']);
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
    asJsObject(this)['geometry'] = __codec73.encode(_geometry);
  }
  GeocoderGeometry get geometry =>
      __codec73.decode(asJsObject(this)['geometry']);
  void set _partial_match(bool __partial_match) {
    asJsObject(this)['partial_match'] = __partial_match;
  }
  bool get _partial_match => asJsObject(this)['partial_match'];
  bool get partialMatch => _partial_match;
  void set partialMatch(bool partialMatch) {
    _partial_match = partialMatch;
  }
  void set _postcode_localities(List<String> __postcode_localities) {
    asJsObject(this)['postcode_localities'] =
        __codec74.encode(__postcode_localities);
  }
  List<String> get _postcode_localities =>
      __codec74.decode(asJsObject(this)['postcode_localities']);
  List<String> get postcodeLocalities => _postcode_localities;
  void set postcodeLocalities(List<String> postcodeLocalities) {
    _postcode_localities = postcodeLocalities;
  }
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec74.encode(_types);
  }
  List<String> get types => __codec74.decode(asJsObject(this)['types']);
}
/// codec for GeocoderAddressComponent
final __codec71 = new JsInterfaceCodec<GeocoderAddressComponent>(
    (o) => new GeocoderAddressComponent.created(o));

/// codec for List<GeocoderAddressComponent>
final __codec72 = new JsListCodec<GeocoderAddressComponent>(__codec71);

/// codec for GeocoderGeometry
final __codec73 = new JsInterfaceCodec<GeocoderGeometry>(
    (o) => new GeocoderGeometry.created(o));

/// codec for List<String>
final __codec74 = new JsListCodec<String>(null);

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
    asJsObject(this)['types'] = __codec74.encode(_types);
  }
  List<String> get types => __codec74.decode(asJsObject(this)['types']);
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
    asJsObject(this)['bounds'] = __codec5.encode(_bounds);
  }
  LatLngBounds get bounds => __codec5.decode(asJsObject(this)['bounds']);
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec6.encode(_location);
  }
  LatLng get location => __codec6.decode(asJsObject(this)['location']);
  void set _location_type(GeocoderLocationType __location_type) {
    asJsObject(this)['location_type'] = __codec75.encode(__location_type);
  }
  GeocoderLocationType get _location_type =>
      __codec75.decode(asJsObject(this)['location_type']);
  GeocoderLocationType get locationType => _location_type;
  void set locationType(GeocoderLocationType locationType) {
    _location_type = locationType;
  }
  void set viewport(LatLngBounds _viewport) {
    asJsObject(this)['viewport'] = __codec5.encode(_viewport);
  }
  LatLngBounds get viewport => __codec5.decode(asJsObject(this)['viewport']);
}
/// codec for GeocoderLocationType
final __codec75 = new BiMapCodec<GeocoderLocationType, dynamic>({
  GeocoderLocationType.APPROXIMATE:
      getPath('google.maps.GeocoderLocationType')['APPROXIMATE'],
  GeocoderLocationType.GEOMETRIC_CENTER:
      getPath('google.maps.GeocoderLocationType')['GEOMETRIC_CENTER'],
  GeocoderLocationType.RANGE_INTERPOLATED:
      getPath('google.maps.GeocoderLocationType')['RANGE_INTERPOLATED'],
  GeocoderLocationType.ROOFTOP:
      getPath('google.maps.GeocoderLocationType')['ROOFTOP']
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsRenderer
// **************************************************************************

@JsName('google.maps.DirectionsRenderer')
class DirectionsRenderer extends MVCObject implements _DirectionsRenderer {
  DirectionsRenderer.created(JsObject o) : super.created(o);
  DirectionsRenderer([DirectionsRendererOptions opts])
      : this.created(new JsObject(
          getPath('google.maps.DirectionsRenderer'), [__codec76.encode(opts)]));

  DirectionsResult get directions => _getDirections();
  DirectionsResult _getDirections() =>
      __codec77.decode(asJsObject(this).callMethod('getDirections'));
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  Node get panel => _getPanel();
  Node _getPanel() => asJsObject(this).callMethod('getPanel');
  num get routeIndex => _getRouteIndex();
  num _getRouteIndex() => asJsObject(this).callMethod('getRouteIndex');
  void set directions(DirectionsResult directions) =>
      _setDirections(directions);
  void _setDirections(DirectionsResult directions) {
    asJsObject(this).callMethod(
        'setDirections', [__codec77.encode(directions)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
  }
  void set options(DirectionsRendererOptions options) => _setOptions(options);
  void _setOptions(DirectionsRendererOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec76.encode(options)]);
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
/// codec for DirectionsRendererOptions
final __codec76 = new JsInterfaceCodec<DirectionsRendererOptions>(
    (o) => new DirectionsRendererOptions.created(o));

/// codec for DirectionsResult
final __codec77 = new JsInterfaceCodec<DirectionsResult>(
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
    asJsObject(this)['directions'] = __codec77.encode(_directions);
  }
  DirectionsResult get directions =>
      __codec77.decode(asJsObject(this)['directions']);
  void set draggable(bool _draggable) {
    asJsObject(this)['draggable'] = _draggable;
  }
  bool get draggable => asJsObject(this)['draggable'];
  void set hideRouteList(bool _hideRouteList) {
    asJsObject(this)['hideRouteList'] = _hideRouteList;
  }
  bool get hideRouteList => asJsObject(this)['hideRouteList'];
  void set infoWindow(InfoWindow _infoWindow) {
    asJsObject(this)['infoWindow'] = __codec78.encode(_infoWindow);
  }
  InfoWindow get infoWindow => __codec78.decode(asJsObject(this)['infoWindow']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
  void set markerOptions(MarkerOptions _markerOptions) {
    asJsObject(this)['markerOptions'] = __codec45.encode(_markerOptions);
  }
  MarkerOptions get markerOptions =>
      __codec45.decode(asJsObject(this)['markerOptions']);
  void set panel(Node _panel) {
    asJsObject(this)['panel'] = _panel;
  }
  Node get panel => asJsObject(this)['panel'];
  void set polylineOptions(PolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec54.encode(_polylineOptions);
  }
  PolylineOptions get polylineOptions =>
      __codec54.decode(asJsObject(this)['polylineOptions']);
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
/// codec for InfoWindow
final __codec78 =
    new JsInterfaceCodec<InfoWindow>((o) => new InfoWindow.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsService
// **************************************************************************

@JsName('google.maps.DirectionsService')
class DirectionsService extends JsInterface implements _DirectionsService {
  DirectionsService.created(JsObject o) : super.created(o);
  DirectionsService()
      : this.created(new JsObject(getPath('google.maps.DirectionsService')));

  void route(DirectionsRequest request,
      callback(DirectionsResult p1, DirectionsStatus p2)) {
    asJsObject(this).callMethod(
        'route', [__codec79.encode(request), __codec81.encode(callback)]);
  }
}
/// codec for DirectionsRequest
final __codec79 = new JsInterfaceCodec<DirectionsRequest>(
    (o) => new DirectionsRequest.created(o));

/// codec for DirectionsStatus
final __codec80 = new BiMapCodec<DirectionsStatus, dynamic>({
  DirectionsStatus.INVALID_REQUEST:
      getPath('google.maps.DirectionsStatus')['INVALID_REQUEST'],
  DirectionsStatus.MAX_WAYPOINTS_EXCEEDED:
      getPath('google.maps.DirectionsStatus')['MAX_WAYPOINTS_EXCEEDED'],
  DirectionsStatus.NOT_FOUND:
      getPath('google.maps.DirectionsStatus')['NOT_FOUND'],
  DirectionsStatus.OK: getPath('google.maps.DirectionsStatus')['OK'],
  DirectionsStatus.OVER_QUERY_LIMIT:
      getPath('google.maps.DirectionsStatus')['OVER_QUERY_LIMIT'],
  DirectionsStatus.REQUEST_DENIED:
      getPath('google.maps.DirectionsStatus')['REQUEST_DENIED'],
  DirectionsStatus.UNKNOWN_ERROR:
      getPath('google.maps.DirectionsStatus')['UNKNOWN_ERROR'],
  DirectionsStatus.ZERO_RESULTS:
      getPath('google.maps.DirectionsStatus')['ZERO_RESULTS']
});

/// codec for (DirectionsResult, DirectionsStatus) → dynamic
final __codec81 =
    new FunctionCodec /*<(DirectionsResult, DirectionsStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec77.decode(p_p1);
  p_p2 = __codec80.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec77.encode(p_p1);
  p_p2 = __codec80.encode(p_p2);
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
  dynamic /*LatLng|String*/ get destination => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
    ..add(new IdentityCodec<String>())).decode(_destination);
  void set destination(dynamic /*LatLng|String*/ destination) {
    _destination = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
      ..add(new IdentityCodec<String>())).encode(destination);
  }
  void set durationInTraffic(bool _durationInTraffic) {
    asJsObject(this)['durationInTraffic'] = _durationInTraffic;
  }
  bool get durationInTraffic => asJsObject(this)['durationInTraffic'];
  void set optimizeWaypoints(bool _optimizeWaypoints) {
    asJsObject(this)['optimizeWaypoints'] = _optimizeWaypoints;
  }
  bool get optimizeWaypoints => asJsObject(this)['optimizeWaypoints'];
  void set _origin(dynamic __origin) {
    asJsObject(this)['origin'] = __origin;
  }
  dynamic get _origin => asJsObject(this)['origin'];
  dynamic /*LatLng|String*/ get origin => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
    ..add(new IdentityCodec<String>())).decode(_origin);
  void set origin(dynamic /*LatLng|String*/ origin) {
    _origin = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
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
    asJsObject(this)['transitOptions'] = __codec82.encode(_transitOptions);
  }
  TransitOptions get transitOptions =>
      __codec82.decode(asJsObject(this)['transitOptions']);
  void set travelMode(TravelMode _travelMode) {
    asJsObject(this)['travelMode'] = __codec83.encode(_travelMode);
  }
  TravelMode get travelMode => __codec83.decode(asJsObject(this)['travelMode']);
  void set unitSystem(UnitSystem _unitSystem) {
    asJsObject(this)['unitSystem'] = __codec84.encode(_unitSystem);
  }
  UnitSystem get unitSystem => __codec84.decode(asJsObject(this)['unitSystem']);
  void set waypoints(List<DirectionsWaypoint> _waypoints) {
    asJsObject(this)['waypoints'] = __codec86.encode(_waypoints);
  }
  List<DirectionsWaypoint> get waypoints =>
      __codec86.decode(asJsObject(this)['waypoints']);
}
/// codec for TransitOptions
final __codec82 =
    new JsInterfaceCodec<TransitOptions>((o) => new TransitOptions.created(o));

/// codec for TravelMode
final __codec83 = new BiMapCodec<TravelMode, dynamic>({
  TravelMode.BICYCLING: getPath('google.maps.TravelMode')['BICYCLING'],
  TravelMode.DRIVING: getPath('google.maps.TravelMode')['DRIVING'],
  TravelMode.TRANSIT: getPath('google.maps.TravelMode')['TRANSIT'],
  TravelMode.WALKING: getPath('google.maps.TravelMode')['WALKING']
});

/// codec for UnitSystem
final __codec84 = new BiMapCodec<UnitSystem, dynamic>({
  UnitSystem.IMPERIAL: getPath('google.maps.UnitSystem')['IMPERIAL'],
  UnitSystem.METRIC: getPath('google.maps.UnitSystem')['METRIC']
});

/// codec for DirectionsWaypoint
final __codec85 = new JsInterfaceCodec<DirectionsWaypoint>(
    (o) => new DirectionsWaypoint.created(o));

/// codec for List<DirectionsWaypoint>
final __codec86 = new JsListCodec<DirectionsWaypoint>(__codec85);

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
    asJsObject(this)['modes'] = __codec88.encode(_modes);
  }
  List<TransitMode> get modes => __codec88.decode(asJsObject(this)['modes']);
  void set routingPreference(TransitRoutePreference _routingPreference) {
    asJsObject(this)['routingPreference'] =
        __codec89.encode(_routingPreference);
  }
  TransitRoutePreference get routingPreference =>
      __codec89.decode(asJsObject(this)['routingPreference']);
}
/// codec for TransitMode
final __codec87 = new BiMapCodec<TransitMode, dynamic>({
  TransitMode.BUS: getPath('google.maps.TransitMode')['BUS'],
  TransitMode.RAIL: getPath('google.maps.TransitMode')['RAIL'],
  TransitMode.SUBWAY: getPath('google.maps.TransitMode')['SUBWAY'],
  TransitMode.TRAIN: getPath('google.maps.TransitMode')['TRAIN'],
  TransitMode.TRAM: getPath('google.maps.TransitMode')['TRAM']
});

/// codec for List<TransitMode>
final __codec88 = new JsListCodec<TransitMode>(__codec87);

/// codec for TransitRoutePreference
final __codec89 = new BiMapCodec<TransitRoutePreference, dynamic>({
  TransitRoutePreference.FEWER_TRANSFERS:
      getPath('google.maps.TransitRoutePreference')['FEWER_TRANSFERS'],
  TransitRoutePreference.LESS_WALKING:
      getPath('google.maps.TransitRoutePreference')['LESS_WALKING']
});

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
  dynamic /*LatLng|String*/ get location => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
    ..add(new IdentityCodec<String>())).decode(_location);
  void set location(dynamic /*LatLng|String*/ location) {
    _location = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
      ..add(new IdentityCodec<String>())).encode(location);
  }
  void set stopover(bool _stopover) {
    asJsObject(this)['stopover'] = _stopover;
  }
  bool get stopover => asJsObject(this)['stopover'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsResult
// **************************************************************************

@anonymous
class DirectionsResult extends JsInterface implements _DirectionsResult {
  DirectionsResult.created(JsObject o) : super.created(o);
  DirectionsResult() : this.created(new JsObject(context['Object']));

  void set routes(List<DirectionsRoute> _routes) {
    asJsObject(this)['routes'] = __codec91.encode(_routes);
  }
  List<DirectionsRoute> get routes =>
      __codec91.decode(asJsObject(this)['routes']);
}
/// codec for DirectionsRoute
final __codec90 = new JsInterfaceCodec<DirectionsRoute>(
    (o) => new DirectionsRoute.created(o));

/// codec for List<DirectionsRoute>
final __codec91 = new JsListCodec<DirectionsRoute>(__codec90);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsRoute
// **************************************************************************

@anonymous
class DirectionsRoute extends JsInterface implements _DirectionsRoute {
  DirectionsRoute.created(JsObject o) : super.created(o);
  DirectionsRoute() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec5.encode(_bounds);
  }
  LatLngBounds get bounds => __codec5.decode(asJsObject(this)['bounds']);
  void set copyrights(String _copyrights) {
    asJsObject(this)['copyrights'] = _copyrights;
  }
  String get copyrights => asJsObject(this)['copyrights'];
  void set fare(TransitFare _fare) {
    asJsObject(this)['fare'] = __codec92.encode(_fare);
  }
  TransitFare get fare => __codec92.decode(asJsObject(this)['fare']);
  void set legs(List<DirectionsLeg> _legs) {
    asJsObject(this)['legs'] = __codec94.encode(_legs);
  }
  List<DirectionsLeg> get legs => __codec94.decode(asJsObject(this)['legs']);
  void set _overview_path(List<LatLng> __overview_path) {
    asJsObject(this)['overview_path'] = __codec36.encode(__overview_path);
  }
  List<LatLng> get _overview_path =>
      __codec36.decode(asJsObject(this)['overview_path']);
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
    asJsObject(this)['warnings'] = __codec74.encode(_warnings);
  }
  List<String> get warnings => __codec74.decode(asJsObject(this)['warnings']);
  void set _waypoint_order(List<num> __waypoint_order) {
    asJsObject(this)['waypoint_order'] = __codec51.encode(__waypoint_order);
  }
  List<num> get _waypoint_order =>
      __codec51.decode(asJsObject(this)['waypoint_order']);
  List<num> get waypointOrder => _waypoint_order;
  void set waypointOrder(List<num> waypointOrder) {
    _waypoint_order = waypointOrder;
  }
}
/// codec for TransitFare
final __codec92 =
    new JsInterfaceCodec<TransitFare>((o) => new TransitFare.created(o));

/// codec for DirectionsLeg
final __codec93 =
    new JsInterfaceCodec<DirectionsLeg>((o) => new DirectionsLeg.created(o));

/// codec for List<DirectionsLeg>
final __codec94 = new JsListCodec<DirectionsLeg>(__codec93);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsLeg
// **************************************************************************

@anonymous
class DirectionsLeg extends JsInterface implements _DirectionsLeg {
  DirectionsLeg.created(JsObject o) : super.created(o);
  DirectionsLeg() : this.created(new JsObject(context['Object']));

  void set _arrival_time(Time __arrival_time) {
    asJsObject(this)['arrival_time'] = __codec95.encode(__arrival_time);
  }
  Time get _arrival_time => __codec95.decode(asJsObject(this)['arrival_time']);
  Time get arrivalTime => _arrival_time;
  void set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }
  void set _departure_time(Time __departure_time) {
    asJsObject(this)['departure_time'] = __codec95.encode(__departure_time);
  }
  Time get _departure_time =>
      __codec95.decode(asJsObject(this)['departure_time']);
  Time get departureTime => _departure_time;
  void set departureTime(Time departureTime) {
    _departure_time = departureTime;
  }
  void set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec96.encode(_distance);
  }
  Distance get distance => __codec96.decode(asJsObject(this)['distance']);
  void set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec97.encode(_duration);
  }
  GDuration get duration => __codec97.decode(asJsObject(this)['duration']);
  void set _duration_in_traffic(GDuration __duration_in_traffic) {
    asJsObject(this)['duration_in_traffic'] =
        __codec97.encode(__duration_in_traffic);
  }
  GDuration get _duration_in_traffic =>
      __codec97.decode(asJsObject(this)['duration_in_traffic']);
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
    asJsObject(this)['end_location'] = __codec6.encode(__end_location);
  }
  LatLng get _end_location => __codec6.decode(asJsObject(this)['end_location']);
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
    asJsObject(this)['start_location'] = __codec6.encode(__start_location);
  }
  LatLng get _start_location =>
      __codec6.decode(asJsObject(this)['start_location']);
  LatLng get startLocation => _start_location;
  void set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }
  void set steps(List<DirectionsStep> _steps) {
    asJsObject(this)['steps'] = __codec99.encode(_steps);
  }
  List<DirectionsStep> get steps => __codec99.decode(asJsObject(this)['steps']);
  void set _via_waypoints(List<LatLng> __via_waypoints) {
    asJsObject(this)['via_waypoints'] = __codec36.encode(__via_waypoints);
  }
  List<LatLng> get _via_waypoints =>
      __codec36.decode(asJsObject(this)['via_waypoints']);
  List<LatLng> get viaWaypoints => _via_waypoints;
  void set viaWaypoints(List<LatLng> viaWaypoints) {
    _via_waypoints = viaWaypoints;
  }
}
/// codec for Time
final __codec95 = new JsInterfaceCodec<Time>((o) => new Time.created(o));

/// codec for Distance
final __codec96 =
    new JsInterfaceCodec<Distance>((o) => new Distance.created(o));

/// codec for GDuration
final __codec97 =
    new JsInterfaceCodec<GDuration>((o) => new GDuration.created(o));

/// codec for DirectionsStep
final __codec98 =
    new JsInterfaceCodec<DirectionsStep>((o) => new DirectionsStep.created(o));

/// codec for List<DirectionsStep>
final __codec99 = new JsListCodec<DirectionsStep>(__codec98);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DirectionsStep
// **************************************************************************

@anonymous
class DirectionsStep extends JsInterface implements _DirectionsStep {
  DirectionsStep.created(JsObject o) : super.created(o);
  DirectionsStep() : this.created(new JsObject(context['Object']));

  void set distance(Distance _distance) {
    asJsObject(this)['distance'] = __codec96.encode(_distance);
  }
  Distance get distance => __codec96.decode(asJsObject(this)['distance']);
  void set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec97.encode(_duration);
  }
  GDuration get duration => __codec97.decode(asJsObject(this)['duration']);
  void set _end_location(LatLng __end_location) {
    asJsObject(this)['end_location'] = __codec6.encode(__end_location);
  }
  LatLng get _end_location => __codec6.decode(asJsObject(this)['end_location']);
  LatLng get endLocation => _end_location;
  void set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }
  void set instructions(String _instructions) {
    asJsObject(this)['instructions'] = _instructions;
  }
  String get instructions => asJsObject(this)['instructions'];
  void set path(List<LatLng> _path) {
    asJsObject(this)['path'] = __codec36.encode(_path);
  }
  List<LatLng> get path => __codec36.decode(asJsObject(this)['path']);
  void set _start_location(LatLng __start_location) {
    asJsObject(this)['start_location'] = __codec6.encode(__start_location);
  }
  LatLng get _start_location =>
      __codec6.decode(asJsObject(this)['start_location']);
  LatLng get startLocation => _start_location;
  void set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }
  void set steps(List<DirectionsStep> _steps) {
    asJsObject(this)['steps'] = __codec99.encode(_steps);
  }
  List<DirectionsStep> get steps => __codec99.decode(asJsObject(this)['steps']);
  void set transit(TransitDetails _transit) {
    asJsObject(this)['transit'] = __codec100.encode(_transit);
  }
  TransitDetails get transit => __codec100.decode(asJsObject(this)['transit']);
  void set _travel_mode(TravelMode __travel_mode) {
    asJsObject(this)['travel_mode'] = __codec83.encode(__travel_mode);
  }
  TravelMode get _travel_mode =>
      __codec83.decode(asJsObject(this)['travel_mode']);
  TravelMode get travelMode => _travel_mode;
  void set travelMode(TravelMode travelMode) {
    _travel_mode = travelMode;
  }
}
/// codec for TransitDetails
final __codec100 =
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
    asJsObject(this)['arrival_stop'] = __codec101.encode(__arrival_stop);
  }
  TransitStop get _arrival_stop =>
      __codec101.decode(asJsObject(this)['arrival_stop']);
  TransitStop get arrivalStop => _arrival_stop;
  void set arrivalStop(TransitStop arrivalStop) {
    _arrival_stop = arrivalStop;
  }
  void set _arrival_time(Time __arrival_time) {
    asJsObject(this)['arrival_time'] = __codec95.encode(__arrival_time);
  }
  Time get _arrival_time => __codec95.decode(asJsObject(this)['arrival_time']);
  Time get arrivalTime => _arrival_time;
  void set arrivalTime(Time arrivalTime) {
    _arrival_time = arrivalTime;
  }
  void set _departure_stop(TransitStop __departure_stop) {
    asJsObject(this)['departure_stop'] = __codec101.encode(__departure_stop);
  }
  TransitStop get _departure_stop =>
      __codec101.decode(asJsObject(this)['departure_stop']);
  TransitStop get departureStop => _departure_stop;
  void set departureStop(TransitStop departureStop) {
    _departure_stop = departureStop;
  }
  void set _departure_time(Time __departure_time) {
    asJsObject(this)['departure_time'] = __codec95.encode(__departure_time);
  }
  Time get _departure_time =>
      __codec95.decode(asJsObject(this)['departure_time']);
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
    asJsObject(this)['line'] = __codec102.encode(_line);
  }
  TransitLine get line => __codec102.decode(asJsObject(this)['line']);
  void set _num_stops(num __num_stops) {
    asJsObject(this)['num_stops'] = __num_stops;
  }
  num get _num_stops => asJsObject(this)['num_stops'];
  num get numStops => _num_stops;
  void set numStops(num numStops) {
    _num_stops = numStops;
  }
}
/// codec for TransitStop
final __codec101 =
    new JsInterfaceCodec<TransitStop>((o) => new TransitStop.created(o));

/// codec for TransitLine
final __codec102 =
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
    asJsObject(this)['location'] = __codec6.encode(_location);
  }
  LatLng get location => __codec6.decode(asJsObject(this)['location']);
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
    asJsObject(this)['agencies'] = __codec104.encode(_agencies);
  }
  List<TransitAgency> get agencies =>
      __codec104.decode(asJsObject(this)['agencies']);
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
    asJsObject(this)['vehicle'] = __codec105.encode(_vehicle);
  }
  TransitVehicle get vehicle => __codec105.decode(asJsObject(this)['vehicle']);
}
/// codec for TransitAgency
final __codec103 =
    new JsInterfaceCodec<TransitAgency>((o) => new TransitAgency.created(o));

/// codec for List<TransitAgency>
final __codec104 = new JsListCodec<TransitAgency>(__codec103);

/// codec for TransitVehicle
final __codec105 =
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
    asJsObject(this)['type'] = __codec106.encode(_type);
  }
  VehicleType get type => __codec106.decode(asJsObject(this)['type']);
}
/// codec for VehicleType
final __codec106 = vehicleTypeCodec;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ElevationService
// **************************************************************************

@JsName('google.maps.ElevationService')
class ElevationService extends JsInterface implements _ElevationService {
  ElevationService.created(JsObject o) : super.created(o);
  ElevationService()
      : this.created(new JsObject(getPath('google.maps.ElevationService')));

  void getElevationAlongPath(PathElevationRequest request,
      callback(List<ElevationResult> p1, ElevationStatus p2)) {
    asJsObject(this).callMethod('getElevationAlongPath', [
      __codec107.encode(request),
      __codec111.encode(callback)
    ]);
  }
  void getElevationForLocations(LocationElevationRequest request,
      callback(List<ElevationResult> p1, ElevationStatus p2)) {
    asJsObject(this).callMethod('getElevationForLocations', [
      __codec112.encode(request),
      __codec111.encode(callback)
    ]);
  }
}
/// codec for PathElevationRequest
final __codec107 = new JsInterfaceCodec<PathElevationRequest>(
    (o) => new PathElevationRequest.created(o));

/// codec for ElevationResult
final __codec108 = new JsInterfaceCodec<ElevationResult>(
    (o) => new ElevationResult.created(o));

/// codec for List<ElevationResult>
final __codec109 = new JsListCodec<ElevationResult>(__codec108);

/// codec for ElevationStatus
final __codec110 = new BiMapCodec<ElevationStatus, dynamic>({
  ElevationStatus.INVALID_REQUEST:
      getPath('google.maps.ElevationStatus')['INVALID_REQUEST'],
  ElevationStatus.OK: getPath('google.maps.ElevationStatus')['OK'],
  ElevationStatus.OVER_QUERY_LIMIT:
      getPath('google.maps.ElevationStatus')['OVER_QUERY_LIMIT'],
  ElevationStatus.REQUEST_DENIED:
      getPath('google.maps.ElevationStatus')['REQUEST_DENIED'],
  ElevationStatus.UNKNOWN_ERROR:
      getPath('google.maps.ElevationStatus')['UNKNOWN_ERROR']
});

/// codec for (List<ElevationResult>, ElevationStatus) → dynamic
final __codec111 =
    new FunctionCodec /*<(List<ElevationResult>, ElevationStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec109.decode(p_p1);
  p_p2 = __codec110.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec109.encode(p_p1);
  p_p2 = __codec110.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

/// codec for LocationElevationRequest
final __codec112 = new JsInterfaceCodec<LocationElevationRequest>(
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
    asJsObject(this)['locations'] = __codec36.encode(_locations);
  }
  List<LatLng> get locations => __codec36.decode(asJsObject(this)['locations']);
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
    asJsObject(this)['path'] = __codec36.encode(_path);
  }
  List<LatLng> get path => __codec36.decode(asJsObject(this)['path']);
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
    asJsObject(this)['location'] = __codec6.encode(_location);
  }
  LatLng get location => __codec6.decode(asJsObject(this)['location']);
  void set resolution(num _resolution) {
    asJsObject(this)['resolution'] = _resolution;
  }
  num get resolution => asJsObject(this)['resolution'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MaxZoomService
// **************************************************************************

@JsName('google.maps.MaxZoomService')
class MaxZoomService extends JsInterface implements _MaxZoomService {
  MaxZoomService.created(JsObject o) : super.created(o);
  MaxZoomService()
      : this.created(new JsObject(getPath('google.maps.MaxZoomService')));

  void getMaxZoomAtLatLng(LatLng latlng, callback(MaxZoomResult p1)) {
    asJsObject(this).callMethod('getMaxZoomAtLatLng', [
      __codec6.encode(latlng),
      __codec114.encode(callback)
    ]);
  }
}
/// codec for MaxZoomResult
final __codec113 =
    new JsInterfaceCodec<MaxZoomResult>((o) => new MaxZoomResult.created(o));

/// codec for (MaxZoomResult) → dynamic
final __codec114 = new FunctionCodec /*<(MaxZoomResult) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec113.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec113.encode(p_p1);
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
    asJsObject(this)['status'] = __codec115.encode(_status);
  }
  MaxZoomStatus get status => __codec115.decode(asJsObject(this)['status']);
  void set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }
  num get zoom => asJsObject(this)['zoom'];
}
/// codec for MaxZoomStatus
final __codec115 = new BiMapCodec<MaxZoomStatus, dynamic>({
  MaxZoomStatus.ERROR: getPath('google.maps.MaxZoomStatus')['ERROR'],
  MaxZoomStatus.OK: getPath('google.maps.MaxZoomStatus')['OK']
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DistanceMatrixService
// **************************************************************************

@JsName('google.maps.DistanceMatrixService')
class DistanceMatrixService extends JsInterface
    implements _DistanceMatrixService {
  DistanceMatrixService.created(JsObject o) : super.created(o);
  DistanceMatrixService() : this.created(
          new JsObject(getPath('google.maps.DistanceMatrixService')));

  void getDistanceMatrix(DistanceMatrixRequest request,
      callback(DistanceMatrixResponse p1, DistanceMatrixStatus p2)) {
    asJsObject(this).callMethod('getDistanceMatrix', [
      __codec116.encode(request),
      __codec119.encode(callback)
    ]);
  }
}
/// codec for DistanceMatrixRequest
final __codec116 = new JsInterfaceCodec<DistanceMatrixRequest>(
    (o) => new DistanceMatrixRequest.created(o));

/// codec for DistanceMatrixResponse
final __codec117 = new JsInterfaceCodec<DistanceMatrixResponse>(
    (o) => new DistanceMatrixResponse.created(o));

/// codec for DistanceMatrixStatus
final __codec118 = new BiMapCodec<DistanceMatrixStatus, dynamic>({
  DistanceMatrixStatus.INVALID_REQUEST:
      getPath('google.maps.DistanceMatrixStatus')['INVALID_REQUEST'],
  DistanceMatrixStatus.MAX_DIMENSIONS_EXCEEDED:
      getPath('google.maps.DistanceMatrixStatus')['MAX_DIMENSIONS_EXCEEDED'],
  DistanceMatrixStatus.MAX_ELEMENTS_EXCEEDED:
      getPath('google.maps.DistanceMatrixStatus')['MAX_ELEMENTS_EXCEEDED'],
  DistanceMatrixStatus.OK: getPath('google.maps.DistanceMatrixStatus')['OK'],
  DistanceMatrixStatus.OVER_QUERY_LIMIT:
      getPath('google.maps.DistanceMatrixStatus')['OVER_QUERY_LIMIT'],
  DistanceMatrixStatus.REQUEST_DENIED:
      getPath('google.maps.DistanceMatrixStatus')['REQUEST_DENIED'],
  DistanceMatrixStatus.UNKNOWN_ERROR:
      getPath('google.maps.DistanceMatrixStatus')['UNKNOWN_ERROR']
});

/// codec for (DistanceMatrixResponse, DistanceMatrixStatus) → dynamic
final __codec119 =
    new FunctionCodec /*<(DistanceMatrixResponse, DistanceMatrixStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec117.decode(p_p1);
  p_p2 = __codec118.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec117.encode(p_p1);
  p_p2 = __codec118.encode(p_p2);
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
  dynamic /*List<LatLng>|List<String>*/ get destinations => (new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(new JsListCodec<String>(new IdentityCodec<String>())))
      .decode(_destinations);
  void set destinations(dynamic /*List<LatLng>|List<String>*/ destinations) {
    _destinations = (new ChainedCodec()
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
          (o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
      ..add(new JsListCodec<String>(new IdentityCodec<String>())))
        .encode(destinations);
  }
  void set durationInTraffic(bool _durationInTraffic) {
    asJsObject(this)['durationInTraffic'] = _durationInTraffic;
  }
  bool get durationInTraffic => asJsObject(this)['durationInTraffic'];
  void set _origins(dynamic __origins) {
    asJsObject(this)['origins'] = __origins;
  }
  dynamic get _origins => asJsObject(this)['origins'];
  dynamic /*List<LatLng>|List<String>*/ get origins => (new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(new JsListCodec<String>(new IdentityCodec<String>())))
      .decode(_origins);
  void set origins(dynamic /*List<LatLng>|List<String>*/ origins) {
    _origins = (new ChainedCodec()
      ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
          (o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
      ..add(new JsListCodec<String>(new IdentityCodec<String>())))
        .encode(origins);
  }
  void set region(String _region) {
    asJsObject(this)['region'] = _region;
  }
  String get region => asJsObject(this)['region'];
  void set transitOptions(TransitOptions _transitOptions) {
    asJsObject(this)['transitOptions'] = __codec82.encode(_transitOptions);
  }
  TransitOptions get transitOptions =>
      __codec82.decode(asJsObject(this)['transitOptions']);
  void set travelMode(TravelMode _travelMode) {
    asJsObject(this)['travelMode'] = __codec83.encode(_travelMode);
  }
  TravelMode get travelMode => __codec83.decode(asJsObject(this)['travelMode']);
  void set unitSystem(UnitSystem _unitSystem) {
    asJsObject(this)['unitSystem'] = __codec84.encode(_unitSystem);
  }
  UnitSystem get unitSystem => __codec84.decode(asJsObject(this)['unitSystem']);
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
        __codec74.encode(_destinationAddresses);
  }
  List<String> get destinationAddresses =>
      __codec74.decode(asJsObject(this)['destinationAddresses']);
  void set originAddresses(List<String> _originAddresses) {
    asJsObject(this)['originAddresses'] = __codec74.encode(_originAddresses);
  }
  List<String> get originAddresses =>
      __codec74.decode(asJsObject(this)['originAddresses']);
  void set rows(List<DistanceMatrixResponseRow> _rows) {
    asJsObject(this)['rows'] = __codec121.encode(_rows);
  }
  List<DistanceMatrixResponseRow> get rows =>
      __codec121.decode(asJsObject(this)['rows']);
}
/// codec for DistanceMatrixResponseRow
final __codec120 = new JsInterfaceCodec<DistanceMatrixResponseRow>(
    (o) => new DistanceMatrixResponseRow.created(o));

/// codec for List<DistanceMatrixResponseRow>
final __codec121 = new JsListCodec<DistanceMatrixResponseRow>(__codec120);

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
    asJsObject(this)['elements'] = __codec123.encode(_elements);
  }
  List<DistanceMatrixResponseElement> get elements =>
      __codec123.decode(asJsObject(this)['elements']);
}
/// codec for DistanceMatrixResponseElement
final __codec122 = new JsInterfaceCodec<DistanceMatrixResponseElement>(
    (o) => new DistanceMatrixResponseElement.created(o));

/// codec for List<DistanceMatrixResponseElement>
final __codec123 = new JsListCodec<DistanceMatrixResponseElement>(__codec122);

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
    asJsObject(this)['distance'] = __codec96.encode(_distance);
  }
  Distance get distance => __codec96.decode(asJsObject(this)['distance']);
  void set duration(GDuration _duration) {
    asJsObject(this)['duration'] = __codec97.encode(_duration);
  }
  GDuration get duration => __codec97.decode(asJsObject(this)['duration']);
  void set fare(TransitFare _fare) {
    asJsObject(this)['fare'] = __codec92.encode(_fare);
  }
  TransitFare get fare => __codec92.decode(asJsObject(this)['fare']);
  void set status(DistanceMatrixElementStatus _status) {
    asJsObject(this)['status'] = __codec124.encode(_status);
  }
  DistanceMatrixElementStatus get status =>
      __codec124.decode(asJsObject(this)['status']);
}
/// codec for DistanceMatrixElementStatus
final __codec124 = new BiMapCodec<DistanceMatrixElementStatus, dynamic>({
  DistanceMatrixElementStatus.NOT_FOUND:
      getPath('google.maps.DistanceMatrixElementStatus')['NOT_FOUND'],
  DistanceMatrixElementStatus.OK:
      getPath('google.maps.DistanceMatrixElementStatus')['OK'],
  DistanceMatrixElementStatus.ZERO_RESULTS:
      getPath('google.maps.DistanceMatrixElementStatus')['ZERO_RESULTS']
});

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
// Target: abstract class _Place
// **************************************************************************

@anonymous
class Place extends JsInterface implements _Place {
  Place.created(JsObject o) : super.created(o);
  Place() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec6.encode(_location);
  }
  LatLng get location => __codec6.decode(asJsObject(this)['location']);
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
class SaveWidget extends JsInterface implements _SaveWidget {
  SaveWidget.created(JsObject o) : super.created(o);
  SaveWidget(Node container, [SaveWidgetOptions opts]) : this.created(
          new JsObject(getPath('google.maps.SaveWidget'), [
        container,
        __codec125.encode(opts)
      ]));

  Attribution get attribution => _getAttribution();
  Attribution _getAttribution() =>
      __codec47.decode(asJsObject(this).callMethod('getAttribution'));
  Place get place => _getPlace();
  Place _getPlace() =>
      __codec48.decode(asJsObject(this).callMethod('getPlace'));
  void set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution) {
    asJsObject(this).callMethod(
        'setAttribution', [__codec47.encode(attribution)]);
  }
  void set options(SaveWidgetOptions opts) => _setOptions(opts);
  void _setOptions(SaveWidgetOptions opts) {
    asJsObject(this).callMethod('setOptions', [__codec125.encode(opts)]);
  }
  void set place(Place place) => _setPlace(place);
  void _setPlace(Place place) {
    asJsObject(this).callMethod('setPlace', [__codec48.encode(place)]);
  }
}
/// codec for SaveWidgetOptions
final __codec125 = new JsInterfaceCodec<SaveWidgetOptions>(
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
    asJsObject(this)['attribution'] = __codec47.encode(_attribution);
  }
  Attribution get attribution =>
      __codec47.decode(asJsObject(this)['attribution']);
  void set place(Place _place) {
    asJsObject(this)['place'] = __codec48.encode(_place);
  }
  Place get place => __codec48.decode(asJsObject(this)['place']);
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
          'getTile', [__codec49.encode(tileCoord), zoom, ownerDocument]);
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
    asJsObject(this)['projection'] = __codec7.encode(_projection);
  }
  Projection get projection => __codec7.decode(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec50.encode(_tileSize);
  }
  Size get tileSize => __codec50.decode(asJsObject(this)['tileSize']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapTypeRegistry
// **************************************************************************

@JsName('google.maps.MapTypeRegistry')
class MapTypeRegistry extends MVCObject implements _MapTypeRegistry {
  MapTypeRegistry.created(JsObject o) : super.created(o);
  MapTypeRegistry()
      : this.created(new JsObject(getPath('google.maps.MapTypeRegistry')));

  void set(String id, MapType mapType) {
    asJsObject(this).callMethod('set', [id, __codec126.encode(mapType)]);
  }
}
/// codec for MapType
final __codec126 = new JsInterfaceCodec<MapType>((o) => new MapType.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Projection
// **************************************************************************

@anonymous
class Projection extends JsInterface implements _Projection {
  Projection.created(JsObject o) : super.created(o);
  Projection() : this.created(new JsObject(context['Object']));

  Point fromLatLngToPoint(LatLng latLng, [Point point]) => __codec49.decode(
      asJsObject(this).callMethod('fromLatLngToPoint', [
    __codec6.encode(latLng),
    __codec49.encode(point)
  ]));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) => __codec6.decode(
      asJsObject(this).callMethod(
          'fromPointToLatLng', [__codec49.encode(pixel), nowrap]));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ImageMapType
// **************************************************************************

@JsName('google.maps.ImageMapType')
class ImageMapType extends MVCObject implements MapType, _ImageMapType {
  ImageMapType.created(JsObject o) : super.created(o);
  ImageMapType(ImageMapTypeOptions opts) : this.created(new JsObject(
          getPath('google.maps.ImageMapType'), [__codec127.encode(opts)]));

  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  Node getTile(Point tileCoord, num zoom, Document ownerDocument) =>
      asJsObject(this).callMethod(
          'getTile', [__codec49.encode(tileCoord), zoom, ownerDocument]);
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
    asJsObject(this)['projection'] = __codec7.encode(_projection);
  }
  Projection get projection => __codec7.decode(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec50.encode(_tileSize);
  }
  Size get tileSize => __codec50.decode(asJsObject(this)['tileSize']);

  Stream get onTilesloaded => getStream(this, #onTilesloaded, "tilesloaded");
}
/// codec for ImageMapTypeOptions
final __codec127 = new JsInterfaceCodec<ImageMapTypeOptions>(
    (o) => new ImageMapTypeOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ImageMapTypeOptions
// **************************************************************************

@anonymous
class ImageMapTypeOptions extends JsInterface implements _ImageMapTypeOptions {
  ImageMapTypeOptions.created(JsObject o) : super.created(o);
  ImageMapTypeOptions() : this.created(new JsObject(context['Object']));

  String getTileUrl(Point coordinate, num zoom) => asJsObject(this).callMethod(
      'getTileUrl', [__codec49.encode(coordinate), zoom]);

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
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec50.encode(_tileSize);
  }
  Size get tileSize => __codec50.decode(asJsObject(this)['tileSize']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StyledMapType
// **************************************************************************

@JsName('google.maps.StyledMapType')
class StyledMapType extends MVCObject implements _StyledMapType {
  StyledMapType.created(JsObject o) : super.created(o);
  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options])
      : this.created(new JsObject(getPath('google.maps.StyledMapType'), [
        __codec17.encode(styles),
        __codec128.encode(options)
      ]));

  Node getTile(Point tileCoord, num zoom, Document ownerDocument) =>
      asJsObject(this).callMethod(
          'getTile', [__codec49.encode(tileCoord), zoom, ownerDocument]);
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
    asJsObject(this)['projection'] = __codec7.encode(_projection);
  }
  Projection get projection => __codec7.decode(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] = __codec50.encode(_tileSize);
  }
  Size get tileSize => __codec50.decode(asJsObject(this)['tileSize']);
}
/// codec for StyledMapTypeOptions
final __codec128 = new JsInterfaceCodec<StyledMapTypeOptions>(
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
    asJsObject(this)['elementType'] = __codec129.encode(_elementType);
  }
  MapTypeStyleElementType get elementType =>
      __codec129.decode(asJsObject(this)['elementType']);
  void set featureType(MapTypeStyleFeatureType _featureType) {
    asJsObject(this)['featureType'] = __codec130.encode(_featureType);
  }
  MapTypeStyleFeatureType get featureType =>
      __codec130.decode(asJsObject(this)['featureType']);
  void set stylers(List<MapTypeStyler> _stylers) {
    asJsObject(this)['stylers'] = __codec132.encode(_stylers);
  }
  List<MapTypeStyler> get stylers =>
      __codec132.decode(asJsObject(this)['stylers']);
}
/// codec for MapTypeStyleElementType
final __codec129 = mapTypeStyleElementTypeCodec;

/// codec for MapTypeStyleFeatureType
final __codec130 = mapTypeStyleFeatureTypeCodec;

/// codec for MapTypeStyler
final __codec131 =
    new JsInterfaceCodec<MapTypeStyler>((o) => new MapTypeStyler.created(o));

/// codec for List<MapTypeStyler>
final __codec132 = new JsListCodec<MapTypeStyler>(__codec131);

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
      : this.created(new JsObject(getPath('google.maps.BicyclingLayer')));

  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
          new JsObject(getPath('google.maps.FusionTablesLayer'),
              [__codec133.encode(options)]));

  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
  }
  void set options(FusionTablesLayerOptions options) => _setOptions(options);
  void _setOptions(FusionTablesLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec133.encode(options)]);
  }

  Stream<FusionTablesMouseEvent> get onClick => getStream(this, #onClick,
      "click", (JsObject o) => new FusionTablesMouseEvent.created(o));
}
/// codec for FusionTablesLayerOptions
final __codec133 = new JsInterfaceCodec<FusionTablesLayerOptions>(
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
    asJsObject(this)['heatmap'] = __codec134.encode(_heatmap);
  }
  FusionTablesHeatmap get heatmap =>
      __codec134.decode(asJsObject(this)['heatmap']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
  void set query(FusionTablesQuery _query) {
    asJsObject(this)['query'] = __codec135.encode(_query);
  }
  FusionTablesQuery get query => __codec135.decode(asJsObject(this)['query']);
  void set styles(List<FusionTablesStyle> _styles) {
    asJsObject(this)['styles'] = __codec137.encode(_styles);
  }
  List<FusionTablesStyle> get styles =>
      __codec137.decode(asJsObject(this)['styles']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
}
/// codec for FusionTablesHeatmap
final __codec134 = new JsInterfaceCodec<FusionTablesHeatmap>(
    (o) => new FusionTablesHeatmap.created(o));

/// codec for FusionTablesQuery
final __codec135 = new JsInterfaceCodec<FusionTablesQuery>(
    (o) => new FusionTablesQuery.created(o));

/// codec for FusionTablesStyle
final __codec136 = new JsInterfaceCodec<FusionTablesStyle>(
    (o) => new FusionTablesStyle.created(o));

/// codec for List<FusionTablesStyle>
final __codec137 = new JsListCodec<FusionTablesStyle>(__codec136);

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
    asJsObject(this)['markerOptions'] = __codec138.encode(_markerOptions);
  }
  FusionTablesMarkerOptions get markerOptions =>
      __codec138.decode(asJsObject(this)['markerOptions']);
  void set polygonOptions(FusionTablesPolygonOptions _polygonOptions) {
    asJsObject(this)['polygonOptions'] = __codec139.encode(_polygonOptions);
  }
  FusionTablesPolygonOptions get polygonOptions =>
      __codec139.decode(asJsObject(this)['polygonOptions']);
  void set polylineOptions(FusionTablesPolylineOptions _polylineOptions) {
    asJsObject(this)['polylineOptions'] = __codec140.encode(_polylineOptions);
  }
  FusionTablesPolylineOptions get polylineOptions =>
      __codec140.decode(asJsObject(this)['polylineOptions']);
  void set where(String _where) {
    asJsObject(this)['where'] = _where;
  }
  String get where => asJsObject(this)['where'];
}
/// codec for FusionTablesMarkerOptions
final __codec138 = new JsInterfaceCodec<FusionTablesMarkerOptions>(
    (o) => new FusionTablesMarkerOptions.created(o));

/// codec for FusionTablesPolygonOptions
final __codec139 = new JsInterfaceCodec<FusionTablesPolygonOptions>(
    (o) => new FusionTablesPolygonOptions.created(o));

/// codec for FusionTablesPolylineOptions
final __codec140 = new JsInterfaceCodec<FusionTablesPolylineOptions>(
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
    asJsObject(this)['latLng'] = __codec6.encode(_latLng);
  }
  LatLng get latLng => __codec6.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec50.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec50.decode(asJsObject(this)['pixelOffset']);
  void set row(Map<String, FusionTablesCell> _row) {
    asJsObject(this)['row'] = _row;
  }
  Map<String, FusionTablesCell> get row => asJsObject(this)['row'];
}

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
          getPath('google.maps.KmlLayer'), [__codec141.encode(opts)]));

  LatLngBounds get defaultViewport => _getDefaultViewport();
  LatLngBounds _getDefaultViewport() =>
      __codec5.decode(asJsObject(this).callMethod('getDefaultViewport'));
  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  KmlLayerMetadata get metadata => _getMetadata();
  KmlLayerMetadata _getMetadata() =>
      __codec142.decode(asJsObject(this).callMethod('getMetadata'));
  KmlLayerStatus get status => _getStatus();
  KmlLayerStatus _getStatus() =>
      __codec143.decode(asJsObject(this).callMethod('getStatus'));
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
/// codec for KmlLayerOptions
final __codec141 = new JsInterfaceCodec<KmlLayerOptions>(
    (o) => new KmlLayerOptions.created(o));

/// codec for KmlLayerMetadata
final __codec142 = new JsInterfaceCodec<KmlLayerMetadata>(
    (o) => new KmlLayerMetadata.created(o));

/// codec for KmlLayerStatus
final __codec143 = new BiMapCodec<KmlLayerStatus, dynamic>({
  KmlLayerStatus.DOCUMENT_NOT_FOUND:
      getPath('google.maps.KmlLayerStatus')['DOCUMENT_NOT_FOUND'],
  KmlLayerStatus.DOCUMENT_TOO_LARGE:
      getPath('google.maps.KmlLayerStatus')['DOCUMENT_TOO_LARGE'],
  KmlLayerStatus.FETCH_ERROR:
      getPath('google.maps.KmlLayerStatus')['FETCH_ERROR'],
  KmlLayerStatus.INVALID_DOCUMENT:
      getPath('google.maps.KmlLayerStatus')['INVALID_DOCUMENT'],
  KmlLayerStatus.INVALID_REQUEST:
      getPath('google.maps.KmlLayerStatus')['INVALID_REQUEST'],
  KmlLayerStatus.LIMITS_EXCEEDED:
      getPath('google.maps.KmlLayerStatus')['LIMITS_EXCEEDED'],
  KmlLayerStatus.OK: getPath('google.maps.KmlLayerStatus')['OK'],
  KmlLayerStatus.TIMED_OUT: getPath('google.maps.KmlLayerStatus')['TIMED_OUT'],
  KmlLayerStatus.UNKNOWN: getPath('google.maps.KmlLayerStatus')['UNKNOWN']
});

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
    asJsObject(this)['map'] = __codec28.encode(_map);
  }
  GMap get map => __codec28.decode(asJsObject(this)['map']);
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
    asJsObject(this)['author'] = __codec144.encode(_author);
  }
  KmlAuthor get author => __codec144.decode(asJsObject(this)['author']);
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
/// codec for KmlAuthor
final __codec144 =
    new JsInterfaceCodec<KmlAuthor>((o) => new KmlAuthor.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _KmlMouseEvent
// **************************************************************************

@anonymous
class KmlMouseEvent extends JsInterface implements _KmlMouseEvent {
  KmlMouseEvent.created(JsObject o) : super.created(o);
  KmlMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureData(KmlFeatureData _featureData) {
    asJsObject(this)['featureData'] = __codec145.encode(_featureData);
  }
  KmlFeatureData get featureData =>
      __codec145.decode(asJsObject(this)['featureData']);
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec6.encode(_latLng);
  }
  LatLng get latLng => __codec6.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec50.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec50.decode(asJsObject(this)['pixelOffset']);
}
/// codec for KmlFeatureData
final __codec145 =
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
    asJsObject(this)['author'] = __codec144.encode(_author);
  }
  KmlAuthor get author => __codec144.decode(asJsObject(this)['author']);
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
      : this.created(new JsObject(getPath('google.maps.TrafficLayer')));

  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
      : this.created(new JsObject(getPath('google.maps.TransitLayer')));

  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
      : this.created(new JsObject(getPath('google.maps.StreetViewPanorama'), [
        container,
        __codec146.encode(opts)
      ]));

  List<StreetViewLink> get links => _getLinks();
  List<StreetViewLink> _getLinks() =>
      __codec148.decode(asJsObject(this).callMethod('getLinks'));
  StreetViewLocation get location => _getLocation();
  StreetViewLocation _getLocation() =>
      __codec149.decode(asJsObject(this).callMethod('getLocation'));
  String get pano => _getPano();
  String _getPano() => asJsObject(this).callMethod('getPano');
  StreetViewPov get photographerPov => _getPhotographerPov();
  StreetViewPov _getPhotographerPov() =>
      __codec150.decode(asJsObject(this).callMethod('getPhotographerPov'));
  LatLng get position => _getPosition();
  LatLng _getPosition() =>
      __codec6.decode(asJsObject(this).callMethod('getPosition'));
  StreetViewPov get pov => _getPov();
  StreetViewPov _getPov() =>
      __codec150.decode(asJsObject(this).callMethod('getPov'));
  StreetViewStatus get status => _getStatus();
  StreetViewStatus _getStatus() =>
      __codec151.decode(asJsObject(this).callMethod('getStatus'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void registerPanoProvider(provider(String p1)) {
    asJsObject(this).callMethod(
        'registerPanoProvider', [__codec152.encode(provider)]);
  }
  void set links(List<StreetViewLink> links) => _setLinks(links);
  void _setLinks(List<StreetViewLink> links) {
    asJsObject(this).callMethod('setLinks', [__codec148.encode(links)]);
  }
  void set options(StreetViewPanoramaOptions options) => _setOptions(options);
  void _setOptions(StreetViewPanoramaOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec146.encode(options)]);
  }
  void set pano(String pano) => _setPano(pano);
  void _setPano(String pano) {
    asJsObject(this).callMethod('setPano', [pano]);
  }
  void set position(LatLng latLng) => _setPosition(latLng);
  void _setPosition(LatLng latLng) {
    asJsObject(this).callMethod('setPosition', [__codec6.encode(latLng)]);
  }
  void set pov(StreetViewPov pov) => _setPov(pov);
  void _setPov(StreetViewPov pov) {
    asJsObject(this).callMethod('setPov', [__codec150.encode(pov)]);
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
/// codec for StreetViewPanoramaOptions
final __codec146 = new JsInterfaceCodec<StreetViewPanoramaOptions>(
    (o) => new StreetViewPanoramaOptions.created(o));

/// codec for StreetViewLink
final __codec147 =
    new JsInterfaceCodec<StreetViewLink>((o) => new StreetViewLink.created(o));

/// codec for List<StreetViewLink>
final __codec148 = new JsListCodec<StreetViewLink>(__codec147);

/// codec for StreetViewLocation
final __codec149 = new JsInterfaceCodec<StreetViewLocation>(
    (o) => new StreetViewLocation.created(o));

/// codec for StreetViewPov
final __codec150 =
    new JsInterfaceCodec<StreetViewPov>((o) => new StreetViewPov.created(o));

/// codec for StreetViewStatus
final __codec151 = new BiMapCodec<StreetViewStatus, dynamic>({
  StreetViewStatus.OK: getPath('google.maps.StreetViewStatus')['OK'],
  StreetViewStatus.UNKNOWN_ERROR:
      getPath('google.maps.StreetViewStatus')['UNKNOWN_ERROR'],
  StreetViewStatus.ZERO_RESULTS:
      getPath('google.maps.StreetViewStatus')['ZERO_RESULTS']
});

/// codec for (String) → dynamic
final __codec152 = new FunctionCodec /*<(String) → dynamic>*/ ((f) => f,
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

  StreetViewPanoramaData panoProvider(String panoId) =>
      __codec154.decode(asJsObject(this).callMethod('panoProvider', [panoId]));

  void set addressControl(bool _addressControl) {
    asJsObject(this)['addressControl'] = _addressControl;
  }
  bool get addressControl => asJsObject(this)['addressControl'];
  void set addressControlOptions(
      StreetViewAddressControlOptions _addressControlOptions) {
    asJsObject(this)['addressControlOptions'] =
        __codec153.encode(_addressControlOptions);
  }
  StreetViewAddressControlOptions get addressControlOptions =>
      __codec153.decode(asJsObject(this)['addressControlOptions']);
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
        __codec12.encode(_panControlOptions);
  }
  PanControlOptions get panControlOptions =>
      __codec12.decode(asJsObject(this)['panControlOptions']);
  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
  void set position(LatLng _position) {
    asJsObject(this)['position'] = __codec6.encode(_position);
  }
  LatLng get position => __codec6.decode(asJsObject(this)['position']);
  void set pov(StreetViewPov _pov) {
    asJsObject(this)['pov'] = __codec150.encode(_pov);
  }
  StreetViewPov get pov => __codec150.decode(asJsObject(this)['pov']);
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
        __codec18.encode(_zoomControlOptions);
  }
  ZoomControlOptions get zoomControlOptions =>
      __codec18.decode(asJsObject(this)['zoomControlOptions']);
}
/// codec for StreetViewAddressControlOptions
final __codec153 = new JsInterfaceCodec<StreetViewAddressControlOptions>(
    (o) => new StreetViewAddressControlOptions.created(o));

/// codec for StreetViewPanoramaData
final __codec154 = new JsInterfaceCodec<StreetViewPanoramaData>(
    (o) => new StreetViewPanoramaData.created(o));

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
    asJsObject(this)['position'] = __codec19.encode(_position);
  }
  ControlPosition get position =>
      __codec19.decode(asJsObject(this)['position']);
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
    asJsObject(this)['links'] = __codec148.encode(_links);
  }
  List<StreetViewLink> get links =>
      __codec148.decode(asJsObject(this)['links']);
  void set location(StreetViewLocation _location) {
    asJsObject(this)['location'] = __codec149.encode(_location);
  }
  StreetViewLocation get location =>
      __codec149.decode(asJsObject(this)['location']);
  void set tiles(StreetViewTileData _tiles) {
    asJsObject(this)['tiles'] = __codec155.encode(_tiles);
  }
  StreetViewTileData get tiles => __codec155.decode(asJsObject(this)['tiles']);
}
/// codec for StreetViewTileData
final __codec155 = new JsInterfaceCodec<StreetViewTileData>(
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
    asJsObject(this)['latLng'] = __codec6.encode(_latLng);
  }
  LatLng get latLng => __codec6.decode(asJsObject(this)['latLng']);
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
    asJsObject(this)['tileSize'] = __codec50.encode(_tileSize);
  }
  Size get tileSize => __codec50.decode(asJsObject(this)['tileSize']);
  void set worldSize(Size _worldSize) {
    asJsObject(this)['worldSize'] = __codec50.encode(_worldSize);
  }
  Size get worldSize => __codec50.decode(asJsObject(this)['worldSize']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewService
// **************************************************************************

@JsName('google.maps.StreetViewService')
class StreetViewService extends JsInterface implements _StreetViewService {
  StreetViewService.created(JsObject o) : super.created(o);

  void getPanoramaById(
      String pano, callback(StreetViewPanoramaData p1, StreetViewStatus p2)) {
    asJsObject(this).callMethod(
        'getPanoramaById', [pano, __codec156.encode(callback)]);
  }
  void getPanoramaByLocation(LatLng latlng, num radius,
      callback(StreetViewPanoramaData p1, StreetViewStatus p2)) {
    asJsObject(this).callMethod('getPanoramaByLocation', [
      __codec6.encode(latlng),
      radius,
      __codec156.encode(callback)
    ]);
  }
}
/// codec for (StreetViewPanoramaData, StreetViewStatus) → dynamic
final __codec156 =
    new FunctionCodec /*<(StreetViewPanoramaData, StreetViewStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec154.decode(p_p1);
  p_p2 = __codec151.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec154.encode(p_p1);
  p_p2 = __codec151.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _StreetViewCoverageLayer
// **************************************************************************

@JsName('google.maps.StreetViewCoverageLayer')
class StreetViewCoverageLayer extends MVCObject
    implements _StreetViewCoverageLayer {
  StreetViewCoverageLayer.created(JsObject o) : super.created(o);
  StreetViewCoverageLayer() : this.created(
          new JsObject(getPath('google.maps.StreetViewCoverageLayer')));

  GMap get map => _getMap();
  GMap _getMap() => __codec28.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec28.encode(map)]);
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
      Object instance, String eventName, Function handler,
      [bool capture]) => __codec157.decode(asJsObject(this).callMethod(
          'addDomListener', [instance, eventName, handler, capture]));
  MapsEventListener addDomListenerOnce(
      Object instance, String eventName, Function handler,
      [bool capture]) => __codec157.decode(asJsObject(this).callMethod(
          'addDomListenerOnce', [instance, eventName, handler, capture]));
  MapsEventListener addListener(
      Object instance, String eventName, Function handler) => __codec157.decode(
          asJsObject(this).callMethod(
              'addListener', [instance, eventName, handler]));
  MapsEventListener addListenerOnce(
      Object instance, String eventName, Function handler) => __codec157.decode(
          asJsObject(this).callMethod(
              'addListenerOnce', [instance, eventName, handler]));
  void clearInstanceListeners(Object instance) {
    asJsObject(this).callMethod('clearInstanceListeners', [instance]);
  }
  void clearListeners(Object instance, String eventName) {
    asJsObject(this).callMethod('clearListeners', [instance, eventName]);
  }
  void removeListener(MapsEventListener listener) {
    asJsObject(this).callMethod(
        'removeListener', [__codec157.encode(listener)]);
  }
  void trigger(Object instance, String eventName, dynamic var_args) {
    asJsObject(this).callMethod('trigger', [instance, eventName, var_args]);
  }
}
/// codec for MapsEventListener
final __codec157 = new JsInterfaceCodec<MapsEventListener>(
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
    asJsObject(this)['latLng'] = __codec6.encode(_latLng);
  }
  LatLng get latLng => __codec6.decode(asJsObject(this)['latLng']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _LatLng
// **************************************************************************

@JsName('google.maps.LatLng')
class LatLng extends JsInterface implements _LatLng {
  LatLng.created(JsObject o) : super.created(o);
  LatLng(num lat, num lng, [bool noWrap]) : this.created(
          new JsObject(getPath('google.maps.LatLng'), [lat, lng, noWrap]));

  bool equals(LatLng other) =>
      asJsObject(this).callMethod('equals', [__codec6.encode(other)]);
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
          getPath('google.maps.LatLngBounds'), [
        __codec6.encode(sw),
        __codec6.encode(ne)
      ]));

  bool contains(LatLng latLng) =>
      asJsObject(this).callMethod('contains', [__codec6.encode(latLng)]);
  bool equals(LatLngBounds other) =>
      asJsObject(this).callMethod('equals', [__codec5.encode(other)]);
  LatLngBounds extend(LatLng point) => __codec5
      .decode(asJsObject(this).callMethod('extend', [__codec6.encode(point)]));
  LatLng get center => _getCenter();
  LatLng _getCenter() =>
      __codec6.decode(asJsObject(this).callMethod('getCenter'));
  LatLng get northEast => _getNorthEast();
  LatLng _getNorthEast() =>
      __codec6.decode(asJsObject(this).callMethod('getNorthEast'));
  LatLng get southWest => _getSouthWest();
  LatLng _getSouthWest() =>
      __codec6.decode(asJsObject(this).callMethod('getSouthWest'));
  bool intersects(LatLngBounds other) =>
      asJsObject(this).callMethod('intersects', [__codec5.encode(other)]);
  bool get isEmpty => _isEmpty();
  bool _isEmpty() => asJsObject(this).callMethod('isEmpty');
  LatLng toSpan() => __codec6.decode(asJsObject(this).callMethod('toSpan'));
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision]);
  LatLngBounds union(LatLngBounds other) => __codec5
      .decode(asJsObject(this).callMethod('union', [__codec5.encode(other)]));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Point
// **************************************************************************

@JsName('google.maps.Point')
class Point extends JsInterface implements _Point {
  Point.created(JsObject o) : super.created(o);
  Point(num x, num y)
      : this.created(new JsObject(getPath('google.maps.Point'), [x, y]));

  bool equals(Point other) =>
      asJsObject(this).callMethod('equals', [__codec49.encode(other)]);
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
      : this.created(new JsObject(
          getPath('google.maps.Size'), [width, height, widthUnit, heightUnit]));

  bool equals(Size other) =>
      asJsObject(this).callMethod('equals', [__codec50.encode(other)]);
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
  MVCObject() : this.created(new JsObject(getPath('google.maps.MVCObject')));

  MapsEventListener addListener(
      String eventName, Function handler) => __codec157
      .decode(asJsObject(this).callMethod('addListener', [eventName, handler]));
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) {
    asJsObject(this).callMethod(
        'bindTo', [key, __codec53.encode(target), targetKey, noNotify]);
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
          new JsObject(getPath('google.maps.MVCArray'), [
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
    asJsObject(this).callMethod('forEach', [__codec158.encode(callback)]);
  }
  List<E> getArray() => new JsList.created(_getArray(), _codec);
  JsArray _getArray() =>
      __codec159.decode(asJsObject(this).callMethod('getArray'));
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
/// codec for (dynamic, num) → void
final __codec158 = new FunctionCodec /*<(dynamic, num) → void>*/ ((f) => f,
    (JsFunction f) => (p_o, p_index) {
  f.apply([p_o, p_index]);
});

/// codec for JsArray<dynamic>
final __codec159 = new JsListCodec<dynamic>(null);
