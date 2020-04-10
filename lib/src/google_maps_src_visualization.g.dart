// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.visualization;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_DynamicMapsEngineLayer)
@JsName('google.maps.visualization.DynamicMapsEngineLayer')
class DynamicMapsEngineLayer extends MVCObject {
  DynamicMapsEngineLayer(DynamicMapsEngineLayerOptions options)
      : this.created(JsObject(
            context['google']['maps']['visualization']
                ['DynamicMapsEngineLayer'],
            [__codec0.encode(options)]));
  DynamicMapsEngineLayer.created(JsObject o) : super.created(o);

  FeatureStyle getFeatureStyle(String featureId) => __codec1
      .decode(asJsObject(this).callMethod('getFeatureStyle', [featureId]));
  String get layerId => _getLayerId();
  String _getLayerId() => asJsObject(this).callMethod('getLayerId');
  String get layerKey => _getLayerKey();
  String _getLayerKey() => asJsObject(this).callMethod('getLayerKey');
  GMap get map => _getMap();
  GMap _getMap() => __codec2.decode(asJsObject(this).callMethod('getMap'));
  String get mapId => _getMapId();
  String _getMapId() => asJsObject(this).callMethod('getMapId');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus() =>
      __codec3.decode(asJsObject(this).callMethod('getStatus'));
  set layerId(String layerId) => _setLayerId(layerId);
  void _setLayerId(String layerId) {
    asJsObject(this).callMethod('setLayerId', [layerId]);
  }

