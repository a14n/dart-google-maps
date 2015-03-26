// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-03-27T13:47:40.010Z

part of google_maps;

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _GMap
// **************************************************************************

@JsName('Map')
class GMap extends JsInterface implements _GMap {
  GMap.created(JsObject o) : super.created(o);
  GMap(html.Node mapDiv, [MapOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Map'), [mapDiv, opts].map(toJs).toList()));

  // methods

  void fitBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('fitBounds', [bounds].map(toJs).toList());
  }
  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getCenter'));
  html.Node get div => _getDiv();
  html.Node _getDiv() => asJsObject(this).callMethod('getDiv');
  num get heading => _getHeading();
  num _getHeading() => asJsObject(this).callMethod('getHeading');
  // TODO (aa) MapTypeId|String mapTypeId;
  dynamic get mapTypeId => mapTypeIdOrStringCodec.decode(_getMapTypeId());
  String _getMapTypeId() => asJsObject(this).callMethod('getMapTypeId');
  Projection get projection => _getProjection();
  Projection _getProjection() =>
      ((e) => e == null ? null : new Projection.created(e))(
          asJsObject(this).callMethod('getProjection'));
  StreetViewPanorama get streetView => _getStreetView();
  StreetViewPanorama _getStreetView() =>
      ((e) => e == null ? null : new StreetViewPanorama.created(e))(
          asJsObject(this).callMethod('getStreetView'));
  num get tilt => _getTilt();
  num _getTilt() => asJsObject(this).callMethod('getTilt');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void panBy(num x, num y) {
    asJsObject(this).callMethod('panBy', [x, y].map(toJs).toList());
  }
  void panTo(LatLng latLng) {
    asJsObject(this).callMethod('panTo', [latLng].map(toJs).toList());
  }
  void panToBounds(LatLngBounds latLngBounds) {
    asJsObject(this).callMethod(
        'panToBounds', [latLngBounds].map(toJs).toList());
  }
  void set center(LatLng latLng) => _setCenter(latLng);
  void _setCenter(LatLng latLng) {
    asJsObject(this).callMethod('setCenter', [latLng].map(toJs).toList());
  }
  void set heading(num heading) => _setHeading(heading);
  void _setHeading(num heading) {
    asJsObject(this).callMethod('setHeading', [heading].map(toJs).toList());
  }
  // TODO (aa) MapTypeId|String mapTypeId;
  void set mapTypeId(dynamic mapTypeId) =>
      _setMapTypeId(mapTypeIdOrStringCodec.encode(mapTypeId));
  void _setMapTypeId(String mapTypeId) {
    asJsObject(this).callMethod('setMapTypeId', [mapTypeId].map(toJs).toList());
  }
  void set options(MapOptions options) => _setOptions(options);
  void _setOptions(MapOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set streetView(StreetViewPanorama panorama) => _setStreetView(panorama);
  void _setStreetView(StreetViewPanorama panorama) {
    asJsObject(this).callMethod('setStreetView', [panorama].map(toJs).toList());
  }
  void set tilt(num tilt) => _setTilt(tilt);
  void _setTilt(num tilt) {
    asJsObject(this).callMethod('setTilt', [tilt].map(toJs).toList());
  }
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom) {
    asJsObject(this).callMethod('setZoom', [zoom].map(toJs).toList());
  }

  // properties

  void set controls(Controls _controls) {
    asJsObject(this)['controls'] =
        ((e) => e == null ? null : asJsObject(e))(_controls);
  }
  Controls get controls => ((e) => e == null ? null : new Controls.created(e))(
      asJsObject(this)['controls']);
  void set data(Data _data) {
    asJsObject(this)['data'] = toJs(_data);
  }
  Data get data => asJsObject(this)['data'];
  void set mapTypes(MapTypeRegistry _mapTypes) {
    asJsObject(this)['mapTypes'] =
        ((e) => e == null ? null : asJsObject(e))(_mapTypes);
  }
  MapTypeRegistry get mapTypes => ((e) => e == null
      ? null
      : new MapTypeRegistry.created(e))(asJsObject(this)['mapTypes']);
  MVCArray<MapType> get overlayMapTypes => ((o) {
    if (o == null) return null;
    return new MVCArray.created(
        o, new JsInterfaceCodec((o) => new MapType.created(o)));
  })(_overlayMapTypes);
  JsObject get _overlayMapTypes => asJsObject(this)['overlayMapTypes'];
  set overlayMapTypes(MVCArray<MapType> overlayMapTypes) {
    asJsObject(this)['overlayMapTypes'] =
        ((e) => e == null ? null : asJsObject(e))(overlayMapTypes);
  }

  // events

  Stream get onBoundsChanged =>
      getStream(this, #onBoundsChanged, "bounds_changed");
  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, "center_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));
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

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Controls
// **************************************************************************

class Controls extends JsInterface
    with MapMixin<ControlPosition, MVCArray<html.Node>> implements _Controls {
  Controls.created(JsObject o) : super.created(o);
  Controls() : super.created(new JsArray());

  MVCArray<html.Node> operator [](ControlPosition controlPosition) {
    var value = asJsObject(this)[controlPositionCodec.encode(controlPosition)];
    if (value == null) return null;
    return new MVCArray<html.Node>.created(value);
  }
  void operator []=(
      ControlPosition controlPosition, MVCArray<html.Node> nodes) {
    asJsObject(this)[controlPositionCodec.encode(controlPosition)] =
        toJs(nodes);
  }
  Iterable<ControlPosition> get keys {
    var result = <ControlPosition>[];
    for (final control in ControlPosition.values) {
      if (this[control] != null) result.add(control);
    }
    return result;
  }
  MVCArray<html.Node> remove(Object key) {
    var result = this[key];
    this[key] = null;
    return result;
  }
  void clear() => (asJsObject(this) as JsArray).clear();
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
    asJsObject(this)['center'] =
        ((e) => e == null ? null : asJsObject(e))(_center);
  }
  LatLng get center => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['center']);
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
        ((e) => e == null ? null : asJsObject(e))(_mapTypeControlOptions);
  }
  MapTypeControlOptions get mapTypeControlOptions =>
      ((e) => e == null ? null : new MapTypeControlOptions.created(e))(
          asJsObject(this)['mapTypeControlOptions']);
  // TODO (aa) report bad doc
  // TODO (aa) MapTypeId|String mapTypeId;
  void set _mapTypeId(String __mapTypeId) {
    asJsObject(this)['mapTypeId'] = __mapTypeId;
  }
  String get _mapTypeId => asJsObject(this)['mapTypeId'];
  dynamic get mapTypeId => mapTypeIdOrStringCodec.decode(_mapTypeId);
  void set mapTypeId(dynamic mapTypeId) {
    _mapTypeId = mapTypeIdOrStringCodec.encode(mapTypeId);
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
        ((e) => e == null ? null : asJsObject(e))(_overviewMapControlOptions);
  }
  OverviewMapControlOptions get overviewMapControlOptions =>
      ((e) => e == null ? null : new OverviewMapControlOptions.created(e))(
          asJsObject(this)['overviewMapControlOptions']);
  void set panControl(bool _panControl) {
    asJsObject(this)['panControl'] = _panControl;
  }
  bool get panControl => asJsObject(this)['panControl'];
  void set panControlOptions(PanControlOptions _panControlOptions) {
    asJsObject(this)['panControlOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_panControlOptions);
  }
  PanControlOptions get panControlOptions =>
      ((e) => e == null ? null : new PanControlOptions.created(e))(
          asJsObject(this)['panControlOptions']);
  void set rotateControl(bool _rotateControl) {
    asJsObject(this)['rotateControl'] = _rotateControl;
  }
  bool get rotateControl => asJsObject(this)['rotateControl'];
  void set rotateControlOptions(RotateControlOptions _rotateControlOptions) {
    asJsObject(this)['rotateControlOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_rotateControlOptions);
  }
  RotateControlOptions get rotateControlOptions =>
      ((e) => e == null ? null : new RotateControlOptions.created(e))(
          asJsObject(this)['rotateControlOptions']);
  void set scaleControl(bool _scaleControl) {
    asJsObject(this)['scaleControl'] = _scaleControl;
  }
  bool get scaleControl => asJsObject(this)['scaleControl'];
  void set scaleControlOptions(ScaleControlOptions _scaleControlOptions) {
    asJsObject(this)['scaleControlOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_scaleControlOptions);
  }
  ScaleControlOptions get scaleControlOptions =>
      ((e) => e == null ? null : new ScaleControlOptions.created(e))(
          asJsObject(this)['scaleControlOptions']);
  void set scrollwheel(bool _scrollwheel) {
    asJsObject(this)['scrollwheel'] = _scrollwheel;
  }
  bool get scrollwheel => asJsObject(this)['scrollwheel'];
  void set streetView(StreetViewPanorama _streetView) {
    asJsObject(this)['streetView'] =
        ((e) => e == null ? null : asJsObject(e))(_streetView);
  }
  StreetViewPanorama get streetView => ((e) => e == null
      ? null
      : new StreetViewPanorama.created(e))(asJsObject(this)['streetView']);
  void set streetViewControl(bool _streetViewControl) {
    asJsObject(this)['streetViewControl'] = _streetViewControl;
  }
  bool get streetViewControl => asJsObject(this)['streetViewControl'];
  void set streetViewControlOptions(
      StreetViewControlOptions _streetViewControlOptions) {
    asJsObject(this)['streetViewControlOptions'] =
        ((e) => e == null ? null : asJsObject(e))(_streetViewControlOptions);
  }
  StreetViewControlOptions get streetViewControlOptions =>
      ((e) => e == null ? null : new StreetViewControlOptions.created(e))(
          asJsObject(this)['streetViewControlOptions']);
  void set styles(List<MapTypeStyle> _styles) {
    asJsObject(this)['styles'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_styles);
  }
  List<MapTypeStyle> get styles => asJsObject(this)['styles'] as JsArray;
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
        ((e) => e == null ? null : asJsObject(e))(_zoomControlOptions);
  }
  ZoomControlOptions get zoomControlOptions =>
      ((e) => e == null ? null : new ZoomControlOptions.created(e))(
          asJsObject(this)['zoomControlOptions']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MapTypeControlOptions
// **************************************************************************

@anonymous
class MapTypeControlOptions extends JsInterface
    implements _MapTypeControlOptions {
  MapTypeControlOptions.created(JsObject o) : super.created(o);
  MapTypeControlOptions() : this.created(new JsObject(context['Object']));

  // List<String|MapTypeId> mapTypeIds
  void set _mapTypeIds(JsArray<String> __mapTypeIds) {
    asJsObject(this)['mapTypeIds'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(__mapTypeIds);
  }
  JsArray<String> get _mapTypeIds => asJsObject(this)['mapTypeIds'] as JsArray;
  List<dynamic /*String|MapTypeId*/ > get mapTypeIds =>
      new JsList.created(_mapTypeIds, mapTypeIdOrStringCodec);
  void set mapTypeIds(List<dynamic /*String|MapTypeId*/ > mapTypeIds) {
    _mapTypeIds =
        new JsArray.from(mapTypeIds.map(mapTypeIdOrStringCodec.encoder));
  }
  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
  // MapTypeControlStyle style;
  void set _style(int __style) {
    asJsObject(this)['style'] = __style;
  }
  int get _style => asJsObject(this)['style'];
  MapTypeControlStyle get style => mapTypeControlStyleCodec.decode(_style);
  void set style(MapTypeControlStyle style) {
    _style = mapTypeControlStyleCodec.encode(style);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _PanControlOptions
// **************************************************************************

@anonymous
class PanControlOptions extends JsInterface implements _PanControlOptions {
  PanControlOptions.created(JsObject o) : super.created(o);
  PanControlOptions() : this.created(new JsObject(context['Object']));

  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _RotateControlOptions
// **************************************************************************

@anonymous
class RotateControlOptions extends JsInterface
    implements _RotateControlOptions {
  RotateControlOptions.created(JsObject o) : super.created(o);
  RotateControlOptions() : this.created(new JsObject(context['Object']));

  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _ScaleControlOptions
// **************************************************************************

@anonymous
class ScaleControlOptions extends JsInterface implements _ScaleControlOptions {
  ScaleControlOptions.created(JsObject o) : super.created(o);
  ScaleControlOptions() : this.created(new JsObject(context['Object']));

  // TODO (aa) missing in doc... report ?
  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
  // ScaleControlStyle style;
  void set _style(String __style) {
    asJsObject(this)['style'] = __style;
  }
  String get _style => asJsObject(this)['style'];
  ScaleControlStyle get style => scaleControlStyleCodec.decode(_style);
  void set style(ScaleControlStyle style) {
    _style = scaleControlStyleCodec.encode(style);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _StreetViewControlOptions
// **************************************************************************

@anonymous
class StreetViewControlOptions extends JsInterface
    implements _StreetViewControlOptions {
  StreetViewControlOptions.created(JsObject o) : super.created(o);
  StreetViewControlOptions() : this.created(new JsObject(context['Object']));

  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _ZoomControlOptions
// **************************************************************************

@anonymous
class ZoomControlOptions extends JsInterface implements _ZoomControlOptions {
  ZoomControlOptions.created(JsObject o) : super.created(o);
  ZoomControlOptions() : this.created(new JsObject(context['Object']));

  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
  // ZoomControlStyle style;
  void set _style(int __style) {
    asJsObject(this)['style'] = __style;
  }
  int get _style => asJsObject(this)['style'];
  ZoomControlStyle get style => zoomControlStyleCodec.decode(_style);
  void set style(ZoomControlStyle style) {
    _style = zoomControlStyleCodec.encode(style);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Marker
// **************************************************************************

class Marker extends MVCObject implements _Marker {
  static final num MAX_ZINDEX = getPath('google.maps.Marker')['MAX_ZINDEX'];

  Marker.created(JsObject o) : super.created(o);
  Marker([MarkerOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Marker'), [opts].map(toJs).toList()));

  Stream get onAnimationChanged =>
      getStream(this, #onAnimationChanged, "animation_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream get onClickableChanged =>
      getStream(this, #onClickableChanged, "clickable_changed");
  Stream get onCursorChanged =>
      getStream(this, #onCursorChanged, "cursor_changed");
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));
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
  Stream get onShadowChanged =>
      getStream(this, #onShadowChanged, "shadow_changed");
  Stream get onShapeChanged =>
      getStream(this, #onShapeChanged, "shape_changed");
  Stream get onTitleChanged =>
      getStream(this, #onTitleChanged, "title_changed");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");

  Animation get animation => animationCodec.decode(_getAnimation());
  int _getAnimation() => asJsObject(this).callMethod('getAnimation');
  bool get clickable => _getClickable();
  bool _getClickable() => asJsObject(this).callMethod('getClickable');
  String get cursor => _getCursor();
  String _getCursor() => asJsObject(this).callMethod('getCursor');
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  /*String|Icon|GSymbol*/ get icon {
    final value = _getIcon();
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  _getIcon() => asJsObject(this).callMethod('getIcon');
  /*GMap|StreetViewPanorama*/ get map {
    final value = _getMap();
    if (value == null) return null;
    if (value is JsObject && value.instanceof(getPath('google.maps.Map'))) {
      return new GMap.created(value);
    }
    if (value is JsObject &&
        value.instanceof(getPath('google.maps.StreetViewPanorama'))) {
      return new StreetViewPanorama.created(value);
    }
    throw 'bad type';
  }
  _getMap() => asJsObject(this).callMethod('getMap');
  LatLng get position => _getPosition();
  LatLng _getPosition() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getPosition'));
  /*String|Icon|GSymbol*/ get shadow {
    final value = _getShadow();
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  _getShadow() => asJsObject(this).callMethod('getShadow');
  MarkerShape get shape => _getShape();
  MarkerShape _getShape() => ((e) => e == null
      ? null
      : new MarkerShape.created(e))(asJsObject(this).callMethod('getShape'));
  String get title => _getTitle();
  String _getTitle() => asJsObject(this).callMethod('getTitle');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void set animation(Animation animation) =>
      _setAnimation(animationCodec.encode(animation));
  void _setAnimation(int animation) {
    asJsObject(this).callMethod('setAnimation', [animation].map(toJs).toList());
  }
  void set clickable(bool clickable) => _setClickable(clickable);
  void _setClickable(bool clickable) {
    asJsObject(this).callMethod('setClickable', [clickable].map(toJs).toList());
  }
  void set cursor(String cursor) => _setCursor(cursor);
  void _setCursor(String cursor) {
    asJsObject(this).callMethod('setCursor', [cursor].map(toJs).toList());
  }
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable].map(toJs).toList());
  }
  void set icon(/*String|Icon|GSymbol*/ icon) => _setIcon(toJs(icon));
  void _setIcon(icon) {
    asJsObject(this).callMethod('setIcon', [icon].map(toJs).toList());
  }
  void set map(/*GMap|StreetViewPanorama*/ map) => _setMap(toJs(map));
  void _setMap(map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set options(MarkerOptions options) => _setOptions(options);
  void _setOptions(MarkerOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set position(LatLng latlng) => _setPosition(latlng);
  void _setPosition(LatLng latlng) {
    asJsObject(this).callMethod('setPosition', [latlng].map(toJs).toList());
  }
  void set shadow(/*String|Icon|GSymbol*/ shadow) => _setShadow(toJs(shadow));
  void _setShadow(shadow) {
    asJsObject(this).callMethod('setShadow', [shadow].map(toJs).toList());
  }
  void set title(String title) => _setTitle(title);
  void _setTitle(String title) {
    asJsObject(this).callMethod('setTitle', [title].map(toJs).toList());
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible].map(toJs).toList());
  }
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MarkerOptions
// **************************************************************************

@anonymous
class MarkerOptions extends JsInterface implements _MarkerOptions {
  MarkerOptions.created(JsObject o) : super.created(o);
  MarkerOptions() : this.created(new JsObject(context['Object']));

  void set anchorPoint(Point _anchorPoint) {
    asJsObject(this)['anchorPoint'] =
        ((e) => e == null ? null : asJsObject(e))(_anchorPoint);
  }
  Point get anchorPoint => ((e) => e == null ? null : new Point.created(e))(
      asJsObject(this)['anchorPoint']);
  // Animation animation
  void set _animation(int __animation) {
    asJsObject(this)['animation'] = __animation;
  }
  int get _animation => asJsObject(this)['animation'];
  Animation get animation => animationCodec.decode(_animation);
  void set animation(Animation animation) {
    _animation = animationCodec.encode(animation);
  }
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
  void set flat(bool _flat) {
    asJsObject(this)['flat'] = _flat;
  }
  bool get flat => asJsObject(this)['flat'];
  /*String|Icon|GSymbol*/ void set _icon(dynamic __icon) {
    asJsObject(this)['icon'] = toJs(__icon);
  }
  dynamic get _icon => asJsObject(this)['icon'];
  /*String|Icon|GSymbol*/ get icon {
    final value = _icon;
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  void set icon(/*String|Icon|GSymbol*/ icon) {
    _icon = toJs(icon);
  }
  /*GMap|StreetViewPanorama*/ void set _map(dynamic __map) {
    asJsObject(this)['map'] = toJs(__map);
  }
  dynamic get _map => asJsObject(this)['map'];
  /*GMap|StreetViewPanorama*/ get map {
    final value = _map;
    if (value == null) return null;
    if (value is JsObject && value.instanceof(getPath('google.maps.Map'))) {
      return new GMap.created(value);
    }
    if (value is JsObject &&
        value.instanceof(getPath('google.maps.StreetViewPanorama'))) {
      return new StreetViewPanorama.created(value);
    }
    throw 'bad type';
  }
  void set map(/*GMap|StreetViewPanorama*/ map) {
    _map = toJs(map);
  }
  void set optimized(bool _optimized) {
    asJsObject(this)['optimized'] = _optimized;
  }
  bool get optimized => asJsObject(this)['optimized'];
  void set position(LatLng _position) {
    asJsObject(this)['position'] =
        ((e) => e == null ? null : asJsObject(e))(_position);
  }
  LatLng get position => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['position']);
  void set raiseOnDrag(bool _raiseOnDrag) {
    asJsObject(this)['raiseOnDrag'] = _raiseOnDrag;
  }
  bool get raiseOnDrag => asJsObject(this)['raiseOnDrag'];
  void set crossOnDrag(bool _crossOnDrag) {
    asJsObject(this)['crossOnDrag'] = _crossOnDrag;
  }
  bool get crossOnDrag => asJsObject(this)['crossOnDrag'];
  /*String|Icon|GSymbol*/ void set _shadow(dynamic __shadow) {
    asJsObject(this)['shadow'] = toJs(__shadow);
  }
  dynamic get _shadow => asJsObject(this)['shadow'];
  /*String|Icon|GSymbol*/ get shadow {
    final value = _shadow;
    if (value == null) return null;
    if (value is String) return value;
    if (value is JsObject && value.instanceof(getPath('google.maps.Icon'))) {
      return new Icon.created(value);
    }
    if (value is JsObject && value.instanceof(getPath('google.maps.Symbol'))) {
      return new GSymbol.created(value);
    }
    throw 'bad type';
  }
  void set shadow(/*String|Icon|GSymbol*/ shadow) {
    _shadow = toJs(shadow);
  }
  void set shape(MarkerShape _shape) {
    asJsObject(this)['shape'] =
        ((e) => e == null ? null : asJsObject(e))(_shape);
  }
  MarkerShape get shape => ((e) =>
      e == null ? null : new MarkerShape.created(e))(asJsObject(this)['shape']);
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

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Icon
// **************************************************************************

@anonymous
class Icon extends JsInterface implements _Icon {
  Icon.created(JsObject o) : super.created(o);
  Icon() : this.created(new JsObject(context['Object']));

  void set anchor(Point _anchor) {
    asJsObject(this)['anchor'] =
        ((e) => e == null ? null : asJsObject(e))(_anchor);
  }
  Point get anchor => ((e) => e == null ? null : new Point.created(e))(
      asJsObject(this)['anchor']);
  void set origin(Point _origin) {
    asJsObject(this)['origin'] =
        ((e) => e == null ? null : asJsObject(e))(_origin);
  }
  Point get origin => ((e) => e == null ? null : new Point.created(e))(
      asJsObject(this)['origin']);
  void set scaledSize(Size _scaledSize) {
    asJsObject(this)['scaledSize'] =
        ((e) => e == null ? null : asJsObject(e))(_scaledSize);
  }
  Size get scaledSize => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['scaledSize']);
  void set size(Size _size) {
    asJsObject(this)['size'] = ((e) => e == null ? null : asJsObject(e))(_size);
  }
  Size get size =>
      ((e) => e == null ? null : new Size.created(e))(asJsObject(this)['size']);
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MarkerShape
// **************************************************************************

@anonymous
class MarkerShape extends JsInterface implements _MarkerShape {
  MarkerShape.created(JsObject o) : super.created(o);
  MarkerShape() : this.created(new JsObject(context['Object']));

  void set coords(List<num> _coords) {
    asJsObject(this)['coords'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_coords);
  }
  List<num> get coords => asJsObject(this)['coords'] as JsArray;
  // MarkerShapeType type
  void set _type(String __type) {
    asJsObject(this)['type'] = __type;
  }
  String get _type => asJsObject(this)['type'];
  MarkerShapeType get type => markerShapeTypeCodec.decode(_type);
  void set type(MarkerShapeType type) {
    _type = markerShapeTypeCodec.encode(type);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _GSymbol
// **************************************************************************

@anonymous
class GSymbol extends JsInterface implements _GSymbol {
  GSymbol.created(JsObject o) : super.created(o);
  GSymbol() : this.created(new JsObject(context['Object']));

  void set anchor(Point _anchor) {
    asJsObject(this)['anchor'] =
        ((e) => e == null ? null : asJsObject(e))(_anchor);
  }
  Point get anchor => ((e) => e == null ? null : new Point.created(e))(
      asJsObject(this)['anchor']);
  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(num _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  num get fillOpacity => asJsObject(this)['fillOpacity'];
  // SymbolPath|String path
  void set _path(dynamic __path) {
    asJsObject(this)['path'] = toJs(__path);
  }
  dynamic get _path => asJsObject(this)['path'];
  /*SymbolPath|String*/ get path {
    final value = _path;
    if (value == null) return null;
    if (value is int) return symbolPathCodec.decode(value);
    if (value is String) return value;
    throw 'bad type';
  }
  void set path(/*SymbolPath|String*/ path) {
    if (path == null) _path = null;
    else if (path is SymbolPath) _path = symbolPathCodec.encode(path);
    else if (path is String) _path = path;
    else throw 'bad type';
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _InfoWindow
// **************************************************************************

class InfoWindow extends MVCObject implements _InfoWindow {
  InfoWindow.created(JsObject o) : super.created(o);
  InfoWindow([InfoWindowOptions opts]) : this.created(new JsObject(
          getPath('google.maps.InfoWindow'), [opts].map(toJs).toList()));

  Stream get onCloseclick => getStream(this, #onCloseclick, "closeclick");
  Stream get onContentChanged =>
      getStream(this, #onContentChanged, "content_changed");
  Stream get onDomready => getStream(this, #onDomready, "domready");
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream get onZindexChanged =>
      getStream(this, #onZindexChanged, "zindex_changed");

  void close() {
    asJsObject(this).callMethod('close');
  }
  /*String|html.Node*/ get content => _getContent();
  _getContent() => asJsObject(this).callMethod('getContent');
  LatLng get position => _getPosition();
  LatLng _getPosition() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getPosition'));
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void open([/*GMap|StreetViewPanorama*/ map, MVCObject anchor]) {
    asJsObject(this).callMethod('open', [map, anchor].map(toJs).toList());
  }
  void set content(/*String|html.Node*/ content) => _setContent(content);
  void _setContent(/*String|html.Node*/ content) {
    asJsObject(this).callMethod('setContent', [content].map(toJs).toList());
  }
  void set options(InfoWindowOptions options) => _setOptions(options);
  void _setOptions(InfoWindowOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set position(LatLng position) => _setPosition(position);
  void _setPosition(LatLng position) {
    asJsObject(this).callMethod('setPosition', [position].map(toJs).toList());
  }
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _InfoWindowOptions
// **************************************************************************

@anonymous
class InfoWindowOptions extends JsInterface implements _InfoWindowOptions {
  InfoWindowOptions.created(JsObject o) : super.created(o);
  InfoWindowOptions() : this.created(new JsObject(context['Object']));

  /*String|html.Node*/ void set content(dynamic _content) {
    asJsObject(this)['content'] = toJs(_content);
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
    asJsObject(this)['pixelOffset'] =
        ((e) => e == null ? null : asJsObject(e))(_pixelOffset);
  }
  Size get pixelOffset => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['pixelOffset']);
  void set position(LatLng _position) {
    asJsObject(this)['position'] =
        ((e) => e == null ? null : asJsObject(e))(_position);
  }
  LatLng get position => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['position']);
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Polyline
// **************************************************************************

class Polyline extends MVCObject implements _Polyline {
  Polyline.created(JsObject o) : super.created(o);
  Polyline([PolylineOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Polyline'), [opts].map(toJs).toList()));

  Stream<PolyMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblClick => getStream(this, #onDblClick,
      "dblclick", (JsObject o) => new PolyMouseEvent.created(o));
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

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path => new MVCArray.created(
      _getPath(), new JsInterfaceCodec((o) => new LatLng.created(o)));
  JsObject _getPath() => asJsObject(this).callMethod('getPath');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable].map(toJs).toList());
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable].map(toJs).toList());
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set options(PolylineOptions options) => _setOptions(options);
  void _setOptions(PolylineOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) {
    if (path == null) _setPath(null);
    else if (path is MVCArray<LatLng>) _setPath(path);
    else if (path is List<LatLng>) _setPath(new JsArray.from(path.map(toJs)));
    else throw 'bad type';
  }
  void _setPath(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [path].map(toJs).toList());
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
    asJsObject(this)['icons'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_icons);
  }
  List<IconSequence> get icons => ((e) {
    if (e == null) return null;
    return new JsList<IconSequence>.created(e,
        new JsInterfaceCodec<IconSequence>((o) => new IconSequence.created(o)));
  })(asJsObject(this)['icons']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  //MVCArray<LatLng>|List<LatLng> path
  void set _path(dynamic __path) {
    asJsObject(this)['path'] = toJs(__path);
  }
  dynamic get _path => asJsObject(this)['path'];
  /*MVCArray<LatLng>|List<LatLng>*/ get path {
    final result = _path;
    if (result == null) return null;
    if (result is JsArray) return new JsList.created(
        result, new JsInterfaceCodec((o) => new LatLng.created(o)));
    if (result is JsObject &&
        result.instanceof(
                getPath('google.maps.MVCArray'))) return new MVCArray.created(
            result, new JsInterfaceCodec((o) => new LatLng.created(o)));
    throw 'bad type';
  }
  void set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) {
    if (path == null) _path = null;
    else if (path is MVCArray<LatLng>) _path = path;
    else if (path is List<LatLng>) _path = new JsArray.from(path.map(toJs));
    else throw 'bad type';
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

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
    asJsObject(this)['icon'] = ((e) => e == null ? null : asJsObject(e))(_icon);
  }
  GSymbol get icon => ((e) => e == null ? null : new GSymbol.created(e))(
      asJsObject(this)['icon']);
  void set offset(String _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  String get offset => asJsObject(this)['offset'];
  void set repeat(String _repeat) {
    asJsObject(this)['repeat'] = _repeat;
  }
  String get repeat => asJsObject(this)['repeat'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Polygon
// **************************************************************************

class Polygon extends MVCObject implements _Polygon {
  Polygon.created(JsObject o) : super.created(o);
  Polygon([PolygonOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Polygon'), [opts].map(toJs).toList()));

  Stream<PolyMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new PolyMouseEvent.created(o));
  Stream<PolyMouseEvent> get onDblClick => getStream(this, #onDblClick,
      "dblclick", (JsObject o) => new PolyMouseEvent.created(o));
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

  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  MVCArray<LatLng> get path => new MVCArray.created(
      _getPath(), new JsInterfaceCodec((o) => new LatLng.created(o)));
  JsObject _getPath() => asJsObject(this).callMethod('getPath');
  MVCArray<MVCArray<LatLng>> get paths => new MVCArray.created(_getPaths(),
      new JsInterfaceCodec((o) => new MVCArray.created(
          o, new JsInterfaceCodec((o) => new LatLng.created(o)))));
  JsObject _getPaths() => asJsObject(this).callMethod('getPaths');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable].map(toJs).toList());
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable].map(toJs).toList());
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set options(PolygonOptions options) => _setOptions(options);
  void _setOptions(PolygonOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) {
    if (path == null) _setPath(null);
    else if (path is MVCArray<LatLng>) _setPath(path);
    else if (path is List<LatLng>) _setPath(new JsArray.from(path.map(toJs)));
    else throw 'bad type';
  }
  void _setPath(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path) {
    asJsObject(this).callMethod('setPath', [path].map(toJs).toList());
  }
  void set paths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ paths) {
    if (paths == null) _setPaths(null);
    else if (paths is MVCArray<MVCArray<LatLng>>) _setPaths(paths);
    else if (paths is List<List<LatLng>>) _setPaths(
        new JsArray.from(paths.map((o) => new JsArray.from(o.map(toJs)))));
    else if (paths is MVCArray<LatLng>) _setPaths(paths);
    else if (paths is List<LatLng>) _setPaths(
        new JsArray.from(paths.map(toJs)));
    else throw 'bad type';
  }
  void _setPaths(
      dynamic /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|List<List<LatLng>>|List<LatLng>*/ path) {
    asJsObject(this).callMethod('setPaths', [path].map(toJs).toList());
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set _paths(dynamic __paths) {
    asJsObject(this)['paths'] = toJs(__paths);
  }
  dynamic get _paths => asJsObject(this)['paths'];
  void set paths(dynamic paths) {
    if (paths == null) _paths = null;
    else if (paths is MVCArray<MVCArray<LatLng>>) _paths = paths;
    else if (paths is List<List<LatLng>>) _paths =
        new JsArray.from(paths.map((o) => new JsArray.from(o.map(toJs))));
    else if (paths is MVCArray<LatLng>) _paths = paths;
    else if (paths is List<LatLng>) _paths = new JsArray.from(paths.map(toJs));
    else throw 'bad type';
  }
  get paths {
    final value = _paths;
    if (value == null) return null;
    if (value is JsObject &&
        value.instanceof(getPath('google.maps.MVCArray'))) {
      final firstElement = new MVCArray.created(value);
      if (firstElement is JsObject &&
          firstElement.instanceof(getPath('google.maps.MVCArray'))) {
        return new MVCArray.created(value, new JsInterfaceCodec(
            (o) => new MVCArray.created(
                o, new JsInterfaceCodec((o) => new LatLng.created(o)))));
      } else {
        new MVCArray.created(
            value, new JsInterfaceCodec((o) => new LatLng.created(o)));
      }
    }
    if (value is JsArray) {
      final firstElement = value.first;
      if (firstElement is JsArray) {
        return new JsList.created(value, new JsInterfaceCodec(
            (o) => new JsList.created(
                o, new JsInterfaceCodec((o) => new LatLng.created(o)))));
      } else {
        new JsList.created(
            value, new JsInterfaceCodec((o) => new LatLng.created(o)));
      }
    }
    throw 'bad type';
  }
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  // StrokePosition strokePosition;
  void set _strokePosition(int __strokePosition) {
    asJsObject(this)['strokePosition'] = __strokePosition;
  }
  int get _strokePosition => asJsObject(this)['strokePosition'];
  StrokePosition get strokePosition =>
      strokePositionCodec.decode(_strokePosition);
  void set strokePosition(StrokePosition strokePosition) {
    _strokePosition = strokePositionCodec.encode(strokePosition);
  }
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _PolyMouseEvent
// **************************************************************************

@anonymous
class PolyMouseEvent extends MouseEvent implements _PolyMouseEvent {
  PolyMouseEvent.created(JsObject o) : super.created(o);
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Rectangle
// **************************************************************************

class Rectangle extends MVCObject implements _Rectangle {
  Rectangle.created(JsObject o) : super.created(o);
  Rectangle([RectangleOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Rectangle'), [opts].map(toJs).toList()));

  Stream get onBoundsChanged =>
      getStream(this, #onBoundsChanged, "bounds_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));
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

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this).callMethod('getBounds'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [bounds].map(toJs).toList());
  }
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable].map(toJs).toList());
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable].map(toJs).toList());
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set options(RectangleOptions options) => _setOptions(options);
  void _setOptions(RectangleOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _RectangleOptions
// **************************************************************************

@anonymous
class RectangleOptions extends JsInterface implements _RectangleOptions {
  RectangleOptions.created(JsObject o) : super.created(o);
  RectangleOptions() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
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
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(num _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  num get strokeOpacity => asJsObject(this)['strokeOpacity'];
  // StrokePosition strokePosition;
  void set _strokePosition(int __strokePosition) {
    asJsObject(this)['strokePosition'] = __strokePosition;
  }
  int get _strokePosition => asJsObject(this)['strokePosition'];
  StrokePosition get strokePosition =>
      strokePositionCodec.decode(_strokePosition);
  void set strokePosition(StrokePosition strokePosition) {
    _strokePosition = strokePositionCodec.encode(strokePosition);
  }
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Circle
// **************************************************************************

class Circle extends MVCObject implements _Circle {
  Circle.created(JsObject o) : super.created(o);
  Circle([CircleOptions opts]) : this.created(new JsObject(
          getPath('google.maps.Circle'), [opts].map(toJs).toList()));

  Stream get onCenterChanged =>
      getStream(this, #onCenterChanged, "center_changed");
  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));
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

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this).callMethod('getBounds'));
  LatLng get center => _getCenter();
  LatLng _getCenter() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getCenter'));
  bool get draggable => _getDraggable();
  bool _getDraggable() => asJsObject(this).callMethod('getDraggable');
  bool get editable => _getEditable();
  bool _getEditable() => asJsObject(this).callMethod('getEditable');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  num get radius => _getRadius();
  num _getRadius() => asJsObject(this).callMethod('getRadius');
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  void set center(LatLng center) => _setCenter(center);
  void _setCenter(LatLng center) {
    asJsObject(this).callMethod('setCenter', [center].map(toJs).toList());
  }
  void set draggable(bool draggable) => _setDraggable(draggable);
  void _setDraggable(bool draggable) {
    asJsObject(this).callMethod('setDraggable', [draggable].map(toJs).toList());
  }
  void set editable(bool editable) => _setEditable(editable);
  void _setEditable(bool editable) {
    asJsObject(this).callMethod('setEditable', [editable].map(toJs).toList());
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set options(CircleOptions options) => _setOptions(options);
  void _setOptions(CircleOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
  void set radius(num radius) => _setRadius(radius);
  void _setRadius(num radius) {
    asJsObject(this).callMethod('setRadius', [radius].map(toJs).toList());
  }
  void set visible(bool visible) => _setVisible(visible);
  void _setVisible(bool visible) {
    asJsObject(this).callMethod('setVisible', [visible].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _CircleOptions
// **************************************************************************

@anonymous
class CircleOptions extends JsInterface implements _CircleOptions {
  CircleOptions.created(JsObject o) : super.created(o);
  CircleOptions() : this.created(new JsObject(context['Object']));

  void set center(LatLng _center) {
    asJsObject(this)['center'] =
        ((e) => e == null ? null : asJsObject(e))(_center);
  }
  LatLng get center => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['center']);
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
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
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
  // StrokePosition strokePosition;
  void set _strokePosition(int __strokePosition) {
    asJsObject(this)['strokePosition'] = __strokePosition;
  }
  int get _strokePosition => asJsObject(this)['strokePosition'];
  StrokePosition get strokePosition =>
      strokePositionCodec.decode(_strokePosition);
  void set strokePosition(StrokePosition strokePosition) {
    _strokePosition = strokePositionCodec.encode(strokePosition);
  }
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _GroundOverlay
// **************************************************************************

class GroundOverlay extends MVCObject implements _GroundOverlay {
  GroundOverlay.created(JsObject o) : super.created(o);
  GroundOverlay(String url, LatLngBounds bounds, [GroundOverlayOptions opts])
      : this.created(new JsObject(getPath('google.maps.GroundOverlay'),
          [url, bounds, opts].map(toJs).toList()));

  Stream<MouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => new MouseEvent.created(o));
  Stream<MouseEvent> get onDblClick => getStream(
      this, #onDblClick, "dblclick", (JsObject o) => new MouseEvent.created(o));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this).callMethod('getBounds'));
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  String get url => _getUrl();
  String _getUrl() => asJsObject(this).callMethod('getUrl');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _OverlayView
// **************************************************************************

class OverlayView extends MVCObject implements _OverlayView {
  OverlayView.created(JsObject o) : super.created(o);
  OverlayView()
      : this.created(new JsObject(getPath('google.maps.OverlayView')));

  void draw() {
    asJsObject(this).callMethod('draw');
  }
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  MapPanes get panes => _getPanes();
  MapPanes _getPanes() => ((e) => e == null ? null : new MapPanes.created(e))(
      asJsObject(this).callMethod('getPanes'));
  MapCanvasProjection get projection => _getProjection();
  MapCanvasProjection _getProjection() =>
      ((e) => e == null ? null : new MapCanvasProjection.created(e))(
          asJsObject(this).callMethod('getProjection'));
  void onAdd() {
    asJsObject(this).callMethod('onAdd');
  }
  void onRemove() {
    asJsObject(this).callMethod('onRemove');
  }
  set map(/*GMap|StreetViewPanorama*/ dynamic map) {
    asJsObject(this)['map'] = toJs(map);
  }

  void set_onAdd(onAdd()) {
    _onAdd = onAdd;
  }
  void set _onAdd(onAdd()) {
    asJsObject(this)['onAdd'] = onAdd;
  }
  void set_onRemove(onRemove()) {
    _onRemove = onRemove;
  }
  void set _onRemove(onRemove()) {
    asJsObject(this)['onRemove'] = onRemove;
  }
  void set_draw(draw()) {
    _draw = draw;
  }
  void set _draw(draw()) {
    asJsObject(this)['draw'] = draw;
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MapPanes
// **************************************************************************

@anonymous
class MapPanes extends JsInterface implements _MapPanes {
  MapPanes.created(JsObject o) : super.created(o);

  void set floatPane(html.Node _floatPane) {
    asJsObject(this)['floatPane'] = _floatPane;
  }
  html.Node get floatPane => asJsObject(this)['floatPane'];
  void set floatShadow(html.Node _floatShadow) {
    asJsObject(this)['floatShadow'] = _floatShadow;
  }
  html.Node get floatShadow => asJsObject(this)['floatShadow'];
  void set mapPane(html.Node _mapPane) {
    asJsObject(this)['mapPane'] = _mapPane;
  }
  html.Node get mapPane => asJsObject(this)['mapPane'];
  void set overlayImage(html.Node _overlayImage) {
    asJsObject(this)['overlayImage'] = _overlayImage;
  }
  html.Node get overlayImage => asJsObject(this)['overlayImage'];
  void set overlayLayer(html.Node _overlayLayer) {
    asJsObject(this)['overlayLayer'] = _overlayLayer;
  }
  html.Node get overlayLayer => asJsObject(this)['overlayLayer'];
  void set overlayMouseTarget(html.Node _overlayMouseTarget) {
    asJsObject(this)['overlayMouseTarget'] = _overlayMouseTarget;
  }
  html.Node get overlayMouseTarget => asJsObject(this)['overlayMouseTarget'];
  void set overlayShadow(html.Node _overlayShadow) {
    asJsObject(this)['overlayShadow'] = _overlayShadow;
  }
  html.Node get overlayShadow => asJsObject(this)['overlayShadow'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MapCanvasProjection
// **************************************************************************

class MapCanvasProjection extends MVCObject implements _MapCanvasProjection {
  MapCanvasProjection.created(JsObject o) : super.created(o);

  LatLng fromContainerPixelToLatLng(Point pixel,
      [bool nowrap]) => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod(
          'fromContainerPixelToLatLng', [pixel, nowrap].map(toJs).toList()));
  LatLng fromDivPixelToLatLng(Point pixel, [bool nowrap]) =>
      ((e) => e == null ? null : new LatLng.created(e))(asJsObject(this)
          .callMethod(
              'fromDivPixelToLatLng', [pixel, nowrap].map(toJs).toList()));
  Point fromLatLngToContainerPixel(LatLng latLng) =>
      ((e) => e == null ? null : new Point.created(e))(asJsObject(this)
          .callMethod(
              'fromLatLngToContainerPixel', [latLng].map(toJs).toList()));
  Point fromLatLngToDivPixel(LatLng latLng) =>
      ((e) => e == null ? null : new Point.created(e))(asJsObject(this)
          .callMethod('fromLatLngToDivPixel', [latLng].map(toJs).toList()));
  num get worldWidth => _getWorldWidth();
  num _getWorldWidth() => asJsObject(this).callMethod('getWorldWidth');
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MapType
// **************************************************************************

@anonymous
class MapType extends JsInterface implements _MapType {
  MapType.created(JsObject o) : super.created(o);

  html.Node getTile(Point tileCoord, num zoom,
      JsObject /*html.Document*/ ownerDocument) => asJsObject(this).callMethod(
          'getTile', [tileCoord, zoom, ownerDocument].map(toJs).toList());
  void releaseTile(html.Node tile) {
    asJsObject(this).callMethod('releaseTile', [tile].map(toJs).toList());
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
    asJsObject(this)['projection'] =
        ((e) => e == null ? null : asJsObject(e))(_projection);
  }
  Projection get projection => ((e) => e == null
      ? null
      : new Projection.created(e))(asJsObject(this)['projection']);
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] =
        ((e) => e == null ? null : asJsObject(e))(_tileSize);
  }
  Size get tileSize => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['tileSize']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MapTypeRegistry
// **************************************************************************

class MapTypeRegistry extends MVCObject implements _MapTypeRegistry {
  MapTypeRegistry.created(JsObject o) : super.created(o);
  MapTypeRegistry()
      : this.created(new JsObject(getPath('google.maps.MapTypeRegistry')));

  void set(String id, MapType mapType) {
    asJsObject(this).callMethod('set', [id, mapType].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Projection
// **************************************************************************

@anonymous
class Projection extends JsInterface implements _Projection {
  Projection.created(JsObject o) : super.created(o);

//  void set_fromLatLngToPoint(Point fromLatLngToPoint(LatLng latLng, [Point point])) {
//    $unsafe['fromLatLngToPoint'] = (js.JsObject latLng, [js.JsObject point]) {
//      if (point != null) {
//        return jsw.Serializable.$unwrap(fromLatLngToPoint(LatLng.$wrap(latLng), Point.$wrap(point)));
//      } else {
//        return jsw.Serializable.$unwrap(fromLatLngToPoint(LatLng.$wrap(latLng)));
//      }
//    };
//  }
//  void set_fromPointToLatLng(LatLng fromPointToLatLng(Point pixel, [bool nowrap])) {
//    $unsafe['fromPointToLatLng'] = (js.JsObject pixel, [bool nowrap]) {
//      if (nowrap != null) {
//        return jsw.Serializable.$unwrap(fromPointToLatLng(Point.$wrap(pixel), nowrap));
//      } else {
//        return jsw.Serializable.$unwrap(fromPointToLatLng(Point.$wrap(pixel)));
//      }
//    };
//  }

  Point fromLatLngToPoint(LatLng latLng, [Point point]) =>
      ((e) => e == null ? null : new Point.created(e))(asJsObject(this)
          .callMethod('fromLatLngToPoint', [latLng, point].map(toJs).toList()));
  LatLng fromPointToLatLng(Point pixel, [bool nowrap]) =>
      ((e) => e == null ? null : new LatLng.created(e))(asJsObject(this)
          .callMethod('fromPointToLatLng', [pixel, nowrap].map(toJs).toList()));
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _BicyclingLayer
// **************************************************************************

class BicyclingLayer extends MVCObject implements _BicyclingLayer {
  BicyclingLayer.created(JsObject o) : super.created(o);
  BicyclingLayer()
      : this.created(new JsObject(getPath('google.maps.BicyclingLayer')));

  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _FusionTablesLayer
// **************************************************************************

class FusionTablesLayer extends MVCObject implements _FusionTablesLayer {
  FusionTablesLayer.created(JsObject o) : super.created(o);
  FusionTablesLayer(FusionTablesLayerOptions options) : this.created(
          new JsObject(getPath('google.maps.FusionTablesLayer'),
              [options].map(toJs).toList()));

  Stream<FusionTablesMouseEvent> get onClick => getStream(this, #onClick,
      "click", (JsObject o) => new FusionTablesMouseEvent.created(o));

  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [map].map(toJs).toList());
  }
  void set options(FusionTablesLayerOptions options) => _setOptions(options);
  void _setOptions(FusionTablesLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [options].map(toJs).toList());
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _StreetViewPanorama
// **************************************************************************

class StreetViewPanorama extends MVCObject implements _StreetViewPanorama {
  StreetViewPanorama.created(JsObject o) : super.created(o);
  StreetViewPanorama(html.Node container, [StreetViewPanoramaOptions opts])
      : this.created(new JsObject(getPath('google.maps.StreetViewPanorama'),
          [container, opts].map(toJs).toList()));

  Stream<JsObject> get onCloseclick =>
      getStream(this, #onCloseclick, "closeclick");
  Stream get onLinksChanged =>
      getStream(this, #onLinksChanged, "links_changed");
  Stream get onPanoChanged => getStream(this, #onPanoChanged, "pano_changed");
  Stream get onPositionChanged =>
      getStream(this, #onPositionChanged, "position_changed");
  Stream get onPovChanged => getStream(this, #onPovChanged, "pov_changed");
  Stream get onResize => getStream(this, #onResize, "resize");
  Stream get onVisibleChanged =>
      getStream(this, #onVisibleChanged, "visible_changed");
  Stream get onZoomChanged => getStream(this, #onZoomChanged, "zoom_changed");

  List<StreetViewLink> get links => _getLinks();
  List<StreetViewLink> _getLinks() => ((e) {
    if (e == null) return null;
    return new JsList<StreetViewLink>.created(e,
        new JsInterfaceCodec<StreetViewLink>(
            (o) => new StreetViewLink.created(o)));
  })(asJsObject(this).callMethod('getLinks'));
  String get pano => _getPano();
  String _getPano() => asJsObject(this).callMethod('getPano');
  StreetViewPov get photographerPov => _getPhotographerPov();
  StreetViewPov _getPhotographerPov() =>
      ((e) => e == null ? null : new StreetViewPov.created(e))(
          asJsObject(this).callMethod('getPhotographerPov'));
  LatLng get position => _getPosition();
  LatLng _getPosition() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getPosition'));
  StreetViewPov get pov => _getPov();
  StreetViewPov _getPov() => ((e) => e == null
      ? null
      : new StreetViewPov.created(e))(asJsObject(this).callMethod('getPov'));
  bool get visible => _getVisible();
  bool _getVisible() => asJsObject(this).callMethod('getVisible');
  num get zoom => _getZoom();
  num _getZoom() => asJsObject(this).callMethod('getZoom');
  void registerPanoProvider(StreetViewPanoramaData provider(String pano)) =>
      _registerPanoProvider((pano) => toJs(provider(pano)));
  void _registerPanoProvider(JsObject provider(String pano)) {
    asJsObject(this).callMethod(
        'registerPanoProvider', [provider].map(toJs).toList());
  }
  void set pano(String pano) => _setPano(pano);
  void _setPano(String pano) {
    asJsObject(this).callMethod('setPano', [pano].map(toJs).toList());
  }
  void set position(LatLng latLng) => _setPosition(latLng);
  void _setPosition(LatLng latLng) {
    asJsObject(this).callMethod('setPosition', [latLng].map(toJs).toList());
  }
  void set pov(StreetViewPov pov) => _setPov(pov);
  void _setPov(StreetViewPov pov) {
    asJsObject(this).callMethod('setPov', [pov].map(toJs).toList());
  }
  void set visible(bool flag) => _setVisible(flag);
  void _setVisible(bool flag) {
    asJsObject(this).callMethod('setVisible', [flag].map(toJs).toList());
  }
  void set zoom(num zoom) => _setZoom(zoom);
  void _setZoom(num zoom) {
    asJsObject(this).callMethod('setZoom', [zoom].map(toJs).toList());
  }

  void set controls(Controls _controls) {
    asJsObject(this)['controls'] =
        ((e) => e == null ? null : asJsObject(e))(_controls);
  }
  Controls get controls => ((e) => e == null ? null : new Controls.created(e))(
      asJsObject(this)['controls']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
        ((e) => e == null ? null : asJsObject(e))(_addressControlOptions);
  }
  StreetViewAddressControlOptions get addressControlOptions => ((e) =>
          e == null ? null : new StreetViewAddressControlOptions.created(e))(
      asJsObject(this)['addressControlOptions']);
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
        ((e) => e == null ? null : asJsObject(e))(_panControlOptions);
  }
  PanControlOptions get panControlOptions =>
      ((e) => e == null ? null : new PanControlOptions.created(e))(
          asJsObject(this)['panControlOptions']);
  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
  void set panoProvider(PanoProvider panoProvider) {
    _panoProvider = (String pano) => toJs(panoProvider(pano));
  }
  void set _panoProvider(panoProvider) {
    asJsObject(this)['panoProvider'] = toJs(panoProvider);
  }
  PanoProvider get panoProvider => (String pano) =>
      new StreetViewPanoramaData.created(_panoProvider.apply([pano]));
  JsFunction get _panoProvider => asJsObject(this)['panoProvider'];
  void set position(LatLng _position) {
    asJsObject(this)['position'] =
        ((e) => e == null ? null : asJsObject(e))(_position);
  }
  LatLng get position => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['position']);
  void set pov(StreetViewPov _pov) {
    asJsObject(this)['pov'] = ((e) => e == null ? null : asJsObject(e))(_pov);
  }
  StreetViewPov get pov => ((e) =>
      e == null ? null : new StreetViewPov.created(e))(asJsObject(this)['pov']);
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
        ((e) => e == null ? null : asJsObject(e))(_zoomControlOptions);
  }
  ZoomControlOptions get zoomControlOptions =>
      ((e) => e == null ? null : new ZoomControlOptions.created(e))(
          asJsObject(this)['zoomControlOptions']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _StreetViewAddressControlOptions
// **************************************************************************

@anonymous
class StreetViewAddressControlOptions extends JsInterface
    implements _StreetViewAddressControlOptions {
  StreetViewAddressControlOptions.created(JsObject o) : super.created(o);
  StreetViewAddressControlOptions()
      : this.created(new JsObject(context['Object']));

  // ControlPosition position;
  void set _position(int __position) {
    asJsObject(this)['position'] = __position;
  }
  int get _position => asJsObject(this)['position'];
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
// Generator: Instance of 'JsInterfaceGenerator'
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
  void set zoom(num _zoom) {
    asJsObject(this)['zoom'] = _zoom;
  }
  num get zoom => asJsObject(this)['zoom'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _StreetViewPanoramaData
// **************************************************************************

class StreetViewPanoramaData extends JsInterface
    implements _StreetViewPanoramaData {
  StreetViewPanoramaData.created(JsObject o) : super.created(o);
  StreetViewPanoramaData() : this.created(
          new JsObject(getPath('google.maps.StreetViewPanoramaData')));

  void set copyright(String _copyright) {
    asJsObject(this)['copyright'] = _copyright;
  }
  String get copyright => asJsObject(this)['copyright'];
  void set imageDate(String _imageDate) {
    asJsObject(this)['imageDate'] = _imageDate;
  }
  String get imageDate => asJsObject(this)['imageDate'];
  void set links(List<StreetViewLink> _links) {
    asJsObject(this)['links'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_links);
  }
  List<StreetViewLink> get links => ((e) {
    if (e == null) return null;
    return new JsList<StreetViewLink>.created(e,
        new JsInterfaceCodec<StreetViewLink>(
            (o) => new StreetViewLink.created(o)));
  })(asJsObject(this)['links']);
  void set location(StreetViewLocation _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  StreetViewLocation get location => ((e) => e == null
      ? null
      : new StreetViewLocation.created(e))(asJsObject(this)['location']);
  void set tiles(StreetViewTileData _tiles) {
    asJsObject(this)['tiles'] =
        ((e) => e == null ? null : asJsObject(e))(_tiles);
  }
  StreetViewTileData get tiles => ((e) => e == null
      ? null
      : new StreetViewTileData.created(e))(asJsObject(this)['tiles']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
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
    asJsObject(this)['latLng'] =
        ((e) => e == null ? null : asJsObject(e))(_latLng);
  }
  LatLng get latLng => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['latLng']);
  void set pano(String _pano) {
    asJsObject(this)['pano'] = _pano;
  }
  String get pano => asJsObject(this)['pano'];
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _StreetViewTileData
// **************************************************************************

@anonymous
class StreetViewTileData extends JsInterface implements _StreetViewTileData {
  StreetViewTileData.created(JsObject o) : super.created(o);
  StreetViewTileData() : this.created(new JsObject(context['Object']));

  void set_getTileUrl(
      String getTileUrl(String pano, num tileZoom, num tileX, num tileY)) {
    _getTileUrl = getTileUrl;
  }
  void set _getTileUrl(
      String getTileUrl(String pano, num tileZoom, num tileX, num tileY)) {
    asJsObject(this)['getTileUrl'] = getTileUrl;
  }

  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) =>
      asJsObject(this).callMethod(
          'getTileUrl', [pano, tileZoom, tileX, tileY].map(toJs).toList());

  void set centerHeading(num _centerHeading) {
    asJsObject(this)['centerHeading'] = _centerHeading;
  }
  num get centerHeading => asJsObject(this)['centerHeading'];
  void set tileSize(Size _tileSize) {
    asJsObject(this)['tileSize'] =
        ((e) => e == null ? null : asJsObject(e))(_tileSize);
  }
  Size get tileSize => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['tileSize']);
  void set worldSize(Size _worldSize) {
    asJsObject(this)['worldSize'] =
        ((e) => e == null ? null : asJsObject(e))(_worldSize);
  }
  Size get worldSize => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['worldSize']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MapsEventListener
// **************************************************************************

class MapsEventListener extends JsInterface implements _MapsEventListener {
  MapsEventListener.created(JsObject o) : super.created(o);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _GEvent
// **************************************************************************

@anonymous
class GEvent extends JsInterface implements _GEvent {
  GEvent.created(JsObject o) : super.created(o);

  MapsEventListener addDomListener(
          dynamic instance, String eventName, Function handler,
          [bool capture]) =>
      ((e) => e == null ? null : new MapsEventListener.created(e))(
          asJsObject(this).callMethod('addDomListener',
              [instance, eventName, handler, capture].map(toJs).toList()));
  MapsEventListener addDomListenerOnce(
          dynamic instance, String eventName, Function handler,
          [bool capture]) =>
      ((e) => e == null ? null : new MapsEventListener.created(e))(
          asJsObject(this).callMethod('addDomListenerOnce',
              [instance, eventName, handler, capture].map(toJs).toList()));
  MapsEventListener addListener(
      dynamic instance, String eventName, Function handler) => ((e) =>
          e == null ? null : new MapsEventListener.created(e))(
      asJsObject(this).callMethod(
          'addListener', [instance, eventName, handler].map(toJs).toList()));
  MapsEventListener addListenerOnce(
          dynamic instance, String eventName, Function handler) =>
      ((e) => e == null ? null : new MapsEventListener.created(e))(
          asJsObject(this).callMethod('addListenerOnce',
              [instance, eventName, handler].map(toJs).toList()));
  void clearInstanceListeners(dynamic instance) {
    asJsObject(this).callMethod(
        'clearInstanceListeners', [instance].map(toJs).toList());
  }
  void clearListeners(dynamic instance, String eventName) {
    asJsObject(this).callMethod(
        'clearListeners', [instance, eventName].map(toJs).toList());
  }
  void removeListener(MapsEventListener listener) {
    asJsObject(this).callMethod(
        'removeListener', [listener].map(toJs).toList());
  }
  void trigger(dynamic instance, String eventName, List<dynamic> args) {
    asJsObject(this).callMethod(
        'trigger', [toJs(instance), eventName]..addAll(args.map(toJs)));
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MouseEvent
// **************************************************************************

@anonymous
class MouseEvent extends JsInterface implements _MouseEvent {
  MouseEvent.created(JsObject o) : super.created(o);

  LatLng get latLng => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['latLng']);
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _LatLng
// **************************************************************************

class LatLng extends JsInterface implements _LatLng {
  LatLng.created(JsObject o) : super.created(o);
  LatLng(num lat, num lng, [bool noWrap]) : this.created(new JsObject(
          getPath('google.maps.LatLng'),
          [lat, lng, noWrap].map(toJs).toList()));

  bool equals(LatLng other) =>
      asJsObject(this).callMethod('equals', [other].map(toJs).toList());
  num get lat => _lat();
  num _lat() => asJsObject(this).callMethod('lat');
  num get lng => _lng();
  num _lng() => asJsObject(this).callMethod('lng');
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision].map(toJs).toList());
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _LatLngBounds
// **************************************************************************

class LatLngBounds extends JsInterface implements _LatLngBounds {
  LatLngBounds.created(JsObject o) : super.created(o);
  LatLngBounds([LatLng sw, LatLng ne]) : this.created(new JsObject(
          getPath('google.maps.LatLngBounds'), [sw, ne].map(toJs).toList()));

  bool contains(LatLng latLng) =>
      asJsObject(this).callMethod('contains', [latLng].map(toJs).toList());
  bool equals(LatLngBounds other) =>
      asJsObject(this).callMethod('equals', [other].map(toJs).toList());
  LatLngBounds extend(LatLng point) =>
      ((e) => e == null ? null : new LatLngBounds.created(e))(
          asJsObject(this).callMethod('extend', [point].map(toJs).toList()));
  LatLng get center => _getCenter();
  LatLng _getCenter() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getCenter'));
  LatLng get northEast => _getNorthEast();
  LatLng _getNorthEast() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getNorthEast'));
  LatLng get southWest => _getSouthWest();
  LatLng _getSouthWest() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('getSouthWest'));
  bool intersects(LatLngBounds other) =>
      asJsObject(this).callMethod('intersects', [other].map(toJs).toList());
  bool get isEmpty => _isEmpty();
  bool _isEmpty() => asJsObject(this).callMethod('isEmpty');
  LatLng toSpan() => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('toSpan'));
  String toString() => asJsObject(this).callMethod('toString');
  String toUrlValue([num precision]) =>
      asJsObject(this).callMethod('toUrlValue', [precision].map(toJs).toList());
  LatLngBounds union(LatLngBounds other) =>
      ((e) => e == null ? null : new LatLngBounds.created(e))(
          asJsObject(this).callMethod('union', [other].map(toJs).toList()));
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Point
// **************************************************************************

class Point extends JsInterface implements _Point {
  Point.created(JsObject o) : super.created(o);
  Point(num x, num y) : this.created(new JsObject(
          getPath('google.maps.Point'), [x, y].map(toJs).toList()));

  bool equals(Point other) =>
      asJsObject(this).callMethod('equals', [other].map(toJs).toList());
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _Size
// **************************************************************************

class Size extends JsInterface implements _Size {
  Size.created(JsObject o) : super.created(o);
  Size(num width, num height, [String widthUnit, String heightUnit])
      : this.created(new JsObject(getPath('google.maps.Size'),
          [width, height, widthUnit, heightUnit].map(toJs).toList()));

  bool equals(Size other) =>
      asJsObject(this).callMethod('equals', [other].map(toJs).toList());
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
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MVCObject
// **************************************************************************

class MVCObject extends JsInterface implements _MVCObject {
  MVCObject.created(JsObject o) : super.created(o);
  MVCObject() : this.created(new JsObject(getPath('google.maps.MVCObject')));

  MapsEventListener addListener(String eventName, Function handler) =>
      ((e) => e == null ? null : new MapsEventListener.created(e))(
          asJsObject(this).callMethod(
              'addListener', [eventName, handler].map(toJs).toList()));
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) {
    asJsObject(this).callMethod(
        'bindTo', [key, target, targetKey, noNotify].map(toJs).toList());
  }
  void changed(String key) {
    asJsObject(this).callMethod('changed', [key].map(toJs).toList());
  }
  Object get(String key) =>
      asJsObject(this).callMethod('get', [key].map(toJs).toList());
  void notify(String key) {
    asJsObject(this).callMethod('notify', [key].map(toJs).toList());
  }
  void set(String key, dynamic value) {
    asJsObject(this).callMethod('set', [key, value].map(toJs).toList());
  }
  void set values(Map<String, Object> values) {
    _setValues(values);
  }
  void _setValues(Map<String, Object> values) {
    asJsObject(this).callMethod('setValues', [values].map(toJs).toList());
  }
  void unbind(String key) {
    asJsObject(this).callMethod('unbind', [key].map(toJs).toList());
  }
  void unbindAll() {
    asJsObject(this).callMethod('unbindAll');
  }
}

// **************************************************************************
// Generator: Instance of 'JsInterfaceGenerator'
// Target: abstract class _MVCArray
// **************************************************************************

class MVCArray<E> extends MVCObject implements _MVCArray {
  Codec<E, dynamic> _codec = null;

  MVCArray({List<E> elements, Codec<E, dynamic> codec: const IdentityCodec()})
      : this.created(elements == null
          ? new JsArray()
          : new JsArray.from(elements.map(codec.encode)), codec);

  MVCArray.created(JsObject o,
      [Codec<E, dynamic> codec = const IdentityCodec()])
      : _codec = codec,
        super.created(o);

  Stream<int> get onInsertAt => getStream(this, #onInsertAt, "insert_at");
  Stream<IndexAndElement<E>> get onRemoveAt => getStream(this, #onClick,
      "click", (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));
  Stream<IndexAndElement<E>> get onSetAt => getStream(this, #onClick, "click",
      (int index, oldElement) =>
          new IndexAndElement<E>(index, _codec.decode(oldElement)));

  void clear() {
    asJsObject(this).callMethod('clear');
  }
  void forEach(void callback(E o, num index)) =>
      _forEach((o, num index) => callback(_codec.decode(o), index));
  void _forEach(void callback(o, num index)) {
    asJsObject(this).callMethod('forEach', [callback].map(toJs).toList());
  }
  List<E> getArray() => new JsList.created(_getArray(), _codec);
  JsArray _getArray() => asJsObject(this).callMethod('getArray') as JsArray;
  E getAt(num i) => _codec.decode(_getAt(i));
  _getAt(num i) => asJsObject(this).callMethod('getAt', [i].map(toJs).toList());
  num get length => _getLength();
  num _getLength() => asJsObject(this).callMethod('getLength');
  void insertAt(num i, E elem) => _insertAt(i, _codec.encode(elem));
  void _insertAt(num i, elem) {
    asJsObject(this).callMethod('insertAt', [i, elem].map(toJs).toList());
  }
  E pop() => _codec.decode(_pop());
  _pop() => asJsObject(this).callMethod('pop');
  num push(E elem) => _push(_codec.encode(elem));
  num _push(elem) =>
      asJsObject(this).callMethod('push', [elem].map(toJs).toList());
  E removeAt(num i) => _codec.decode(_removeAt(i));
  _removeAt(num i) =>
      asJsObject(this).callMethod('removeAt', [i].map(toJs).toList());
  void setAt(num i, E elem) => _setAt(i, _codec.encode(elem));
  void _setAt(num i, elem) {
    asJsObject(this).callMethod('setAt', [i, elem].map(toJs).toList());
  }
}
