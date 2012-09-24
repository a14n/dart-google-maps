#library('gmaps-adsense');

#import('dart:html', prefix:'html');
#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class AdUnit extends MVCObject {
  static const String _TYPE_NAME = "google.maps.adsense.AdUnit";

  AdUnit(html.Node container, AdUnitOptions opts) : super.newInstance(_TYPE_NAME, [container, opts]);
  AdUnit.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String getChannelNumber() => $.call("getChannelNumber");
  html.Node getContainer() => $.call("getContainer");
  AdFormat getFormat() => AdFormat.find($.call("getFormat"));
  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  ControlPosition getPosition() => ControlPosition.find($.call("getPosition"));
  String getPublisherId() => $.call("getPublisherId");
  void setChannelNumber(String channelNumber) { $.call("setChannelNumber", [channelNumber]); }
  void setFormat(AdFormat format) { $.call("setFormat", [format]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setPosition(ControlPosition position) { $.call("setPosition", [position]); }
}

class AdUnitOptions extends js.JsObject {
  set channelNumber(String channelNumber) => $["channelNumber"] = channelNumber;
  set format(AdFormat format) => $["format"] = format;
  set map(GMap map) => $["map"] = map;
  set position(ControlPosition position) => $["position"] = position;
  set publisherId(String publisherId) => $["publisherId"] = publisherId;
}

class AdFormat extends js.JsObject {
  static const String TYPE_NAME = "google.maps.adsense.AdFormat";

  static final AdFormat BANNER= new AdFormat._("${TYPE_NAME}.BANNER");
  static final AdFormat BUTTON= new AdFormat._("${TYPE_NAME}.BUTTON");
  static final AdFormat HALF_BANNER= new AdFormat._("${TYPE_NAME}.HALF_BANNER");
  static final AdFormat LARGE_RECTANGLE= new AdFormat._("${TYPE_NAME}.LARGE_RECTANGLE");
  static final AdFormat LEADERBOARD= new AdFormat._("${TYPE_NAME}.LEADERBOARD");
  static final AdFormat MEDIUM_RECTANGLE= new AdFormat._("${TYPE_NAME}.MEDIUM_RECTANGLE");
  static final AdFormat SKYSCRAPER= new AdFormat._("${TYPE_NAME}.SKYSCRAPER");
  static final AdFormat SMALL_RECTANGLE= new AdFormat._("${TYPE_NAME}.SMALL_RECTANGLE");
  static final AdFormat SMALL_SQUARE= new AdFormat._("${TYPE_NAME}.SMALL_SQUARE");
  static final AdFormat SQUARE= new AdFormat._("${TYPE_NAME}.SQUARE");
  static final AdFormat VERTICAL_BANNER= new AdFormat._("${TYPE_NAME}.VERTICAL_BANNER");
  static final AdFormat WIDE_SKYSCRAPER= new AdFormat._("${TYPE_NAME}.WIDE_SKYSCRAPER");

  static AdFormat find(Object o) { return findIn(o, [BANNER, BUTTON, HALF_BANNER, LARGE_RECTANGLE, LEADERBOARD, MEDIUM_RECTANGLE, SKYSCRAPER, SMALL_RECTANGLE, SMALL_SQUARE, SQUARE, VERTICAL_BANNER, WIDE_SKYSCRAPER]); }

  AdFormat._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}
