// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-23T13:44:19.434Z

part of google_maps.visualization;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _MapsEngineLayer
// **************************************************************************

@JsName('google.maps.visualization.MapsEngineLayer')
class MapsEngineLayer extends MVCObject implements _MapsEngineLayer {
  MapsEngineLayer.created(JsObject o) : super.created(o);
  MapsEngineLayer(MapsEngineLayerOptions options) : this.created(new JsObject(
          getPath('google.maps.visualization.MapsEngineLayer'),
          [((e) => e == null ? null : asJsObject(e))(options)]));

  String get layerId => _getLayerId();
  String _getLayerId() => asJsObject(this).callMethod('getLayerId');
  String get layerKey => _getLayerKey();
  String _getLayerKey() => asJsObject(this).callMethod('getLayerKey');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  String get mapId => _getMapId();
  String _getMapId() => asJsObject(this).callMethod('getMapId');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MapsEngineLayerProperties get properties => _getProperties();
  MapsEngineLayerProperties _getProperties() =>
      ((e) => e == null ? null : new MapsEngineLayerProperties.created(e))(
          asJsObject(this).callMethod('getProperties'));
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus() => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.visualization.MapsEngineStatus');
    if (e == path['INVALID_LAYER']) return MapsEngineStatus.INVALID_LAYER;
    if (e == path['OK']) return MapsEngineStatus.OK;
    if (e == path['UNKNOWN_ERROR']) return MapsEngineStatus.UNKNOWN_ERROR;
  })(asJsObject(this).callMethod('getStatus'));
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
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
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
    asJsObject(this).callMethod(
        'setOptions', [((e) => e == null ? null : asJsObject(e))(options)]);
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
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
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
    asJsObject(this)['latLng'] =
        ((e) => e == null ? null : asJsObject(e))(_latLng);
  }
  LatLng get latLng => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] =
        ((e) => e == null ? null : asJsObject(e))(_pixelOffset);
  }
  Size get pixelOffset => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['pixelOffset']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _DynamicMapsEngineLayer
// **************************************************************************

