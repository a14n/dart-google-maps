// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:04.413Z

part of google_maps.src.weather;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _CloudLayer
// **************************************************************************

@JsName('google.maps.weather.CloudLayer')
class CloudLayer extends MVCObject implements _CloudLayer {
  CloudLayer.created(JsObject o) : super.created(o);
  CloudLayer() : this.created(
          new JsObject(context['google']['maps']['weather']['CloudLayer']));

  GMap get map => _getMap();
  GMap _getMap() => __codec421.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec421.encode(map)]);
  }
}
/// codec for google_maps.src.GMap
final __codec421 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherLayer
// **************************************************************************

@JsName('google.maps.weather.WeatherLayer')
class WeatherLayer extends MVCObject implements _WeatherLayer {
  WeatherLayer.created(JsObject o) : super.created(o);
  WeatherLayer([WeatherLayerOptions opts]) : this.created(new JsObject(
          context['google']['maps']['weather']['WeatherLayer'],
          [__codec422.encode(opts)]));

  GMap get map => _getMap();
  GMap _getMap() => __codec421.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec421.encode(map)]);
  }
  void set options(WeatherLayerOptions options) => _setOptions(options);
  void _setOptions(WeatherLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec422.encode(options)]);
  }

  Stream<WeatherMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new WeatherMouseEvent.created(o));
}
/// codec for google_maps.src.weather.WeatherLayerOptions
final __codec422 = new JsInterfaceCodec<WeatherLayerOptions>(
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
    asJsObject(this)['labelColor'] = __codec423.encode(_labelColor);
  }
  LabelColor get labelColor =>
      __codec423.decode(asJsObject(this)['labelColor']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec421.encode(_map);
  }
  GMap get map => __codec421.decode(asJsObject(this)['map']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set temperatureUnits(TemperatureUnit _temperatureUnits) {
    asJsObject(this)['temperatureUnits'] = __codec424.encode(_temperatureUnits);
  }
  TemperatureUnit get temperatureUnits =>
      __codec424.decode(asJsObject(this)['temperatureUnits']);
  void set windSpeedUnits(WindSpeedUnit _windSpeedUnits) {
    asJsObject(this)['windSpeedUnits'] = __codec425.encode(_windSpeedUnits);
  }
  WindSpeedUnit get windSpeedUnits =>
      __codec425.decode(asJsObject(this)['windSpeedUnits']);
}
/// codec for google_maps.src.weather.LabelColor
final __codec423 = new BiMapCodec<LabelColor, dynamic>(
    new Map<LabelColor, dynamic>.fromIterable(LabelColor.values, value: asJs));

/// codec for google_maps.src.weather.TemperatureUnit
final __codec424 = new BiMapCodec<TemperatureUnit, dynamic>(
    new Map<TemperatureUnit, dynamic>.fromIterable(TemperatureUnit.values,
        value: asJs));

