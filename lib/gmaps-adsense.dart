#library('gmaps-adsense');

#import('dart:html', prefix:'html');
#import('package:js/js.dart', prefix:'js');
#import('jswrap.dart', prefix:'jsw');
#import('gmaps.dart');

class AdUnit extends MVCObject {
  AdUnit(html.Node container, AdUnitOptions opts) : super.newInstance(maps.adsense.AdUnit, [container, opts]);
  AdUnit.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String getChannelNumber() => $.call("getChannelNumber");
  html.Node getContainer() => $.call("getContainer");
  AdFormat getFormat() => $.call("getFormat", [], AdFormat.INSTANCIATOR);
  GMap getMap() => $.call("getMap", [], GMap.INSTANCIATOR);
  ControlPosition getPosition() => $.call("getPosition", [], ControlPosition.find);
  String getPublisherId() => $.call("getPublisherId");
  void setChannelNumber(String channelNumber) { $.call("setChannelNumber", [channelNumber]); }
  void setFormat(AdFormat format) { $.call("setFormat", [format]); }
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setPosition(ControlPosition position) { $.call("setPosition", [position]); }
}

class AdUnitOptions extends jsw.IsJsProxy {
  set channelNumber(String channelNumber) => $["channelNumber"] = channelNumber;
  set format(AdFormat format) => $["format"] = format;
  set map(GMap map) => $["map"] = map;
  set position(ControlPosition position) => $["position"] = position;
  set publisherId(String publisherId) => $["publisherId"] = publisherId;
}

class AdFormat extends jsw.IsEnum<String> {
  static final BANNER = new AdFormat._(maps.adsense.AdFormat.BANNER);
  static final BUTTON = new AdFormat._(maps.adsense.AdFormat.BUTTON);
  static final HALF_BANNER = new AdFormat._(maps.adsense.AdFormat.HALF_BANNER);
  static final LARGE_RECTANGLE = new AdFormat._(maps.adsense.AdFormat.LARGE_RECTANGLE);
  static final LEADERBOARD = new AdFormat._(maps.adsense.AdFormat.LEADERBOARD);
  static final MEDIUM_RECTANGLE = new AdFormat._(maps.adsense.AdFormat.MEDIUM_RECTANGLE);
  static final SKYSCRAPER = new AdFormat._(maps.adsense.AdFormat.SKYSCRAPER);
  static final SMALL_RECTANGLE = new AdFormat._(maps.adsense.AdFormat.SMALL_RECTANGLE);
  static final SMALL_SQUARE = new AdFormat._(maps.adsense.AdFormat.SMALL_SQUARE);
  static final SQUARE = new AdFormat._(maps.adsense.AdFormat.SQUARE);
  static final VERTICAL_BANNER = new AdFormat._(maps.adsense.AdFormat.VERTICAL_BANNER);
  static final WIDE_SKYSCRAPER = new AdFormat._(maps.adsense.AdFormat.WIDE_SKYSCRAPER);

  static final _INSTANCES = [BANNER, BUTTON, HALF_BANNER, LARGE_RECTANGLE, LEADERBOARD, MEDIUM_RECTANGLE, SKYSCRAPER, SMALL_RECTANGLE, SMALL_SQUARE, SQUARE, VERTICAL_BANNER, WIDE_SKYSCRAPER];

  static AdFormat find(Object o) => findIn(_INSTANCES, o);

  AdFormat._(String value) : super(value);

  bool operator ==(Object other) => value == (other is AdFormat ? (other as AdFormat).value : other);
}