  set layerKey(String layerKey) => _setLayerKey(layerKey);
  void _setLayerKey(String layerKey) {
    asJsObject(this).callMethod('setLayerKey', [layerKey]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec2.encode(map)]);
  }

  set mapId(String mapId) => _setMapId(mapId);
  void _setMapId(String mapId) {
    asJsObject(this).callMethod('setMapId', [mapId]);
  }

  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  set options(DynamicMapsEngineLayerOptions options) => _setOptions(options);
  void _setOptions(DynamicMapsEngineLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec0.encode(options)]);
  }

  Stream<DynamicMapsEngineMouseEvent> get onClick =>
      getStream(this, 'click', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onDblclick => getStream(
      this, 'dblclick', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMousedown => getStream(
      this, 'mousedown', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMousemove => getStream(
      this, 'mousemove', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseout => getStream(
      this, 'mouseout', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseover => getStream(
      this, 'mouseover', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream<DynamicMapsEngineMouseEvent> get onMouseup =>
      getStream(this, 'mouseup', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream get onPropertiesChanged => getStream(this, 'properties_changed');
  Stream<DynamicMapsEngineMouseEvent> get onRightclick => getStream(
      this, 'rightclick', (o) => DynamicMapsEngineMouseEvent.created(o));
  Stream get onStatusChanged => getStream(this, 'status_changed');
}

@GeneratedFrom(_DynamicMapsEngineLayerOptions)
@anonymous
class DynamicMapsEngineLayerOptions extends JsInterface {
  DynamicMapsEngineLayerOptions() : this.created(JsObject(context['Object']));
  DynamicMapsEngineLayerOptions.created(JsObject o) : super.created(o);

  set accessToken(String _accessToken) {
    asJsObject(this)['accessToken'] = _accessToken;
  }

  String get accessToken => asJsObject(this)['accessToken'];
  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set layerId(String _layerId) {
    asJsObject(this)['layerId'] = _layerId;
  }

  String get layerId => asJsObject(this)['layerId'];
  set layerKey(String _layerKey) {
    asJsObject(this)['layerKey'] = _layerKey;
  }

  String get layerKey => asJsObject(this)['layerKey'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec2.encode(_map);
  }

  GMap get map => __codec2.decode(asJsObject(this)['map']);
  set mapId(String _mapId) {
    asJsObject(this)['mapId'] = _mapId;
  }

  String get mapId => asJsObject(this)['mapId'];
  set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }

  num get opacity => asJsObject(this)['opacity'];
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
}

@GeneratedFrom(_DynamicMapsEngineMouseEvent)
@anonymous
class DynamicMapsEngineMouseEvent extends JsInterface {
  DynamicMapsEngineMouseEvent() : this.created(JsObject(context['Object']));
  DynamicMapsEngineMouseEvent.created(JsObject o) : super.created(o);

  void getDetails(callback(MapsEngineMouseEvent p1)) {
    asJsObject(this).callMethod('getDetails', [__codec7.encode(callback)]);
  }

  set featureId(String _featureId) {
    asJsObject(this)['featureId'] = _featureId;
  }

  String get featureId => asJsObject(this)['featureId'];
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec4.encode(_latLng);
  }

  LatLng get latLng => __codec4.decode(asJsObject(this)['latLng']);
}

@GeneratedFrom(_FeatureStyle)
@anonymous
class FeatureStyle extends JsInterface {
  FeatureStyle() : this.created(JsObject(context['Object']));
  FeatureStyle.created(JsObject o) : super.created(o);

  void reset(String property) {
    asJsObject(this).callMethod('reset', [property]);
  }

  void resetAll() {
    asJsObject(this).callMethod('resetAll');
  }

  set fillColor(String _fillColor) {
    asJsObject(this)['fillColor'] = _fillColor;
  }

  String get fillColor => asJsObject(this)['fillColor'];
  set fillOpacity(String _fillOpacity) {
    asJsObject(this)['fillOpacity'] = _fillOpacity;
  }

  String get fillOpacity => asJsObject(this)['fillOpacity'];
  set iconAnchor(String _iconAnchor) {
    asJsObject(this)['iconAnchor'] = _iconAnchor;
  }

  String get iconAnchor => asJsObject(this)['iconAnchor'];
  set iconClip(String _iconClip) {
    asJsObject(this)['iconClip'] = _iconClip;
  }

  String get iconClip => asJsObject(this)['iconClip'];
  set iconImage(String _iconImage) {
    asJsObject(this)['iconImage'] = _iconImage;
  }

  String get iconImage => asJsObject(this)['iconImage'];
  set iconOpacity(String _iconOpacity) {
    asJsObject(this)['iconOpacity'] = _iconOpacity;
  }

  String get iconOpacity => asJsObject(this)['iconOpacity'];
  set iconSize(String _iconSize) {
    asJsObject(this)['iconSize'] = _iconSize;
  }

  String get iconSize => asJsObject(this)['iconSize'];
  set strokeColor(String _strokeColor) {
    asJsObject(this)['strokeColor'] = _strokeColor;
  }

  String get strokeColor => asJsObject(this)['strokeColor'];
  set strokeOpacity(String _strokeOpacity) {
    asJsObject(this)['strokeOpacity'] = _strokeOpacity;
  }

  String get strokeOpacity => asJsObject(this)['strokeOpacity'];
  set strokeWidth(String _strokeWidth) {
    asJsObject(this)['strokeWidth'] = _strokeWidth;
  }

  String get strokeWidth => asJsObject(this)['strokeWidth'];
  set zIndex(String _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  String get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_HeatmapLayer)
@JsName('google.maps.visualization.HeatmapLayer')
class HeatmapLayer extends MVCObject {
  HeatmapLayer([HeatmapLayerOptions opts])
      : this.created(JsObject(
            context['google']['maps']['visualization']['HeatmapLayer'],
            [__codec8.encode(opts)]));
  HeatmapLayer.created(JsObject o) : super.created(o);

  MVCArray<dynamic /*LatLng|WeightedLocation*/ > get data =>
      JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>((o) =>
              MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(
                  o,
                  ChainedCodec()
                    ..add(JsInterfaceCodec<LatLng>(
                        (o) => LatLng.created(o),
                        (o) =>
                            o != null &&
                            o.instanceof(
                                context['google']['maps']['LatLng'] as JsFunction)))
                    ..add(JsInterfaceCodec<WeightedLocation>(
                        (o) => WeightedLocation.created(o)))))
          .decode(_getData() as JsObject);
  dynamic _getData() => __codec5.decode(asJsObject(this).callMethod('getData'));
  GMap get map => _getMap();
  GMap _getMap() => __codec2.decode(asJsObject(this).callMethod('getMap'));
  set data(dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) =>
      _setData((ChainedCodec()
            ..add(JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
                (o) => MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(
                    o,
                    ChainedCodec()
                      ..add(JsInterfaceCodec<LatLng>(
                          (o) => LatLng.created(o),
                          (o) =>
                              o != null &&
                              o.instanceof(context['google']['maps']['LatLng']
                                  as JsFunction)))
                      ..add(
                          JsInterfaceCodec<WeightedLocation>((o) => WeightedLocation.created(o))))))
            ..add(JsListCodec<dynamic /*LatLng|WeightedLocation*/ >(ChainedCodec()..add(JsInterfaceCodec<LatLng>((o) => LatLng.created(o), (o) => o != null && o.instanceof(context['google']['maps']['LatLng'] as JsFunction)))..add(JsInterfaceCodec<WeightedLocation>((o) => WeightedLocation.created(o))))))
          .encode(data));
  void _setData(
      dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) {
    asJsObject(this).callMethod('setData', [__codec5.encode(data)]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec2.encode(map)]);
  }

  set options(HeatmapLayerOptions options) => _setOptions(options);
  void _setOptions(HeatmapLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec8.encode(options)]);
  }
}

@GeneratedFrom(_HeatmapLayerOptions)
@anonymous
class HeatmapLayerOptions extends JsInterface {
  HeatmapLayerOptions() : this.created(JsObject(context['Object']));
  HeatmapLayerOptions.created(JsObject o) : super.created(o);

  set _data(dynamic __data) {
    asJsObject(this)['data'] = __codec5.encode(__data);
  }

  dynamic get _data => __codec5.decode(asJsObject(this)['data']);
  MVCArray<LatLng> get data =>
      JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
              o,
              JsInterfaceCodec<LatLng>(
                  (o) => LatLng.created(o),
                  (o) =>
                      o != null &&
                      o.instanceof(
                          context['google']['maps']['LatLng'] as JsFunction))))
          .decode(_data as JsObject);
  set data(MVCArray<LatLng> data) {
    _data = JsInterfaceCodec<MVCArray<LatLng>>((o) => MVCArray<LatLng>.created(
            o,
            JsInterfaceCodec<LatLng>(
                (o) => LatLng.created(o),
                (o) =>
                    o != null &&
                    o.instanceof(
                        context['google']['maps']['LatLng'] as JsFunction))))
        .encode(data);
  }

  set dissipating(bool _dissipating) {
    asJsObject(this)['dissipating'] = _dissipating;
  }

  bool get dissipating => asJsObject(this)['dissipating'];
  set gradient(List<String> _gradient) {
    asJsObject(this)['gradient'] = __codec9.encode(_gradient);
  }

  List<String> get gradient => __codec9.decode(asJsObject(this)['gradient']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec2.encode(_map);
  }

  GMap get map => __codec2.decode(asJsObject(this)['map']);
  set maxIntensity(num _maxIntensity) {
    asJsObject(this)['maxIntensity'] = _maxIntensity;
  }

  num get maxIntensity => asJsObject(this)['maxIntensity'];
  set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }

  num get opacity => asJsObject(this)['opacity'];
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
}

