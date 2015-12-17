// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:05.420Z

part of google_maps.src.visualization;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapsEngineLayer
// **************************************************************************

@JsName('google.maps.visualization.MapsEngineLayer')
class MapsEngineLayer extends MVCObject implements _MapsEngineLayer {
  MapsEngineLayer.created(JsObject o) : super.created(o);
  MapsEngineLayer(MapsEngineLayerOptions options) : this.created(new JsObject(
          context['google']['maps']['visualization']['MapsEngineLayer'],
          [__codec490.encode(options)]));

  String get layerId => _getLayerId();
  String _getLayerId() => asJsObject(this).callMethod('getLayerId');
  String get layerKey => _getLayerKey();
  String _getLayerKey() => asJsObject(this).callMethod('getLayerKey');
  GMap get map => _getMap();
  GMap _getMap() => __codec491.decode(asJsObject(this).callMethod('getMap'));
  String get mapId => _getMapId();
  String _getMapId() => asJsObject(this).callMethod('getMapId');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MapsEngineLayerProperties get properties => _getProperties();
  MapsEngineLayerProperties _getProperties() =>
      __codec492.decode(asJsObject(this).callMethod('getProperties'));
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus() =>
      __codec493.decode(asJsObject(this).callMethod('getStatus'));
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  void set layerId(String layerId) => _setLayerId(layerId);
  void _setLayerId(String layerId) {
    asJsObject(this).callMethod('setLayerId', [layerId]);
  }
  void set layerKey(String layerKey) => _setLayerKey(layerKey);
  void _setLayerKey(String layerKey) {
    asJsObject(this).callMethod('setLayerKey', [layerKey]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec491.encode(map)]);
  }
  void set mapId(String mapId) => _setMapId(mapId);
  void _setMapId(String mapId) {
    asJsObject(this).callMethod('setMapId', [mapId]);
  }
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }
  void set options(MapsEngineLayerOptions options) => _setOptions(options);
  void _setOptions(MapsEngineLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec490.encode(options)]);
  }
  void set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream<MapsEngineMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new MapsEngineMouseEvent.created(o));
  Stream get onPropertiesChanged =>
      getStream(this, #onPropertiesChanged, "properties_changed");
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
}
/// codec for google_maps.src.visualization.MapsEngineLayerOptions
final __codec490 = new JsInterfaceCodec<MapsEngineLayerOptions>(
    (o) => new MapsEngineLayerOptions.created(o));

/// codec for google_maps.src.GMap
final __codec491 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for google_maps.src.visualization.MapsEngineLayerProperties
final __codec492 = new JsInterfaceCodec<MapsEngineLayerProperties>(
    (o) => new MapsEngineLayerProperties.created(o));

