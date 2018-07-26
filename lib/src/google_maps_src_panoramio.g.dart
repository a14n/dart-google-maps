// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.panoramio;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_PanoramioFeature)
@anonymous
class PanoramioFeature extends JsInterface {
  PanoramioFeature() : this.created(JsObject(context['Object']));
  PanoramioFeature.created(JsObject o) : super.created(o);

  set author(String _author) {
    asJsObject(this)['author'] = _author;
  }

  String get author => asJsObject(this)['author'];
  set photoId(String _photoId) {
    asJsObject(this)['photoId'] = _photoId;
  }

  String get photoId => asJsObject(this)['photoId'];
  set title(String _title) {
    asJsObject(this)['title'] = _title;
  }

  String get title => asJsObject(this)['title'];
  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
  set userId(String _userId) {
    asJsObject(this)['userId'] = _userId;
  }

  String get userId => asJsObject(this)['userId'];
}

@GeneratedFrom(_PanoramioLayer)
@JsName('google.maps.panoramio.PanoramioLayer')
class PanoramioLayer extends MVCObject {
  PanoramioLayer([PanoramioLayerOptions opts])
      : this.created(JsObject(
            context['google']['maps']['panoramio']['PanoramioLayer'],
            [__codec0.encode(opts)]));
  PanoramioLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec1.decode(asJsObject(this).callMethod('getMap'));
  String get tag => _getTag();
  String _getTag() => asJsObject(this).callMethod('getTag');
  String get userId => _getUserId();
  String _getUserId() => asJsObject(this).callMethod('getUserId');
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec1.encode(map)]);
  }

  void set options(PanoramioLayerOptions options) => _setOptions(options);
  void _setOptions(PanoramioLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec0.encode(options)]);
  }

  void set tag(String tag) => _setTag(tag);
  void _setTag(String tag) {
    asJsObject(this).callMethod('setTag', [tag]);
  }

  void set userId(String userId) => _setUserId(userId);
  void _setUserId(String userId) {
    asJsObject(this).callMethod('setUserId', [userId]);
  }

  Stream<PanoramioMouseEvent> get onClick => getStream(
      this, #onClick, "click", (JsObject o) => PanoramioMouseEvent.created(o));
}

@GeneratedFrom(_PanoramioLayerOptions)
@anonymous
class PanoramioLayerOptions extends JsInterface {
  PanoramioLayerOptions() : this.created(JsObject(context['Object']));
  PanoramioLayerOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec1.encode(_map);
  }

  GMap get map => __codec1.decode(asJsObject(this)['map']);
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  set tag(String _tag) {
    asJsObject(this)['tag'] = _tag;
  }

  String get tag => asJsObject(this)['tag'];
  set userId(String _userId) {
    asJsObject(this)['userId'] = _userId;
  }

  String get userId => asJsObject(this)['userId'];
}

@GeneratedFrom(_PanoramioMouseEvent)
@anonymous
class PanoramioMouseEvent extends JsInterface {
  PanoramioMouseEvent() : this.created(JsObject(context['Object']));
  PanoramioMouseEvent.created(JsObject o) : super.created(o);

  set featureDetails(PanoramioFeature _featureDetails) {
    asJsObject(this)['featureDetails'] = __codec2.encode(_featureDetails);
  }

  PanoramioFeature get featureDetails =>
      __codec2.decode(asJsObject(this)['featureDetails']);
  set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec3.encode(_latLng);
  }

  LatLng get latLng => __codec3.decode(asJsObject(this)['latLng']);
  set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec4.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec4.decode(asJsObject(this)['pixelOffset']);
}

/// codec for google_maps.src.panoramio.PanoramioLayerOptions
final __codec0 = JsInterfaceCodec<PanoramioLayerOptions>(
    (o) => PanoramioLayerOptions.created(o));

/// codec for google_maps.src.GMap
final __codec1 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.panoramio.PanoramioFeature
final __codec2 =
    JsInterfaceCodec<PanoramioFeature>((o) => PanoramioFeature.created(o));

/// codec for google_maps.src.LatLng
final __codec3 = JsInterfaceCodec<LatLng>((o) => LatLng.created(o));

/// codec for google_maps.src.Size
final __codec4 = JsInterfaceCodec<Size>((o) => Size.created(o));