@GeneratedFrom(_MapsEngineLayer)
@JsName('google.maps.visualization.MapsEngineLayer')
class MapsEngineLayer extends MVCObject {
  MapsEngineLayer(MapsEngineLayerOptions options)
      : this.created(JsObject(
            context['google']['maps']['visualization']['MapsEngineLayer'],
            [__codec10.encode(options)]));
  MapsEngineLayer.created(JsObject o) : super.created(o);

  String get layerId => _getLayerId();
  String _getLayerId() => asJsObject(this).callMethod('getLayerId');
  String get layerKey => _getLayerKey();
  String _getLayerKey() => asJsObject(this).callMethod('getLayerKey');
  GMap get map => _getMap();
  GMap _getMap() => __codec2.decode(asJsObject(this).callMethod('getMap'));
  String get mapId => _getMapId();
  String _getMapId() => asJsObject(this).callMethod('getMapId');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MapsEngineLayerProperties get properties => _getProperties();
  MapsEngineLayerProperties _getProperties() =>
      __codec11.decode(asJsObject(this).callMethod('getProperties'));
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus() =>
      __codec3.decode(asJsObject(this).callMethod('getStatus'));
  num get zIndex => _getZIndex();
  num _getZIndex() => asJsObject(this).callMethod('getZIndex');
  set layerId(String layerId) => _setLayerId(layerId);
  void _setLayerId(String layerId) {
    asJsObject(this).callMethod('setLayerId', [layerId]);
  }

