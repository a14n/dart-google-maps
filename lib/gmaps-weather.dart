#library('gmaps-weather');

#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class CloudLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.weather.CloudLayer";

  CloudLayer() : super.newInstance(_TYPE_NAME);
  CloudLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
  void setMap(GMap map) { $.call("setMap", [map]); }
}

class WeatherLayer extends MVCObject {
  static const String _TYPE_NAME = "google.maps.weather.WeatherLayer";

  WeatherLayer([WeatherLayerOptions opts]) : super.newInstance(_TYPE_NAME, [opts]);
  WeatherLayer.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  GMap getMap() => _transformIfNotNull($.call("getMap"), (e) => new GMap.fromJsRef(e));
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

  static finalTemperatureUnit CELSIUS= new TemperatureUnit._("${TYPE_NAME}.CELSIUS");
  static finalTemperatureUnit FAHRENHEIT= new TemperatureUnit._("${TYPE_NAME}.FAHRENHEIT");

  static TemperatureUnit find(Object o) { return findIn(o, [CELSIUS, FAHRENHEIT]); }

  TemperatureUnit._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class WindSpeedUnit extends js.JsObject {
  static const String TYPE_NAME = "google.maps.weather.WindSpeedUnit";

  static finalWindSpeedUnit KILOMETERS_PER_HOUR= new WindSpeedUnit._("${TYPE_NAME}.KILOMETERS_PER_HOUR");
  static finalWindSpeedUnit METERS_PER_SECOND= new WindSpeedUnit._("${TYPE_NAME}.METERS_PER_SECOND");
  static finalWindSpeedUnit MILES_PER_HOUR= new WindSpeedUnit._("${TYPE_NAME}.MILES_PER_HOUR");

  static WindSpeedUnit find(Object o) { return findIn(o, [KILOMETERS_PER_HOUR, METERS_PER_SECOND, MILES_PER_HOUR]); }

  WindSpeedUnit._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class LabelColor extends js.JsObject {
  static const String TYPE_NAME = "google.maps.weather.LabelColor";

  static finalLabelColor BLACK= new LabelColor._("${TYPE_NAME}.BLACK");
  static finalLabelColor WHITE= new LabelColor._("${TYPE_NAME}.WHITE");

  static LabelColor find(Object o) { return findIn(o, [BLACK, WHITE]); }

  LabelColor._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
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