@JsName('google.maps.visualization.DynamicMapsEngineLayer')
class DynamicMapsEngineLayer extends MVCObject
    implements _DynamicMapsEngineLayer {
  DynamicMapsEngineLayer.created(JsObject o) : super.created(o);
  DynamicMapsEngineLayer(DynamicMapsEngineLayerOptions options) : this.created(
          new JsObject(
              getPath('google.maps.visualization.DynamicMapsEngineLayer'),
              [((e) => e == null ? null : asJsObject(e))(options)]));

  FeatureStyle getFeatureStyle(String featureId) =>
      ((e) => e == null ? null : new FeatureStyle.created(e))(
          asJsObject(this).callMethod('getFeatureStyle', [featureId]));
  String get layerId => _getLayerId();
  String _getLayerId() => asJsObject(this).callMethod('getLayerId');
  String get layerKey => _getLayerKey();
  String _getLayerKey() => asJsObject(this).callMethod('getLayerKey');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  String get mapId => _getMapId();
  String _getMapId() => asJsObject(this).callMethod('getMapId');
  num get opacity => _getOpacity();
  num _getOpacity() => asJsObject(this).callMethod('getOpacity');
  MapsEngineStatus get status => _getStatus();
  MapsEngineStatus _getStatus() => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.visualization.MapsEngineStatus');
    if (e == path['INVALID_LAYER']) return MapsEngineStatus.INVALID_LAYER;
    if (e == path['OK']) return MapsEngineStatus.OK;
    if (e == path['UNKNOWN_ERROR']) return MapsEngineStatus.UNKNOWN_ERROR;
  })(asJsObject(this).callMethod('getStatus'));
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
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
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
    asJsObject(this).callMethod(
        'setOptions', [((e) => e == null ? null : asJsObject(e))(options)]);
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
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
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
    asJsObject(this).callMethod('getDetails', [
      ((f) {
        if (f == null) return null;
        return (p_p1) {
          p_p1 = new JsInterfaceCodec<MapsEngineMouseEvent>((o) => ((e) =>
                  e == null ? null : new MapsEngineMouseEvent.created(e))(o))
              .decode(p_p1);
          return f(p_p1);
        };
      })(callback)
    ]);
  }

  void set featureId(String _featureId) {
    asJsObject(this)['featureId'] = _featureId;
  }
  String get featureId => asJsObject(this)['featureId'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] =
        ((e) => e == null ? null : asJsObject(e))(_latLng);
  }
  LatLng get latLng => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['latLng']);
}

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
          getPath('google.maps.visualization.HeatmapLayer'),
          [((e) => e == null ? null : asJsObject(e))(opts)]));

  MVCArray<dynamic /*LatLng|WeightedLocation*/ > get data =>
      (new JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
          (o) => new MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(o,
              new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
    ..add(new JsInterfaceCodec<WeightedLocation>(
        (o) => new WeightedLocation.created(o)))))).decode(_getData());
  _getData() => asJsObject(this).callMethod('getData');
  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  void set data(
          dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) =>
      _setData((new ChainedCodec()
    ..add(new JsInterfaceCodec<MVCArray<dynamic /*LatLng|WeightedLocation*/ >>(
        (o) => new MVCArray<dynamic /*LatLng|WeightedLocation*/ >.created(o,
            new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
      ..add(new JsInterfaceCodec<WeightedLocation>(
          (o) => new WeightedLocation.created(o))))))
    ..add(new JsListCodec<dynamic /*LatLng|WeightedLocation*/ >(
        new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
          (o) => o != null && o.instanceof(getPath("google.maps.LatLng"))))
      ..add(new JsInterfaceCodec<WeightedLocation>(
          (o) => new WeightedLocation.created(o)))))).encode(data));
  void _setData(
      dynamic /*MVCArray<dynamic/*LatLng|WeightedLocation*/>|List<dynamic/*LatLng|WeightedLocation*/>*/ data) {
    asJsObject(this).callMethod('setData', [toJs(data)]);
  }
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _HeatmapLayerOptions
// **************************************************************************

@anonymous
class HeatmapLayerOptions extends JsInterface implements _HeatmapLayerOptions {
  HeatmapLayerOptions.created(JsObject o) : super.created(o);
  HeatmapLayerOptions() : this.created(new JsObject(context['Object']));

  void set _data(dynamic __data) {
    asJsObject(this)['data'] = toJs(__data);
  }
  dynamic get _data => asJsObject(this)['data'];
  MVCArray<LatLng> get data =>
      (new JsInterfaceCodec<MVCArray<LatLng>>(
              (o) => new MVCArray<LatLng>.created(o,
                  new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                      (o) => o != null &&
                          o.instanceof(getPath("google.maps.LatLng"))))))
          .decode(
              _data);
  void set data(MVCArray<LatLng> data) {
    _data =
        (new JsInterfaceCodec<MVCArray<LatLng>>(
                (o) => new MVCArray<LatLng>.created(o,
                    new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
                        (o) => o != null &&
                            o.instanceof(getPath("google.maps.LatLng"))))))
            .encode(
                data);
  }
  void set dissipating(bool _dissipating) {
    asJsObject(this)['dissipating'] = _dissipating;
  }
  bool get dissipating => asJsObject(this)['dissipating'];
  void set gradient(List<String> _gradient) {
    asJsObject(this)['gradient'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_gradient);
  }
  List<String> get gradient => asJsObject(this)['gradient'] as JsArray;
  void set map(GMap _map) {
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
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

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeightedLocation
// **************************************************************************

@anonymous
class WeightedLocation extends JsInterface implements _WeightedLocation {
  WeightedLocation.created(JsObject o) : super.created(o);
  WeightedLocation() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
  void set weight(num _weight) {
    asJsObject(this)['weight'] = _weight;
  }
  num get weight => asJsObject(this)['weight'];
}
