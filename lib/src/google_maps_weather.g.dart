// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-13T17:06:36.643Z

part of google_maps.weather;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _CloudLayer
// **************************************************************************

@JsName('google.maps.weather.CloudLayer')
class CloudLayer extends MVCObject implements _CloudLayer {
  CloudLayer.created(JsObject o) : super.created(o);
  CloudLayer()
      : this.created(new JsObject(getPath('google.maps.weather.CloudLayer')));

  GMap get map => _getMap();
  GMap _getMap() => __codec235.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec235.encode(map)]);
  }
}
/// codec for GMap
final __codec235 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherLayer
// **************************************************************************

@JsName('google.maps.weather.WeatherLayer')
class WeatherLayer extends MVCObject implements _WeatherLayer {
  WeatherLayer.created(JsObject o) : super.created(o);
  WeatherLayer([WeatherLayerOptions opts]) : this.created(new JsObject(
          getPath('google.maps.weather.WeatherLayer'),
          [__codec236.encode(opts)]));

  GMap get map => _getMap();
  GMap _getMap() => __codec235.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec235.encode(map)]);
  }
  void set options(WeatherLayerOptions options) => _setOptions(options);
  void _setOptions(WeatherLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec236.encode(options)]);
  }

  Stream<WeatherMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new WeatherMouseEvent.created(o));
}
/// codec for WeatherLayerOptions
final __codec236 = new JsInterfaceCodec<WeatherLayerOptions>(
    (o) => new WeatherLayerOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherLayerOptions
// **************************************************************************

@anonymous
class WeatherLayerOptions extends JsInterface implements _WeatherLayerOptions {
  WeatherLayerOptions.created(JsObject o) : super.created(o);
  WeatherLayerOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }
  bool get clickable => asJsObject(this)['clickable'];
  void set labelColor(LabelColor _labelColor) {
    asJsObject(this)['labelColor'] = __codec237.encode(_labelColor);
  }
  LabelColor get labelColor =>
      __codec237.decode(asJsObject(this)['labelColor']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec235.encode(_map);
  }
  GMap get map => __codec235.decode(asJsObject(this)['map']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set temperatureUnits(TemperatureUnit _temperatureUnits) {
    asJsObject(this)['temperatureUnits'] = __codec238.encode(_temperatureUnits);
  }
  TemperatureUnit get temperatureUnits =>
      __codec238.decode(asJsObject(this)['temperatureUnits']);
  void set windSpeedUnits(WindSpeedUnit _windSpeedUnits) {
    asJsObject(this)['windSpeedUnits'] = __codec239.encode(_windSpeedUnits);
  }
  WindSpeedUnit get windSpeedUnits =>
      __codec239.decode(asJsObject(this)['windSpeedUnits']);
}
/// codec for LabelColor
final __codec237 = new BiMapCodec<LabelColor, dynamic>(
    new Map<LabelColor, dynamic>.fromIterable(LabelColor.values, value: asJs));

/// codec for TemperatureUnit
final __codec238 = new BiMapCodec<TemperatureUnit, dynamic>(
    new Map<TemperatureUnit, dynamic>.fromIterable(TemperatureUnit.values,
        value: asJs));

/// codec for WindSpeedUnit
final __codec239 = new BiMapCodec<WindSpeedUnit, dynamic>(
    new Map<WindSpeedUnit, dynamic>.fromIterable(WindSpeedUnit.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _TemperatureUnit
// **************************************************************************

class TemperatureUnit extends JsEnum {
  static final values = <TemperatureUnit>[CELSIUS, FAHRENHEIT];
  static final CELSIUS = new TemperatureUnit._(
      getPath('google.maps.weather.TemperatureUnit')['CELSIUS']);
  static final FAHRENHEIT = new TemperatureUnit._(
      getPath('google.maps.weather.TemperatureUnit')['FAHRENHEIT']);
  TemperatureUnit._(o) : super.created(o);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _WindSpeedUnit
// **************************************************************************

class WindSpeedUnit extends JsEnum {
  static final values = <WindSpeedUnit>[
    KILOMETERS_PER_HOUR,
    METERS_PER_SECOND,
    MILES_PER_HOUR
  ];
  static final KILOMETERS_PER_HOUR = new WindSpeedUnit._(
      getPath('google.maps.weather.WindSpeedUnit')['KILOMETERS_PER_HOUR']);
  static final METERS_PER_SECOND = new WindSpeedUnit._(
      getPath('google.maps.weather.WindSpeedUnit')['METERS_PER_SECOND']);
  static final MILES_PER_HOUR = new WindSpeedUnit._(
      getPath('google.maps.weather.WindSpeedUnit')['MILES_PER_HOUR']);
  WindSpeedUnit._(o) : super.created(o);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _LabelColor
// **************************************************************************

class LabelColor extends JsEnum {
  static final values = <LabelColor>[BLACK, WHITE];
  static final BLACK =
      new LabelColor._(getPath('google.maps.weather.LabelColor')['BLACK']);
  static final WHITE =
      new LabelColor._(getPath('google.maps.weather.LabelColor')['WHITE']);
  LabelColor._(o) : super.created(o);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherMouseEvent
// **************************************************************************

@anonymous
class WeatherMouseEvent extends JsInterface implements _WeatherMouseEvent {
  WeatherMouseEvent.created(JsObject o) : super.created(o);
  WeatherMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureDetails(WeatherFeature _featureDetails) {
    asJsObject(this)['featureDetails'] = __codec240.encode(_featureDetails);
  }
  WeatherFeature get featureDetails =>
      __codec240.decode(asJsObject(this)['featureDetails']);
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec241.encode(_latLng);
  }
  LatLng get latLng => __codec241.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec242.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec242.decode(asJsObject(this)['pixelOffset']);
}
/// codec for WeatherFeature
final __codec240 =
    new JsInterfaceCodec<WeatherFeature>((o) => new WeatherFeature.created(o));

/// codec for LatLng
final __codec241 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for Size
final __codec242 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherFeature
// **************************************************************************

@anonymous
class WeatherFeature extends JsInterface implements _WeatherFeature {
  WeatherFeature.created(JsObject o) : super.created(o);
  WeatherFeature() : this.created(new JsObject(context['Object']));

  void set current(WeatherConditions _current) {
    asJsObject(this)['current'] = __codec243.encode(_current);
  }
  WeatherConditions get current =>
      __codec243.decode(asJsObject(this)['current']);
  void set forecast(List<WeatherForecast> _forecast) {
    asJsObject(this)['forecast'] = __codec245.encode(_forecast);
  }
  List<WeatherForecast> get forecast =>
      __codec245.decode(asJsObject(this)['forecast']);
  void set location(String _location) {
    asJsObject(this)['location'] = _location;
  }
  String get location => asJsObject(this)['location'];
  void set temperatureUnit(TemperatureUnit _temperatureUnit) {
    asJsObject(this)['temperatureUnit'] = __codec238.encode(_temperatureUnit);
  }
  TemperatureUnit get temperatureUnit =>
      __codec238.decode(asJsObject(this)['temperatureUnit']);
  void set windSpeedUnit(WindSpeedUnit _windSpeedUnit) {
    asJsObject(this)['windSpeedUnit'] = __codec239.encode(_windSpeedUnit);
  }
  WindSpeedUnit get windSpeedUnit =>
      __codec239.decode(asJsObject(this)['windSpeedUnit']);
}
/// codec for WeatherConditions
final __codec243 = new JsInterfaceCodec<WeatherConditions>(
    (o) => new WeatherConditions.created(o));

/// codec for WeatherForecast
final __codec244 = new JsInterfaceCodec<WeatherForecast>(
    (o) => new WeatherForecast.created(o));

/// codec for List<WeatherForecast>
final __codec245 = new JsListCodec<WeatherForecast>(__codec244);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherConditions
// **************************************************************************

@anonymous
class WeatherConditions extends JsInterface implements _WeatherConditions {
  WeatherConditions.created(JsObject o) : super.created(o);
  WeatherConditions() : this.created(new JsObject(context['Object']));

  void set day(String _day) {
    asJsObject(this)['day'] = _day;
  }
  String get day => asJsObject(this)['day'];
  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set high(num _high) {
    asJsObject(this)['high'] = _high;
  }
  num get high => asJsObject(this)['high'];
  void set humidity(num _humidity) {
    asJsObject(this)['humidity'] = _humidity;
  }
  num get humidity => asJsObject(this)['humidity'];
  void set low(num _low) {
    asJsObject(this)['low'] = _low;
  }
  num get low => asJsObject(this)['low'];
  void set shortDay(String _shortDay) {
    asJsObject(this)['shortDay'] = _shortDay;
  }
  String get shortDay => asJsObject(this)['shortDay'];
  void set temperature(num _temperature) {
    asJsObject(this)['temperature'] = _temperature;
  }
  num get temperature => asJsObject(this)['temperature'];
  void set windDirection(String _windDirection) {
    asJsObject(this)['windDirection'] = _windDirection;
  }
  String get windDirection => asJsObject(this)['windDirection'];
  void set windSpeed(num _windSpeed) {
    asJsObject(this)['windSpeed'] = _windSpeed;
  }
  num get windSpeed => asJsObject(this)['windSpeed'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherForecast
// **************************************************************************

@anonymous
class WeatherForecast extends JsInterface implements _WeatherForecast {
  WeatherForecast.created(JsObject o) : super.created(o);
  WeatherForecast() : this.created(new JsObject(context['Object']));

  void set day(String _day) {
    asJsObject(this)['day'] = _day;
  }
  String get day => asJsObject(this)['day'];
  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set high(num _high) {
    asJsObject(this)['high'] = _high;
  }
  num get high => asJsObject(this)['high'];
  void set low(num _low) {
    asJsObject(this)['low'] = _low;
  }
  num get low => asJsObject(this)['low'];
  void set shortDay(String _shortDay) {
    asJsObject(this)['shortDay'] = _shortDay;
  }
  String get shortDay => asJsObject(this)['shortDay'];
}
