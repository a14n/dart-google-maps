#library('gmaps-panoramio');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class PanoramioLayer extends MVCObject {
  static const String TYPE_NAME = "google.maps.panoramio.PanoramioLayer";

  PanoramioLayer([PanoramioLayerOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  PanoramioLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.callJs("getMap"), (e) => new GMap.fromJsRef(e));
  String getTag() => $.callJs("getTag");
  String getUserId() => $.callJs("getUserId");
  void setMap(GMap map) { $.callJs("setMap", [map]); }
  void setOptions(PanoramioLayerOptions options) { $.callJs("setOptions", [options]); }
  void setTag(String tag) { $.callJs("setTag", [tag]); }
  void setUserId(String userId) { $.callJs("setUserId", [userId]); }
}

class PanoramioLayerOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set map(GMap map) => $["map"] = map;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
  set tag(String tag) => $["tag"] = tag;
  set userId(String userId) => $["userId"] = userId;
}

class PanoramioFeature extends js.JsObject {
  PanoramioFeature.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get author => $["author"];
  String get photoId => $["photoId"];
  String get title => $["title"];
  String get url => $["url"];
  String get userId => $["userId"];
}

class PanoramioMouseEvent extends NativeEvent {
  PanoramioMouseEvent();
  PanoramioMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  PanoramioFeature get featureDetails => new PanoramioFeature.fromJsRef($["featureDetails"]);
  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => new LatLng.fromJsRef($["latLng"]);
  Size get pixelOffset => new Size.fromJsRef($["pixelOffset"]);
}
