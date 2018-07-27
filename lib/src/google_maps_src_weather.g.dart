// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.weather;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_CloudLayer)
@JsName('google.maps.weather.CloudLayer')
class CloudLayer extends MVCObject {
  CloudLayer()
      : this.created(
            JsObject(context['google']['maps']['weather']['CloudLayer']));
  CloudLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec0.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec0.encode(map)]);
  }
}

class LabelColor extends JsEnum {
  static final values = <LabelColor>[BLACK, WHITE];
  static final BLACK = LabelColor._(
      'BLACK', context['google']['maps']['weather']['LabelColor']['BLACK']);
  static final WHITE = LabelColor._(
      'WHITE', context['google']['maps']['weather']['LabelColor']['WHITE']);
  final String _name;
  LabelColor._(this._name, o) : super.created(o);

  @override
  String toString() => 'LabelColor.$_name';

  // dumb code to remove analyzer hint for unused _LabelColor
  _LabelColor _dumbMethod1() => _dumbMethod2();
  _LabelColor _dumbMethod2() => _dumbMethod1();
}

class TemperatureUnit extends JsEnum {
  static final values = <TemperatureUnit>[CELSIUS, FAHRENHEIT];
  static final CELSIUS = TemperatureUnit._('CELSIUS',
      context['google']['maps']['weather']['TemperatureUnit']['CELSIUS']);
  static final FAHRENHEIT = TemperatureUnit._('FAHRENHEIT',
      context['google']['maps']['weather']['TemperatureUnit']['FAHRENHEIT']);
  final String _name;
  TemperatureUnit._(this._name, o) : super.created(o);

  @override
  String toString() => 'TemperatureUnit.$_name';

  // dumb code to remove analyzer hint for unused _TemperatureUnit
  _TemperatureUnit _dumbMethod1() => _dumbMethod2();
  _TemperatureUnit _dumbMethod2() => _dumbMethod1();
}

@GeneratedFrom(_WeatherConditions)
@anonymous
class WeatherConditions extends JsInterface {
  WeatherConditions() : this.created(JsObject(context['Object']));
  WeatherConditions.created(JsObject o) : super.created(o);

  set day(String _day) {
    asJsObject(this)['day'] = _day;
  }

  String get day => asJsObject(this)['day'];
  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set high(num _high) {
    asJsObject(this)['high'] = _high;
  }

  num get high => asJsObject(this)['high'];
  set humidity(num _humidity) {
    asJsObject(this)['humidity'] = _humidity;
  }

  num get humidity => asJsObject(this)['humidity'];
  set low(num _low) {
    asJsObject(this)['low'] = _low;
  }

  num get low => asJsObject(this)['low'];
  set shortDay(String _shortDay) {
    asJsObject(this)['shortDay'] = _shortDay;
  }

  String get shortDay => asJsObject(this)['shortDay'];
  set temperature(num _temperature) {
    asJsObject(this)['temperature'] = _temperature;
  }

  num get temperature => asJsObject(this)['temperature'];
  set windDirection(String _windDirection) {
    asJsObject(this)['windDirection'] = _windDirection;
  }

  String get windDirection => asJsObject(this)['windDirection'];
  set windSpeed(num _windSpeed) {
    asJsObject(this)['windSpeed'] = _windSpeed;
  }

  num get windSpeed => asJsObject(this)['windSpeed'];
}

@GeneratedFrom(_WeatherFeature)
@anonymous
class WeatherFeature extends JsInterface {
  WeatherFeature() : this.created(JsObject(context['Object']));
  WeatherFeature.created(JsObject o) : super.created(o);

  set current(WeatherConditions _current) {
    asJsObject(this)['current'] = __codec1.encode(_current);
  }

  WeatherConditions get current => __codec1.decode(asJsObject(this)['current']);
  set forecast(List<WeatherForecast> _forecast) {
    asJsObject(this)['forecast'] = __codec3.encode(_forecast);
  }