/// codec for google_maps.src.visualization.MapsEngineStatus
final __codec493 = new BiMapCodec<MapsEngineStatus, dynamic>(
    new Map<MapsEngineStatus, dynamic>.fromIterable(MapsEngineStatus.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapsEngineLayerOptions
// **************************************************************************

@anonymous
class MapsEngineLayerOptions extends JsInterface
    implements _MapsEngineLayerOptions {
  MapsEngineLayerOptions.created(JsObject o) : super.created(o);
  MapsEngineLayerOptions() : this.created(new JsObject(context['Object']));

  void set accessToken(String _accessToken) {
    asJsObject(this)['accessToken'] = _accessToken;
  }
  String get accessToken => asJsObject(this)['accessToken'];
  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set fitBounds(bool _fitBounds) {
    asJsObject(this)['fitBounds'] = _fitBounds;
  }
  bool get fitBounds => asJsObject(this)['fitBounds'];
  void set layerId(String _layerId) {
    asJsObject(this)['layerId'] = _layerId;
  }
  String get layerId => asJsObject(this)['layerId'];
  void set layerKey(String _layerKey) {
    asJsObject(this)['layerKey'] = _layerKey;
  }
  String get layerKey => asJsObject(this)['layerKey'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec491.encode(_map);
  }
  GMap get map => __codec491.decode(asJsObject(this)['map']);
  void set mapId(String _mapId) {
    asJsObject(this)['mapId'] = _mapId;
  }
  String get mapId => asJsObject(this)['mapId'];
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  num get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapsEngineLayerProperties
// **************************************************************************

@anonymous
class MapsEngineLayerProperties extends JsInterface
    implements _MapsEngineLayerProperties {
  MapsEngineLayerProperties.created(JsObject o) : super.created(o);
  MapsEngineLayerProperties() : this.created(new JsObject(context['Object']));

  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapsEngineMouseEvent
// **************************************************************************

@anonymous
class MapsEngineMouseEvent extends JsInterface
    implements _MapsEngineMouseEvent {
  MapsEngineMouseEvent.created(JsObject o) : super.created(o);
  MapsEngineMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureId(String _featureId) {
    asJsObject(this)['featureId'] = _featureId;
  }
  String get featureId => asJsObject(this)['featureId'];
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec494.encode(_latLng);
  }
  LatLng get latLng => __codec494.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec495.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec495.decode(asJsObject(this)['pixelOffset']);
}
/// codec for google_maps.src.LatLng
final __codec494 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for google_maps.src.Size
final __codec495 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _MapsEngineStatus
// **************************************************************************

class MapsEngineStatus extends JsEnum {
  static final values = <MapsEngineStatus>[INVALID_LAYER, OK, UNKNOWN_ERROR];
  static final INVALID_LAYER = new MapsEngineStatus._('INVALID_LAYER', context[
      'google']['maps']['visualization']['MapsEngineStatus']['INVALID_LAYER']);
  static final OK = new MapsEngineStatus._('OK',
      context['google']['maps']['visualization']['MapsEngineStatus']['OK']);
  static final UNKNOWN_ERROR = new MapsEngineStatus._('UNKNOWN_ERROR', context[
      'google']['maps']['visualization']['MapsEngineStatus']['UNKNOWN_ERROR']);

  final String _name;
  MapsEngineStatus._(this._name, o) : super.created(o);

  String toString() => 'MapsEngineStatus.$_name';

  // dumb code to remove analyzer hint for unused _MapsEngineStatus
  _MapsEngineStatus _dumbMethod1() => _dumbMethod2();
  _MapsEngineStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DynamicMapsEngineLayer
// **************************************************************************

@JsName('google.maps.visualization.DynamicMapsEngineLayer')
class DynamicMapsEngineLayer extends MVCObject
    implements _DynamicMapsEngineLayer {
  DynamicMapsEngineLayer.created(JsObject o) : super.created(o);
  DynamicMapsEngineLayer(DynamicMapsEngineLayerOptions options)
      : this.created(new JsObject(
          context['google']['maps']['visualization']['DynamicMapsEngineLayer'],
          [__codec496.encode(options)]));

  FeatureStyle getFeatureStyle(String featureId) => __codec497
      .decode(asJsObject(this).callMethod('getFeatureStyle', [featureId]));
  String get layerId => _getLayerId();
  String _getLayerId() => asJsObject(this).callMethod('getLayerId');
  String get layerKey => _getLayerKey();
  String _getLayerKey() => asJsObject(this).callMethod('getLayerKey');
  GMap get map => _getMap();
  GMap _getMap() => __codec491.decode(asJsObject(this).callMethod('getMap'));
  String get mapId => _getMapId();
  String _getMapId() => asJsObject(this).callMethod('getMapId');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus() =>
      __codec493.decode(asJsObject(this).callMethod('getStatus'));
  void set layerId(String layerId) => _setLayerId(layerId);
  void _setLayerId(String layerId) {
    asJsObject(this).callMethod('setLayerId', [layerId]);
  }
  void set layerKey(String layerKey) => _setLayerKey(layerKey);
  void _setLayerKey(String layerKey) {
    asJsObject(this).callMethod('setLayerKey', [layerKey]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec491.encode(map)]);
  }
  void set mapId(String mapId) => _setMapId(mapId);
  void _setMapId(String mapId) {
    asJsObject(this).callMethod('setMapId', [mapId]);
  }
  void set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }
  void set options(DynamicMapsEngineLayerOptions options) =>
      _setOptions(options);
  void _setOptions(DynamicMapsEngineLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec496.encode(options)]);
  }

  Stream<DynamicMapsEngineMouseEvent> get onClick => getStream(this, #onClick,
      "click", (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onDblclick => getStream(this,
      #onDblclick, "dblclick",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMousedown => getStream(this,
      #onMousedown, "mousedown",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMousemove => getStream(this,
      #onMousemove, "mousemove",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseout => getStream(this,
      #onMouseout, "mouseout",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseover => getStream(this,
      #onMouseover, "mouseover",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseup => getStream(this,
      #onMouseup, "mouseup",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream get onPropertiesChanged =>
      getStream(this, #onPropertiesChanged, "properties_changed");
  Stream<DynamicMapsEngineMouseEvent> get onRightclick => getStream(this,
      #onRightclick, "rightclick",
      (JsObject o) => new DynamicMapsEngineMouseEvent.created(o));
  Stream get onStatusChanged =>
      getStream(this, #onStatusChanged, "status_changed");
}
/// codec for google_maps.src.visualization.DynamicMapsEngineLayerOptions
final __codec496 = new JsInterfaceCodec<DynamicMapsEngineLayerOptions>(
    (o) => new DynamicMapsEngineLayerOptions.created(o));

/// codec for google_maps.src.visualization.FeatureStyle
final __codec497 =
    new JsInterfaceCodec<FeatureStyle>((o) => new FeatureStyle.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DynamicMapsEngineLayerOptions
// **************************************************************************

@anonymous
class DynamicMapsEngineLayerOptions extends JsInterface
    implements _DynamicMapsEngineLayerOptions {
  DynamicMapsEngineLayerOptions.created(JsObject o) : super.created(o);
  DynamicMapsEngineLayerOptions()
      : this.created(new JsObject(context['Object']));

  void set accessToken(String _accessToken) {
    asJsObject(this)['accessToken'] = _accessToken;
  }
  String get accessToken => asJsObject(this)['accessToken'];
  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set layerId(String _layerId) {
    asJsObject(this)['layerId'] = _layerId;
  }
  String get layerId => asJsObject(this)['layerId'];
  void set layerKey(String _layerKey) {
    asJsObject(this)['layerKey'] = _layerKey;
  }
  String get layerKey => asJsObject(this)['layerKey'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec491.encode(_map);
  }
  GMap get map => __codec491.decode(asJsObject(this)['map']);
  void set mapId(String _mapId) {
    asJsObject(this)['mapId'] = _mapId;
  }
  String get mapId => asJsObject(this)['mapId'];
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DynamicMapsEngineMouseEvent
// **************************************************************************

@anonymous
class DynamicMapsEngineMouseEvent extends JsInterface
    implements _DynamicMapsEngineMouseEvent {
  DynamicMapsEngineMouseEvent.created(JsObject o) : super.created(o);
  DynamicMapsEngineMouseEvent() : this.created(new JsObject(context['Object']));

  void getDetails(callback(MapsEngineMouseEvent p1)) {
    asJsObject(this).callMethod('getDetails', [__codec499.encode(callback)]);
  }

  void set featureId(String _featureId) {
    asJsObject(this)['featureId'] = _featureId;
  }
  String get featureId => asJsObject(this)['featureId'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec494.encode(_latLng);
  }
  LatLng get latLng => __codec494.decode(asJsObject(this)['latLng']);
}
/// codec for google_maps.src.visualization.MapsEngineMouseEvent
final __codec498 = new JsInterfaceCodec<MapsEngineMouseEvent>(
    (o) => new MapsEngineMouseEvent.created(o));

/// codec for google_maps.src.visualization.(MapsEngineMouseEvent) → dynamic
final __codec499 = new FunctionCodec /*<(MapsEngineMouseEvent) → dynamic>*/ (
    (f) => (p_p1) {
  p_p1 = __codec498.decode(p_p1);
  return f(p_p1);
}, (JsFunction f) => (p_p1) {
  p_p1 = __codec498.encode(p_p1);
  return f.apply([p_p1]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _FeatureStyle
// **************************************************************************

@anonymous
class FeatureStyle extends JsInterface implements _FeatureStyle {
  FeatureStyle.created(JsObject o) : super.created(o);
  FeatureStyle() : this.created(new JsObject(context['Object']));

  void reset(String property) {
    asJsObject(this).callMethod('reset', [property]);
  }
  void resetAll() {
    asJsObject(this).callMethod('resetAll');
  }

  void set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }
  String get fillColor => asJsObject(this)['fillColor'];
  void set fillOpacity(String _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }
  String get fillOpacity => asJsObject(this)['fillOpacity'];
  void set iconAnchor(String _iconAnchor) {
    asJsObject(this)['iconAnchor'] = _iconAnchor;
  }
  String get iconAnchor => asJsObject(this)['iconAnchor'];
  void set iconClip(String _iconClip) {
    asJsObject(this)['iconClip'] = _iconClip;
  }
  String get iconClip => asJsObject(this)['iconClip'];
  void set iconImage(String _iconImage) {
    asJsObject(this)['iconImage'] = _iconImage;
  }
  String get iconImage => asJsObject(this)['iconImage'];
  void set iconOpacity(String _iconOpacity) {
    asJsObject(this)['iconOpacity'] = _iconOpacity;
  }
  String get iconOpacity => asJsObject(this)['iconOpacity'];
  void set iconSize(String _iconSize) {
    asJsObject(this)['iconSize'] = _iconSize;
  }
  String get iconSize => asJsObject(this)['iconSize'];
  void set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }
  String get strokeColor => asJsObject(this)['strokeColor'];
  void set strokeOpacity(String _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }
  String get strokeOpacity => asJsObject(this)['strokeOpacity'];
  void set strokeWidth(String _strokeWidth) {
    asJsObject(this)['strokeWidth'] = _strokeWidth;
  }
  String get strokeWidth => asJsObject(this)['strokeWidth'];
  void set zIndex(String _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }
  String get zIndex => asJsObject(this)['zIndex'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _HeatmapLayer
// **************************************************************************

@JsName('google.maps.visualization.HeatmapLayer')
class HeatmapLayer extends MVCObject implements _HeatmapLayer {
  HeatmapLayer.created(JsObject o) : super.created(o);
  HeatmapLayer([HeatmapLayerOptions opts]) : this.created(new JsObject(
          context['google']['maps']['visualization']['HeatmapLayer'],
          [__codec500.encode(opts)]));

  MVCArray<dynamic /*LatLng|WeightedLocation*/ > get data =>
      (new JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
          (o) => new MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(o,
              new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new JsInterfaceCodec<WeightedLocation>(
        (o) => new WeightedLocation.created(o)))))).decode(_getData());
  _getData() => asJsObject(this).callMethod('getData');
  GMap get map => _getMap();
  GMap _getMap() => __codec491.decode(asJsObject(this).callMethod('getMap'));
  void set data(
          dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) =>
      _setData((new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
        (o) => new MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(o,
            new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<WeightedLocation>(
          (o) => new WeightedLocation.created(o))))))
    ..add(new JsListCodec<dynamic /*LatLng|WeightedLocation*/ >(
        new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<WeightedLocation>(
          (o) => new WeightedLocation.created(o)))))).encode(data));
  void _setData(
      dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) {
    asJsObject(this).callMethod('setData', [data]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec491.encode(map)]);
  }
  void set options(HeatmapLayerOptions options) => _setOptions(options);
  void _setOptions(HeatmapLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec500.encode(options)]);
  }
}
/// codec for google_maps.src.visualization.HeatmapLayerOptions
final __codec500 = new JsInterfaceCodec<HeatmapLayerOptions>(
    (o) => new HeatmapLayerOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _HeatmapLayerOptions
// **************************************************************************

@anonymous
class HeatmapLayerOptions extends JsInterface implements _HeatmapLayerOptions {
  HeatmapLayerOptions.created(JsObject o) : super.created(o);
  HeatmapLayerOptions() : this.created(new JsObject(context['Object']));

  void set _data(dynamic __data) {
    asJsObject(this)['data'] = __data;
  }
  dynamic get _data => asJsObject(this)['data'];
  MVCArray<LatLng> get data =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(context['google']['maps']['LatLng'])))))
          .decode(_data);
  void set data(MVCArray<LatLng> data) {
    _data =
        (new JsInterfaceCodec<MVCArray<LatLng>>((o) =>
                new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(context['google']['maps']['LatLng'])))))
            .encode(data);
  }
  void set dissipating(bool _dissipating) {
    asJsObject(this)['dissipating'] = _dissipating;
  }
  bool get dissipating => asJsObject(this)['dissipating'];
  void set gradient(List<String> _gradient) {
    asJsObject(this)['gradient'] = __codec501.encode(_gradient);
  }
  List<String> get gradient => __codec501.decode(asJsObject(this)['gradient']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec491.encode(_map);
  }
  GMap get map => __codec491.decode(asJsObject(this)['map']);
  void set maxIntensity(num _maxIntensity) {
    asJsObject(this)['maxIntensity'] = _maxIntensity;
  }
  num get maxIntensity => asJsObject(this)['maxIntensity'];
  void set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }
  num get opacity => asJsObject(this)['opacity'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
}
/// codec for dart.core.List<String>
final __codec501 = new JsListCodec<String>(null);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeightedLocation
// **************************************************************************

@anonymous
class WeightedLocation extends JsInterface implements _WeightedLocation {
  WeightedLocation.created(JsObject o) : super.created(o);
  WeightedLocation() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec494.encode(_location);
  }
  LatLng get location => __codec494.decode(asJsObject(this)['location']);
  void set weight(num _weight) {
    asJsObject(this)['weight'] = _weight;
  }
  num get weight => asJsObject(this)['weight'];
}
