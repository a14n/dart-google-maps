#library('gmaps-weather');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class CloudLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.weather.CloudLayer";

  CloudLayer() : super.newInstance(_TYPE_NAME);
  CloudLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.callJs("setMap", [map]); }
}

class WeatherLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.weather.WeatherLayer";

  WeatherLayer([WeatherLayerOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  WeatherLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.callJs("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.callJs("setMap", [map]); }
  void setOptions(WeatherLayerOptions options) { $.callJs("setOptions", [options]); }
}

class WeatherLayerOptions extends js.JsObject {
  set clickable(bool clickable) => $["clickable"] = clickable;
  set labelColor(LabelColor labelColor) => $["labelColor"] = labelColor;
  set map(GMap map) => $["map"] = map;
  set suppressInfoWindows(bool suppressInfoWindows) => $["suppressInfoWindows"] = suppressInfoWindows;
  set temperatureUnits(TemperatureUnit temperatureUnits) => $["temperatureUnits"] = temperatureUnits;
  set windSpeedUnits(WindSpeedUnit windSpeedUnits) => $["windSpeedUnits"] = windSpeedUnits;
}

class TemperatureUnit extends js.JsConst {
  static const String TYPE_NAME = "google.maps.weather.TemperatureUnit";

  static const TemperatureUnit CELSIUS = const TemperatureUnit._("${TYPE_NAME}.CELSIUS");
  static const TemperatureUnit FAHRENHEIT = const TemperatureUnit._("${TYPE_NAME}.FAHRENHEIT");

  static TemperatureUnit find(Object o) { return js.JsConst.findIn(o, [CELSIUS, FAHRENHEIT]); }

  const TemperatureUnit._(String jsName) : super.fromJsName(jsName);
}

class WindSpeedUnit extends js.JsConst {
  static const String TYPE_NAME = "google.maps.weather.WindSpeedUnit";

  static const WindSpeedUnit KILOMETERS_PER_HOUR = const WindSpeedUnit._("${TYPE_NAME}.KILOMETERS_PER_HOUR");
  static const WindSpeedUnit METERS_PER_SECOND = const WindSpeedUnit._("${TYPE_NAME}.METERS_PER_SECOND");
  static const WindSpeedUnit MILES_PER_HOUR = const WindSpeedUnit._("${TYPE_NAME}.MILES_PER_HOUR");

  static WindSpeedUnit find(Object o) { return js.JsConst.findIn(o, [KILOMETERS_PER_HOUR, METERS_PER_SECOND, MILES_PER_HOUR]); }

  const WindSpeedUnit._(String jsName) : super.fromJsName(jsName);
}

class LabelColor extends js.JsConst {
  static const String TYPE_NAME = "google.maps.weather.LabelColor";

  static const LabelColor BLACK = const LabelColor._("${TYPE_NAME}.BLACK");
  static const LabelColor WHITE = const LabelColor._("${TYPE_NAME}.WHITE");

  static LabelColor find(Object o) { return js.JsConst.findIn(o, [BLACK, WHITE]); }

  const LabelColor._(String jsName) : super.fromJsName(jsName);
}

class WeatherMouseEvent extends NativeEvent {
  WeatherMouseEvent();
  WeatherMouseEvent.wrap(NativeEvent e) { jsRef = e.jsRef; }

  WeatherFeature get featureDetails => new WeatherFeature.fromJsRef($["featureDetails"]);
  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => new LatLng.fromJsRef($["latLng"]);
  Size get pixelOffset => new Size.fromJsRef($["pixelOffset"]);
}

class WeatherFeature extends js.JsObject {
  WeatherFeature.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  WeatherConditions get current => new WeatherConditions.fromJsRef($["current"]);
  List<WeatherForecast> get forecast {
    List<js.JsRef> resultsRefs = $["forecast"];
    return resultsRefs.map((e) => new WeatherForecast.fromJsRef(e));
  }
  String get location => $["location"];
  TemperatureUnit get temperatureUnit => TemperatureUnit.find($["temperatureUnit"]);
  WindSpeedUnit get windSpeedUnit => WindSpeedUnit.find($["windSpeedUnit"]);
}

class WeatherConditions extends js.JsObject {
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
  WeatherForecast.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  String get day => $["day"];
  String get description => $["description"];
  num get high => $["high"];
  num get low => $["low"];
  String get shortDay => $["shortDay"];
}