  List<WeatherForecast> get forecast =>
      __codec3.decode(asJsObject(this)['forecast']);
  set location(String _location) {
    asJsObject(this)['location'] = _location;
  }

  String get location => asJsObject(this)['location'];
  set temperatureUnit(TemperatureUnit _temperatureUnit) {
    asJsObject(this)['temperatureUnit'] = __codec4.encode(_temperatureUnit);
  }

  TemperatureUnit get temperatureUnit =>
      __codec4.decode(asJsObject(this)['temperatureUnit']);
  set windSpeedUnit(WindSpeedUnit _windSpeedUnit) {
    asJsObject(this)['windSpeedUnit'] = __codec5.encode(_windSpeedUnit);
  }

  WindSpeedUnit get windSpeedUnit =>
      __codec5.decode(asJsObject(this)['windSpeedUnit']);
}

@GeneratedFrom(_WeatherForecast)
@anonymous
class WeatherForecast extends JsInterface {
  WeatherForecast() : this.created(JsObject(context['Object']));
  WeatherForecast.created(JsObject o) : super.created(o);

  set day(String _day) {
    asJsObject(this)['day'] = _day;
  }

  String get day => asJsObject(this)['day'];
  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set high(num _high) {
    asJsObject(this)['high'] = _high;
  }

  num get high => asJsObject(this)['high'];
  set low(num _low) {
    asJsObject(this)['low'] = _low;
  }

  num get low => asJsObject(this)['low'];
  set shortDay(String _shortDay) {
    asJsObject(this)['shortDay'] = _shortDay;
  }

  String get shortDay => asJsObject(this)['shortDay'];
}

@GeneratedFrom(_WeatherLayer)
@JsName('google.maps.weather.WeatherLayer')
class WeatherLayer extends MVCObject {
  WeatherLayer([WeatherLayerOptions opts])
      : this.created(JsObject(
            context['google']['maps']['weather']['WeatherLayer'],
            [__codec6.encode(opts)]));
  WeatherLayer.created(JsObject o) : super.created(o);

  GMap get map => _getMap();
  GMap _getMap() => __codec0.decode(asJsObject(this).callMethod('getMap'));
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod('setMap', [__codec0.encode(map)]);
  }

  set options(WeatherLayerOptions options) => _setOptions(options);
  void _setOptions(WeatherLayerOptions options) {
    asJsObject(this).callMethod('setOptions', [__codec6.encode(options)]);
  }

  Stream<WeatherMouseEvent> get onClick =>
      getStream(this, #onClick, 'click', (o) => WeatherMouseEvent.created(o));
}

@GeneratedFrom(_WeatherLayerOptions)
@anonymous
class WeatherLayerOptions extends JsInterface {
  WeatherLayerOptions() : this.created(JsObject(context['Object']));
  WeatherLayerOptions.created(JsObject o) : super.created(o);

  set clickable(bool _clickable) {
    asJsObject(this)['clickable'] = _clickable;
  }

  bool get clickable => asJsObject(this)['clickable'];
  set labelColor(LabelColor _labelColor) {
    asJsObject(this)['labelColor'] = __codec7.encode(_labelColor);
  }

  LabelColor get labelColor => __codec7.decode(asJsObject(this)['labelColor']);
  set map(GMap _map) {
    asJsObject(this)['map'] = __codec0.encode(_map);
  }

  GMap get map => __codec0.decode(asJsObject(this)['map']);
  set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }

  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  set temperatureUnits(TemperatureUnit _temperatureUnits) {
    asJsObject(this)['temperatureUnits'] = __codec4.encode(_temperatureUnits);
  }

  TemperatureUnit get temperatureUnits =>
      __codec4.decode(asJsObject(this)['temperatureUnits']);
  set windSpeedUnits(WindSpeedUnit _windSpeedUnits) {
    asJsObject(this)['windSpeedUnits'] = __codec5.encode(_windSpeedUnits);
  }

  WindSpeedUnit get windSpeedUnits =>
      __codec5.decode(asJsObject(this)['windSpeedUnits']);
}

