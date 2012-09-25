#library('gmaps-panoramio');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class PanoramioLayer extends MVCObject {
  static const TYPE_NAME = "google.maps.panoramio.PanoramioLayer";

  PanoramioLayer([PanoramioLayerOptions opts]) : super.newInstance(TYPE_NAME, [opts]);
  PanoramioLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => $.call("getMap", [], GMap.INSTANCIATOR);
  String getTag() => $.call("getTag");
  String getUserId() => $.call("getUserId");
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(PanoramioLayerOptions options) { $.call("setOptions", [options]); }
  void setTag(String tag) { $.call("setTag", [tag]); }
  void setUserId(String userId) { $.call("setUserId", [userId]); }
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
  PanoramioMouseEvent.wrap(NativeEvent e) : super.fromJsRef(e.jsRef);

  PanoramioFeature get featureDetails => new PanoramioFeature.fromJsRef($["featureDetails"]);
  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => $.getProperty("latLng", LatLng.INSTANCIATOR);
  Size get pixelOffset => $.getProperty("pixelOffset", Size.INSTANCIATOR);
}