  set layerKey(String layerKey) => _setLayerKey(layerKey);
  void _setLayerKey(String layerKey) {
    asJsObject(this).callMethod('setLayerKey', [layerKey]);
  }

  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec2.encode(map)]);
  }

  set mapId(String mapId) => _setMapId(mapId);
  void _setMapId(String mapId) {
    asJsObject(this).callMethod('setMapId', [mapId]);
  }

  set opacity(num opacity) => _setOpacity(opacity);
  void _setOpacity(num opacity) {
    asJsObject(this).callMethod('setOpacity', [opacity]);
  }

  set options(MapsEngineLayerOptions options) => _setOptions(options);
  void _setOptions(MapsEngineLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec10.encode(options)]);
  }

  set zIndex(num zIndex) => _setZIndex(zIndex);
  void _setZIndex(num zIndex) {
    asJsObject(this).callMethod('setZIndex', [zIndex]);
  }

  Stream<MapsEngineMouseEvent> get onClick =>
      getStream(this, 'click', (o) => MapsEngineMouseEvent.created(o));
  Stream get onPropertiesChanged => getStream(this, 'properties_changed');
  Stream get onStatusChanged => getStream(this, 'status_changed');
}

@GeneratedFrom(_MapsEngineLayerOptions)
@anonymous
class MapsEngineLayerOptions extends JsInterface {
  MapsEngineLayerOptions() : this.created(JsObject(context['Object']));
  MapsEngineLayerOptions.created(JsObject o) : super.created(o);

  set accessToken(String _accessToken) {
    asJsObject(this)['accessToken'] = _accessToken;
  }

  String get accessToken => asJsObject(this)['accessToken'];
  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set fitBounds(bool _fitBounds) {
    asJsObject(this)['fitBounds'] = _fitBounds;
  }

  bool get fitBounds => asJsObject(this)['fitBounds'];
  set layerId(String _layerId) {
    asJsObject(this)['layerId'] = _layerId;
  }

  String get layerId => asJsObject(this)['layerId'];
  set layerKey(String _layerKey) {
    asJsObject(this)['layerKey'] = _layerKey;
  }

  String get layerKey => asJsObject(this)['layerKey'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec2.encode(_map);
  }

  GMap get map => __codec2.decode(asJsObject(this)['map']);
  set mapId(String _mapId) {
    asJsObject(this)['mapId'] = _mapId;
  }

  String get mapId => asJsObject(this)['mapId'];
  set opacity(num _opacity) {
    asJsObject(this)['opacity'] = _opacity;
  }

  num get opacity => asJsObject(this)['opacity'];
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  set zIndex(num _zIndex) {
    asJsObject(this)['zIndex'] = _zIndex;
  }

  num get zIndex => asJsObject(this)['zIndex'];
}

@GeneratedFrom(_MapsEngineLayerProperties)
@anonymous
class MapsEngineLayerProperties extends JsInterface {
  MapsEngineLayerProperties() : this.created(JsObject(context['Object']));
  MapsEngineLayerProperties.created(JsObject o) : super.created(o);

  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
}

@GeneratedFrom(_MapsEngineMouseEvent)
@anonymous
class MapsEngineMouseEvent extends JsInterface {
  MapsEngineMouseEvent() : this.created(JsObject(context['Object']));
  MapsEngineMouseEvent.created(JsObject o) : super.created(o);

  set featureId(String _featureId) {
    asJsObject(this)['featureId'] = _featureId;
  }