/// codec for google_maps.src.weather.WindSpeedUnit
final __codec425 = new BiMapCodec<WindSpeedUnit, dynamic>(
    new Map<WindSpeedUnit, dynamic>.fromIterable(WindSpeedUnit.values,
        value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _TemperatureUnit
// **************************************************************************

class TemperatureUnit extends JsEnum {
  static final values = <TemperatureUnit>[CELSIUS, FAHRENHEIT];
  static final CELSIUS = new TemperatureUnit._('CELSIUS',
      context['google']['maps']['weather']['TemperatureUnit']['CELSIUS']);
  static final FAHRENHEIT = new TemperatureUnit._('FAHRENHEIT',
      context['google']['maps']['weather']['TemperatureUnit']['FAHRENHEIT']);

  final String _name;
  TemperatureUnit._(this._name, o) : super.created(o);

  String toString() => 'TemperatureUnit.$_name';

  // dumb code to remove analyzer hint for unused _TemperatureUnit
  _TemperatureUnit _dumbMethod1() => _dumbMethod2();
  _TemperatureUnit _dumbMethod2() => _dumbMethod1();
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
  static final KILOMETERS_PER_HOUR = new WindSpeedUnit._('KILOMETERS_PER_HOUR',
      context['google']['maps']['weather']['WindSpeedUnit'][
      'KILOMETERS_PER_HOUR']);
  static final METERS_PER_SECOND = new WindSpeedUnit._('METERS_PER_SECOND',
      context['google']['maps']['weather']['WindSpeedUnit'][
      'METERS_PER_SECOND']);
  static final MILES_PER_HOUR = new WindSpeedUnit._('MILES_PER_HOUR',
      context['google']['maps']['weather']['WindSpeedUnit']['MILES_PER_HOUR']);

  final String _name;
  WindSpeedUnit._(this._name, o) : super.created(o);

  String toString() => 'WindSpeedUnit.$_name';

  // dumb code to remove analyzer hint for unused _WindSpeedUnit
  _WindSpeedUnit _dumbMethod1() => _dumbMethod2();
  _WindSpeedUnit _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _LabelColor
// **************************************************************************

class LabelColor extends JsEnum {
  static final values = <LabelColor>[BLACK, WHITE];
  static final BLACK = new LabelColor._(
      'BLACK', context['google']['maps']['weather']['LabelColor']['BLACK']);
  static final WHITE = new LabelColor._(
      'WHITE', context['google']['maps']['weather']['LabelColor']['WHITE']);

  final String _name;
  LabelColor._(this._name, o) : super.created(o);

  String toString() => 'LabelColor.$_name';

  // dumb code to remove analyzer hint for unused _LabelColor
  _LabelColor _dumbMethod1() => _dumbMethod2();
  _LabelColor _dumbMethod2() => _dumbMethod1();
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
    asJsObject(this)['featureDetails'] = __codec426.encode(_featureDetails);
  }
  WeatherFeature get featureDetails =>
      __codec426.decode(asJsObject(this)['featureDetails']);
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec427.encode(_latLng);
  }
  LatLng get latLng => __codec427.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec428.encode(_pixelOffset);
  }
  Size get pixelOffset => __codec428.decode(asJsObject(this)['pixelOffset']);
}
/// codec for google_maps.src.weather.WeatherFeature
final __codec426 =
    new JsInterfaceCodec<WeatherFeature>((o) => new WeatherFeature.created(o));

/// codec for google_maps.src.LatLng
final __codec427 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for google_maps.src.Size
final __codec428 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherFeature
// **************************************************************************

@anonymous
class WeatherFeature extends JsInterface implements _WeatherFeature {
  WeatherFeature.created(JsObject o) : super.created(o);
  WeatherFeature() : this.created(new JsObject(context['Object']));

  void set current(WeatherConditions _current) {
    asJsObject(this)['current'] = __codec429.encode(_current);
  }
  WeatherConditions get current =>
      __codec429.decode(asJsObject(this)['current']);
  void set forecast(List<WeatherForecast> _forecast) {
    asJsObject(this)['forecast'] = __codec431.encode(_forecast);
  }
  List<WeatherForecast> get forecast =>
      __codec431.decode(asJsObject(this)['forecast']);
  void set location(String _location) {
    asJsObject(this)['location'] = _location;
  }
  String get location => asJsObject(this)['location'];
  void set temperatureUnit(TemperatureUnit _temperatureUnit) {
    asJsObject(this)['temperatureUnit'] = __codec424.encode(_temperatureUnit);
  }
  TemperatureUnit get temperatureUnit =>
      __codec424.decode(asJsObject(this)['temperatureUnit']);
  void set windSpeedUnit(WindSpeedUnit _windSpeedUnit) {
    asJsObject(this)['windSpeedUnit'] = __codec425.encode(_windSpeedUnit);
  }
  WindSpeedUnit get windSpeedUnit =>
      __codec425.decode(asJsObject(this)['windSpeedUnit']);
}
/// codec for google_maps.src.weather.WeatherConditions
final __codec429 = new JsInterfaceCodec<WeatherConditions>(
    (o) => new WeatherConditions.created(o));

/// codec for google_maps.src.weather.WeatherForecast
final __codec430 = new JsInterfaceCodec<WeatherForecast>(
    (o) => new WeatherForecast.created(o));

/// codec for dart.core.List<WeatherForecast>
final __codec431 = new JsListCodec<WeatherForecast>(__codec430);

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
