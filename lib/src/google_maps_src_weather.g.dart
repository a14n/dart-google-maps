// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.weather;

// **************************************************************************
// Generator: JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_CloudLayer)
@JsName('google.maps.weather.CloudLayer')
class CloudLayer extends MVCObject {
  CloudLayer.created(JsObject o) : super.created(o);
  CloudLayer()
      : this.created(
            new JsObject(context['google']['maps']['weather']['CloudLayer']));

  GMap get map => _getMap();
  GMap _getMap() => __codec0.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec0.encode(map)]);
  }
}

@GeneratedFrom(_WeatherLayer)
@JsName('google.maps.weather.WeatherLayer')
class WeatherLayer extends MVCObject {
  WeatherLayer.created(JsObject o) : super.created(o);
  WeatherLayer([WeatherLayerOptions opts])
      : this.created(new JsObject(
            context['google']['maps']['weather']['WeatherLayer'],
            [__codec1.encode(opts)]));

  GMap get map => _getMap();
  GMap _getMap() => __codec0.decode(asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec0.encode(map)]);
  }

  void set options(WeatherLayerOptions options) => _setOptions(options);
  void _setOptions(WeatherLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec1.encode(options)]);
  }

  Stream<WeatherMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new WeatherMouseEvent.created(o));
}

@GeneratedFrom(_WeatherLayerOptions)
@anonymous
class WeatherLayerOptions extends JsInterface {
  WeatherLayerOptions.created(JsObject o) : super.created(o);
  WeatherLayerOptions() : this.created(new JsObject(context['Object']));

  void set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  void set labelColor(LabelColor _labelColor) {
    asJsObject(this)['labelColor'] = __codec2.encode(_labelColor);
  }

  LabelColor get labelColor => __codec2.decode(asJsObject(this)['labelColor']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = __codec0.encode(_map);
  }

  GMap get map => __codec0.decode(asJsObject(this)['map']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set temperatureUnits(TemperatureUnit _temperatureUnits) {
    asJsObject(this)['temperatureUnits'] = __codec3.encode(_temperatureUnits);
  }

  TemperatureUnit get temperatureUnits =>
      __codec3.decode(asJsObject(this)['temperatureUnits']);
  void set windSpeedUnits(WindSpeedUnit _windSpeedUnits) {
    asJsObject(this)['windSpeedUnits'] = __codec4.encode(_windSpeedUnits);
  }

  WindSpeedUnit get windSpeedUnits =>
      __codec4.decode(asJsObject(this)['windSpeedUnits']);
}

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

class WindSpeedUnit extends JsEnum {
  static final values = <WindSpeedUnit>[
    KILOMETERS_PER_HOUR,
    METERS_PER_SECOND,
    MILES_PER_HOUR
  ];
  static final KILOMETERS_PER_HOUR = new WindSpeedUnit._(
      'KILOMETERS_PER_HOUR',
      context['google']['maps']['weather']['WindSpeedUnit']
          ['KILOMETERS_PER_HOUR']);
  static final METERS_PER_SECOND = new WindSpeedUnit._(
      'METERS_PER_SECOND',
      context['google']['maps']['weather']['WindSpeedUnit']
          ['METERS_PER_SECOND']);
  static final MILES_PER_HOUR = new WindSpeedUnit._('MILES_PER_HOUR',
      context['google']['maps']['weather']['WindSpeedUnit']['MILES_PER_HOUR']);

  final String _name;
  WindSpeedUnit._(this._name, o) : super.created(o);

  String toString() => 'WindSpeedUnit.$_name';

  // dumb code to remove analyzer hint for unused _WindSpeedUnit
  _WindSpeedUnit _dumbMethod1() => _dumbMethod2();
  _WindSpeedUnit _dumbMethod2() => _dumbMethod1();
}

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

@GeneratedFrom(_WeatherMouseEvent)
@anonymous
class WeatherMouseEvent extends JsInterface {
  WeatherMouseEvent.created(JsObject o) : super.created(o);
  WeatherMouseEvent() : this.created(new JsObject(context['Object']));

