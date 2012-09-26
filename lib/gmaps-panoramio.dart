#library('gmaps-panoramio');

#import('package:js/js.dart', prefix:'js');
#import('jswrap.dart', prefix:'jsw');
#import('gmaps.dart');

class PanoramioLayer extends MVCObject {
  PanoramioLayer([PanoramioLayerOptions opts]) : super.newInstance(maps.panoramio.PanoramioLayer, [opts]);
  PanoramioLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  GMap getMap() => $.call("getMap", [], GMap.INSTANCIATOR);
  String getTag() => $.call("getTag");
  String getUserId() => $.call("getUserId");
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(PanoramioLayerOptions options) { $.call("setOptions", [options]); }
  void setTag(String tag) { $.call("setTag", [tag]); }
  void setUserId(String userId) { $.call("setUserId", [userId]); }
}

class PanoramioLayerOptions extends jsw.IsJsProxy {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set map(GMap map) => $["map"] = map;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
  set tag(String tag) => $["tag"] = tag;
  set userId(String userId) => $["userId"] = userId;
}

class PanoramioFeature extends jsw.IsJsProxy {
  PanoramioFeature.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get author => $["author"];
  String get photoId => $["photoId"];
  String get title => $["title"];
  String get url => $["url"];
  String get userId => $["userId"];
}

class PanoramioMouseEvent extends NativeEvent {
  PanoramioMouseEvent();
  PanoramioMouseEvent.wrap(NativeEvent e) : super.fromIsJsProxy(e);

  PanoramioFeature get featureDetails => new PanoramioFeature.fromJsProxy($["featureDetails"]);
  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => $.getProperty("latLng", LatLng.INSTANCIATOR);
  Size get pixelOffset => $.getProperty("pixelOffset", Size.INSTANCIATOR);
}