@GeneratedFrom(_WeatherMouseEvent)
@anonymous
class WeatherMouseEvent extends JsInterface {
  WeatherMouseEvent() : this.created(JsObject(context['Object']));
  WeatherMouseEvent.created(JsObject o) : super.created(o);

  set featureDetails(WeatherFeature _featureDetails) {
    asJsObject(this)['featureDetails'] = __codec8.encode(_featureDetails);
  }

  WeatherFeature get featureDetails =>
      __codec8.decode(asJsObject(this)['featureDetails']);
  set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }

  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] = __codec9.encode(_latLng);
  }

  LatLng get latLng => __codec9.decode(asJsObject(this)['latLng']);
  set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] = __codec10.encode(_pixelOffset);
  }

  Size get pixelOffset => __codec10.decode(asJsObject(this)['pixelOffset']);
}

class WindSpeedUnit extends JsEnum {
  static final values = <WindSpeedUnit>[
    KILOMETERS_PER_HOUR,
    METERS_PER_SECOND,
    MILES_PER_HOUR
  ];
  static final KILOMETERS_PER_HOUR = WindSpeedUnit._(
      'KILOMETERS_PER_HOUR',
      context['google']['maps']['weather']['WindSpeedUnit']
          ['KILOMETERS_PER_HOUR']);
  static final METERS_PER_SECOND = WindSpeedUnit._(
      'METERS_PER_SECOND',
      context['google']['maps']['weather']['WindSpeedUnit']
          ['METERS_PER_SECOND']);
  static final MILES_PER_HOUR = WindSpeedUnit._('MILES_PER_HOUR',
      context['google']['maps']['weather']['WindSpeedUnit']['MILES_PER_HOUR']);
  final String _name;
  WindSpeedUnit._(this._name, o) : super.created(o);

  @override
  String toString() => 'WindSpeedUnit.$_name';

  // dumb code to remove analyzer hint for unused _WindSpeedUnit
  _WindSpeedUnit _dumbMethod1() => _dumbMethod2();
  _WindSpeedUnit _dumbMethod2() => _dumbMethod1();
}

/// codec for google_maps.src.GMap
final __codec0 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.weather.WeatherConditions
final __codec1 =
    JsInterfaceCodec<WeatherConditions>((o) => WeatherConditions.created(o));

/// codec for google_maps.src.weather.WeatherForecast
final __codec2 =
    JsInterfaceCodec<WeatherForecast>((o) => WeatherForecast.created(o));

/// codec for dart.core.List<WeatherForecast>
final __codec3 = JsListCodec<WeatherForecast>(__codec2);

/// codec for google_maps.src.weather.TemperatureUnit
final __codec4 = BiMapCodec<TemperatureUnit, dynamic>(
    Map<TemperatureUnit, dynamic>.fromIterable(TemperatureUnit.values,
        value: asJs));

/// codec for google_maps.src.weather.WindSpeedUnit
final __codec5 = BiMapCodec<WindSpeedUnit, dynamic>(
    Map<WindSpeedUnit, dynamic>.fromIterable(WindSpeedUnit.values,
        value: asJs));

/// codec for google_maps.src.weather.WeatherLayerOptions
final __codec6 = JsInterfaceCodec<WeatherLayerOptions>(
    (o) => WeatherLayerOptions.created(o));

/// codec for google_maps.src.weather.LabelColor
final __codec7 = BiMapCodec<LabelColor, dynamic>(
    Map<LabelColor, dynamic>.fromIterable(LabelColor.values, value: asJs));

/// codec for google_maps.src.weather.WeatherFeature
final __codec8 =
    JsInterfaceCodec<WeatherFeature>((o) => WeatherFeature.created(o));

/// codec for google_maps.src.LatLng
final __codec9 = JsInterfaceCodec<LatLng>((o) => LatLng.created(o));

/// codec for google_maps.src.Size
final __codec10 = JsInterfaceCodec<Size>((o) => Size.created(o));
