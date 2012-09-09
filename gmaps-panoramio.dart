#library('gmaps-panoramio');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class PanoramioLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.panoramio.PanoramioLayer";

  PanoramioLayer([PanoramioLayerOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  PanoramioLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull(callJs("getMap"), (e) => new GMap.fromJsRef(e));
  String getTag() => callJs("getTag");
  String getUserId() => callJs("getUserId");
  void setMap(GMap map) { callJs("setMap", [map]); }
  void setOptions(PanoramioLayerOptions options) { callJs("setOptions", [options]); }
  void setTag(String tag) { callJs("setTag", [tag]); }
  void setUserId(String userId) { callJs("setUserId", [userId]); }
}

class PanoramioLayerOptions extends js.JsObject {
  set clickable(bool clickable) => this["clickable"] = clickable;
  set map(GMap map) => this["map"] = map;
  set suppressInfoWindows(bool suppressInfoWindows) => this["suppressInfoWindows"] = suppressInfoWindows;
  set tag(String tag) => this["tag"] = tag;
  set userId(String userId) => this["userId"] = userId;
}

class PanoramioFeature extends js.JsObject {
  PanoramioFeature.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);
  
  String get author => this["author"];
  String get photoId => this["photoId"];
  String get title => this["title"];
  String get url => this["url"];
  String get userId => this["userId"];
}

class PanoramioMouseEvent extends NativeEvent {
  PanoramioMouseEvent();
  PanoramioMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }
  
  PanoramioFeature get featureDetails => new PanoramioFeature.fromJsRef(this["featureDetails"]);
  String get infoWindowHtml => this["infoWindowHtml"];
  LatLng get latLng => new LatLng.fromJsRef(this["latLng"]);
  Size get pixelOffset => new Size.fromJsRef(this["pixelOffset"]);
}
