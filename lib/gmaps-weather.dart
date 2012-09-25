#library('gmaps-weather');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class CloudLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.weather.CloudLayer";

  CloudLayer() : super.newInstance(_TYPE_NAME);
  CloudLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => $.call("getMap", [], GMap.INSTANCIATOR);
  void setMap(GMap map) { $.call("setMap", [map]); }
}

class WeatherLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.weather.WeatherLayer";

  WeatherLayer([WeatherLayerOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  WeatherLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => $.call("getMap", [], GMap.INSTANCIATOR);
  void setMap(GMap map) { $.call("setMap", [map]); }
  void setOptions(WeatherLayerOptions options) { $.call("setOptions", [options]); }
}

class WeatherLayerOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set labelColor(LabelColor labelColor) => $["labelColor"] = labelColor;
  set map(GMap map) => $["map"] = map;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
  set temperatureUnits(TemperatureUnit temperatureUnits) => $["temperatureUnits"] = temperatureUnits;
  set windSpeedUnits(WindSpeedUnit windSpeedUnits) => $["windSpeedUnits"] = windSpeedUnits;
}

class TemperatureUnit extends js.JsObject {
  static const String TYPE_NAME = "google.maps.weather.TemperatureUnit";
  static final INSTANCIATOR = (js.JsRef jsRef) => find(jsRef);

  static final TemperatureUnit CELSIUS = new TemperatureUnit._("${TYPE_NAME}.CELSIUS");
  static final TemperatureUnit FAHRENHEIT = new TemperatureUnit._("${TYPE_NAME}.FAHRENHEIT");

  static final _INSTANCES = [CELSIUS, FAHRENHEIT];

  static TemperatureUnit find(Object o) { return findIn(o, _INSTANCES); }

  TemperatureUnit._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class WindSpeedUnit extends js.JsObject {
  static const TYPE_NAME = "google.maps.weather.WindSpeedUnit";
  static final INSTANCIATOR = (js.JsRef jsRef) => find(jsRef);

  static final KILOMETERS_PER_HOUR = new WindSpeedUnit._("${TYPE_NAME}.KILOMETERS_PER_HOUR");
  static final METERS_PER_SECOND = new WindSpeedUnit._("${TYPE_NAME}.METERS_PER_SECOND");
  static final MILES_PER_HOUR = new WindSpeedUnit._("${TYPE_NAME}.MILES_PER_HOUR");

  static final _INSTANCES = [KILOMETERS_PER_HOUR, METERS_PER_SECOND, MILES_PER_HOUR];

  static WindSpeedUnit find(Object o) { return findIn(o, _INSTANCES); }

  WindSpeedUnit._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class LabelColor extends js.JsObject {
  static const TYPE_NAME = "google.maps.weather.LabelColor";

  static final BLACK = new LabelColor._("${TYPE_NAME}.BLACK");
  static final WHITE = new LabelColor._("${TYPE_NAME}.WHITE");

  static final _INSTANCES = [BLACK, WHITE];

  static LabelColor find(Object o) { return findIn(o, _INSTANCES); }

  LabelColor._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class WeatherMouseEvent extends NativeEvent {
  WeatherMouseEvent();
  WeatherMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  WeatherFeature get featureDetails => $.getProperty("featureDetails", WeatherFeature.INSTANCIATOR);
  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => $.getProperty("latLng", LatLng.INSTANCIATOR);
  Size get pixelOffset => $.getProperty("pixelOffset", Size.INSTANCIATOR);
}

class WeatherFeature extends js.JsObject {
  static final INSTANCIATOR = (js.JsRef jsRef) => new WeatherFeature.fromJsRef(jsRef);

  WeatherFeature.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  WeatherConditions get current => $.getProperty("current", WeatherConditions.INSTANCIATOR);
  List<WeatherForecast> get forecast => $.getProperty("forecast", (js.JsRef jsRef) => new js.JsList<WeatherForecast>.fromJsRef(jsRef, WeatherForecast.INSTANCIATOR));
  String get location => $["location"];
  TemperatureUnit get temperatureUnit => $.getProperty("temperatureUnit", TemperatureUnit.INSTANCIATOR);
  WindSpeedUnit get windSpeedUnit => $.getProperty("windSpeedUnit", WindSpeedUnit.INSTANCIATOR);
}

class WeatherConditions extends js.JsObject {
  static final INSTANCIATOR = (js.JsRef jsRef) => new WeatherConditions.fromJsRef(jsRef);

  WeatherConditions.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get day => $["day"];
  String get description => $["description"];
  num get high => $["high"];
  num get humidity => $["humidity"];
  num get low => $["low"];
  String get shortDay => $["shortDay"];
  num get temperature => $["temperature"];
  String get windDirection => $["windDirection"];
  num get windSpeed => $["windSpeed"];
}

class WeatherForecast extends js.JsObject {
  static final INSTANCIATOR = (js.JsRef jsRef) => new WeatherForecast.fromJsRef(jsRef);

  WeatherForecast.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get day => $["day"];
  String get description => $["description"];
  num get high => $["high"];
  num get low => $["low"];
  String get shortDay => $["shortDay"];
}