  String get featureId => asJsObject(this)['featureId'];
  set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec4.encode(_latLng);
  }

  LatLng get latLng => __codec4.decode(asJsObject(this)['latLng']);
  set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec12.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec12.decode(asJsObject(this)['pixelOffset']);
}

class MapsEngineStatus extends JsEnum {
  static final values = <MapsEngineStatus>[INVALID_LAYER, OK, UNKNOWN_ERROR];
  static final INVALID_LAYER = MapsEngineStatus._(
      'INVALID_LAYER',
      context['google']['maps']['visualization']['MapsEngineStatus']
          ['INVALID_LAYER']);
  static final OK = MapsEngineStatus._('OK',
      context['google']['maps']['visualization']['MapsEngineStatus']['OK']);
  static final UNKNOWN_ERROR = MapsEngineStatus._(
      'UNKNOWN_ERROR',
      context['google']['maps']['visualization']['MapsEngineStatus']
          ['UNKNOWN_ERROR']);
  final String _name;
  MapsEngineStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'MapsEngineStatus.$_name';
}

@GeneratedFrom(_WeightedLocation)
@anonymous
class WeightedLocation extends JsInterface {
  WeightedLocation() : this.created(JsObject(context['Object']));
  WeightedLocation.created(JsObject o) : super.created(o);

  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec4.encode(_location);
  }

  LatLng get location => __codec4.decode(asJsObject(this)['location']);
  set weight(num _weight) {
    asJsObject(this)['weight'] = _weight;
  }

  num get weight => asJsObject(this)['weight'];
}

/// codec for google_maps.src.visualization.DynamicMapsEngineLayerOptions
final __codec0 = JsInterfaceCodec<DynamicMapsEngineLayerOptions>(
    (o) => DynamicMapsEngineLayerOptions.created(o));

/// codec for google_maps.src.visualization.FeatureStyle
final __codec1 = JsInterfaceCodec<FeatureStyle>((o) => FeatureStyle.created(o));

/// codec for google_maps.src.GMap
final __codec2 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.visualization.MapsEngineStatus
final __codec3 = BiMapCodec<MapsEngineStatus, dynamic>(
    Map<MapsEngineStatus, dynamic>.fromIterable(MapsEngineStatus.values,
        value: asJs));

/// codec for google_maps.src.LatLng
final __codec4 = JsInterfaceCodec<LatLng>((o) => LatLng.created(o));

/// codec for dart.core.dynamic
final __codec5 = DynamicCodec();

/// codec for google_maps.src.visualization.MapsEngineMouseEvent
final __codec6 = JsInterfaceCodec<MapsEngineMouseEvent>(
    (o) => MapsEngineMouseEvent.created(o));

/// codec for google_maps.src.visualization.(MapsEngineMouseEvent) → dynamic
final __codec7 = FunctionCodec<Function> /*<(MapsEngineMouseEvent) → dynamic>*/(
  (f) => (p$p1) => __codec5.encode(f(__codec6.decode(p$p1))),
  (f) => (p$p1) => __codec5.decode(f is JsFunction
      ? f.apply([__codec6.encode(p$p1)])
      : Function.apply(f, [__codec6.encode(p$p1)])),
);

/// codec for google_maps.src.visualization.HeatmapLayerOptions
final __codec8 = JsInterfaceCodec<HeatmapLayerOptions>(
    (o) => HeatmapLayerOptions.created(o));

/// codec for dart.core.List<String>
final __codec9 = JsListCodec<String>(null);

/// codec for google_maps.src.visualization.MapsEngineLayerOptions
final __codec10 = JsInterfaceCodec<MapsEngineLayerOptions>(
    (o) => MapsEngineLayerOptions.created(o));

/// codec for google_maps.src.visualization.MapsEngineLayerProperties
final __codec11 = JsInterfaceCodec<MapsEngineLayerProperties>(
    (o) => MapsEngineLayerProperties.created(o));

/// codec for google_maps.src.Size
final __codec12 = JsInterfaceCodec<Size>((o) => Size.created(o));