  void set featureDetails(WeatherFeature _featureDetails) {
    asJsObject(this)['featureDetails'] = __codec5.encode(_featureDetails);
  }

  WeatherFeature get featureDetails =>
      __codec5.decode(asJsObject(this)['featureDetails']);
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec6.encode(_latLng);
  }

  LatLng get latLng => __codec6.decode(asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec7.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec7.decode(asJsObject(this)['pixelOffset']);
}

@GeneratedFrom(_WeatherFeature)
@anonymous
class WeatherFeature extends JsInterface {
  WeatherFeature.created(JsObject o) : super.created(o);
  WeatherFeature() : this.created(new JsObject(context['Object']));

  void set current(WeatherConditions _current) {
    asJsObject(this)['current'] = __codec8.encode(_current);
  }

  WeatherConditions get current => __codec8.decode(asJsObject(this)['current']);
  void set forecast(List<WeatherForecast> _forecast) {
    asJsObject(this)['forecast'] = __codec10.encode(_forecast);
  }

  List<WeatherForecast> get forecast =>
      __codec10.decode(asJsObject(this)['forecast']);
  void set location(String _location) {
    asJsObject(this)['location'] = _location;
  }

  String get location => asJsObject(this)['location'];
  void set temperatureUnit(TemperatureUnit _temperatureUnit) {
    asJsObject(this)['temperatureUnit'] = __codec3.encode(_temperatureUnit);
  }

  TemperatureUnit get temperatureUnit =>
      __codec3.decode(asJsObject(this)['temperatureUnit']);
  void set windSpeedUnit(WindSpeedUnit _windSpeedUnit) {
    asJsObject(this)['windSpeedUnit'] = __codec4.encode(_windSpeedUnit);
  }

  WindSpeedUnit get windSpeedUnit =>
      __codec4.decode(asJsObject(this)['windSpeedUnit']);
}

@GeneratedFrom(_WeatherConditions)
@anonymous
class WeatherConditions extends JsInterface {
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

@GeneratedFrom(_WeatherForecast)
@anonymous
class WeatherForecast extends JsInterface {
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

/// codec for google_maps.src.GMap
final __codec0 = new JsInterfaceCodec<GMap>((o) => new GMap.created(o));

/// codec for google_maps.src.weather.WeatherLayerOptions
final __codec1 = new JsInterfaceCodec<WeatherLayerOptions>(
    (o) => new WeatherLayerOptions.created(o));

/// codec for google_maps.src.weather.LabelColor
final __codec2 = new BiMapCodec<LabelColor, dynamic>(
    new Map<LabelColor, dynamic>.fromIterable(LabelColor.values, value: asJs));

/// codec for google_maps.src.weather.TemperatureUnit
final __codec3 = new BiMapCodec<TemperatureUnit, dynamic>(
    new Map<TemperatureUnit, dynamic>.fromIterable(TemperatureUnit.values,
        value: asJs));

/// codec for google_maps.src.weather.WindSpeedUnit
final __codec4 = new BiMapCodec<WindSpeedUnit, dynamic>(
    new Map<WindSpeedUnit, dynamic>.fromIterable(WindSpeedUnit.values,
        value: asJs));

/// codec for google_maps.src.weather.WeatherFeature
final __codec5 =
    new JsInterfaceCodec<WeatherFeature>((o) => new WeatherFeature.created(o));

/// codec for google_maps.src.LatLng
final __codec6 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for google_maps.src.Size
final __codec7 = new JsInterfaceCodec<Size>((o) => new Size.created(o));

/// codec for google_maps.src.weather.WeatherConditions
final __codec8 = new JsInterfaceCodec<WeatherConditions>(
    (o) => new WeatherConditions.created(o));

/// codec for google_maps.src.weather.WeatherForecast
final __codec9 = new JsInterfaceCodec<WeatherForecast>(
    (o) => new WeatherForecast.created(o));

/// codec for dart.core.List<WeatherForecast>
final __codec10 = new JsListCodec<WeatherForecast>(__codec9);
