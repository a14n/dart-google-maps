// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.panoramio;

// **************************************************************************
// Generator: JsWrappingGenerator
// **************************************************************************

/// codec for google_maps.src.panoramio.PanoramioFeature
final __codec5 = new JsInterfaceCodec<PanoramioFeature>(
    (o) => new PanoramioFeature.created(o));

/// codec for google_maps.src.panoramio.PanoramioLayerOptions
final __codec4 = new JsInterfaceCodec<PanoramioLayerOptions>(
    (o) => new PanoramioLayerOptions.created(o));

/// codec for google_maps.src.Size
final __codec3 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

/// codec for google_maps.src.LatLng
final __codec2 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for google_maps.src.GMap
final __codec1 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for null.dynamic
final __codec0 = new DynamicCodec();

@GeneratedFrom(_PanoramioLayer)
@JsName('google.maps.panoramio.PanoramioLayer')
class PanoramioLayer extends MVCObject {
  PanoramioLayer.created(JsObject o) : super.created(o);
  PanoramioLayer([PanoramioLayerOptions opts])
      : this.created(new JsObject(
            context['google']['maps']['panoramio']['PanoramioLayer'],
            [__codec4.encode(opts)]));

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
    asJsObject(this).callMethod('setOptions', [__codec4.encode(options)]);
  }

  void set tag(String tag) => _setTag(tag);
  void _setTag(String tag) {
    asJsObject(this).callMethod('setTag', [tag]);
  }

  void set userId(String userId) => _setUserId(userId);
  void _setUserId(String userId) {
    asJsObject(this).callMethod('setUserId', [userId]);
  }

  Stream<PanoramioMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new PanoramioMouseEvent.created(o));
}

@GeneratedFrom(_PanoramioLayerOptions)
@anonymous
class PanoramioLayerOptions extends JsInterface {
  PanoramioLayerOptions.created(JsObject o) : super.created(o);
  PanoramioLayerOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec1.encode(_map);
  }

  GMap get map => __codec1.decode(asJsObject(this)['map']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set tag(String _tag) {
    asJsObject(this)['tag'] = _tag;
  }

  String get tag => asJsObject(this)['tag'];
  void set userId(String _userId) {
    asJsObject(this)['userId'] = _userId;
  }

  String get userId => asJsObject(this)['userId'];
}

@GeneratedFrom(_PanoramioFeature)
@anonymous
class PanoramioFeature extends JsInterface {
  PanoramioFeature.created(JsObject o) : super.created(o);
  PanoramioFeature() : this.created(new JsObject(context['Object']));

  void set author(String _author) {
    asJsObject(this)['author'] = _author;
  }

  String get author => asJsObject(this)['author'];
  void set photoId(String _photoId) {
    asJsObject(this)['photoId'] = _photoId;
  }

  String get photoId => asJsObject(this)['photoId'];
  void set title(String _title) {
    asJsObject(this)['title'] = _title;
  }

  String get title => asJsObject(this)['title'];
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
  void set userId(String _userId) {
    asJsObject(this)['userId'] = _userId;
  }

  String get userId => asJsObject(this)['userId'];
}

@GeneratedFrom(_PanoramioMouseEvent)
@anonymous
class PanoramioMouseEvent extends JsInterface {
  PanoramioMouseEvent.created(JsObject o) : super.created(o);
  PanoramioMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureDetails(PanoramioFeature _featureDetails) {
    asJsObject(this)['featureDetails'] = __codec5.encode(_featureDetails);
  }

  PanoramioFeature get featureDetails =>
      __codec5.decode(asJsObject(this)['featureDetails']);
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec2.encode(_latLng);
  }

  LatLng get latLng => __codec2.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec3.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec3.decode(asJsObject(this)['pixelOffset']);
}
