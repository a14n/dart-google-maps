// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-20T20:55:07.754Z

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
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
  }
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherLayer
// **************************************************************************

@JsName('google.maps.weather.WeatherLayer')
class WeatherLayer extends MVCObject implements _WeatherLayer {
  WeatherLayer.created(JsObject o) : super.created(o);
  WeatherLayer([WeatherLayerOptions opts]) : this.created(new JsObject(
          getPath('google.maps.weather.WeatherLayer'),
          [((e) => e == null ? null : asJsObject(e))(opts)]));

  GMap get map => _getMap();
  GMap _getMap() => ((e) => e == null ? null : new GMap.created(e))(
      asJsObject(this).callMethod('getMap'));
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map) {
    asJsObject(this).callMethod(
        'setMap', [((e) => e == null ? null : asJsObject(e))(map)]);
  }
  void set options(WeatherLayerOptions options) => _setOptions(options);
  void _setOptions(WeatherLayerOptions options) {
    asJsObject(this).callMethod(
        'setOptions', [((e) => e == null ? null : asJsObject(e))(options)]);
  }

  Stream<WeatherMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new WeatherMouseEvent.created(o));
}

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
    asJsObject(this)['labelColor'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.weather.LabelColor');
      if (e == LabelColor.BLACK) return path['BLACK'];
      if (e == LabelColor.WHITE) return path['WHITE'];
    })(_labelColor);
  }
  LabelColor get labelColor => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.weather.LabelColor');
    if (e == path['BLACK']) return LabelColor.BLACK;
    if (e == path['WHITE']) return LabelColor.WHITE;
  })(asJsObject(this)['labelColor']);
  void set map(GMap _map) {
    asJsObject(this)['map'] = ((e) => e == null ? null : asJsObject(e))(_map);
  }
  GMap get map =>
      ((e) => e == null ? null : new GMap.created(e))(asJsObject(this)['map']);
  void set suppressInfoWindows(bool _suppressInfoWindows) {
    asJsObject(this)['suppressInfoWindows'] = _suppressInfoWindows;
  }
  bool get suppressInfoWindows => asJsObject(this)['suppressInfoWindows'];
  void set temperatureUnits(TemperatureUnit _temperatureUnits) {
    asJsObject(this)['temperatureUnits'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.weather.TemperatureUnit');
      if (e == TemperatureUnit.CELSIUS) return path['CELSIUS'];
      if (e == TemperatureUnit.FAHRENHEIT) return path['FAHRENHEIT'];
    })(_temperatureUnits);
  }
  TemperatureUnit get temperatureUnits => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.weather.TemperatureUnit');
    if (e == path['CELSIUS']) return TemperatureUnit.CELSIUS;
    if (e == path['FAHRENHEIT']) return TemperatureUnit.FAHRENHEIT;
  })(asJsObject(this)['temperatureUnits']);
  void set windSpeedUnits(WindSpeedUnit _windSpeedUnits) {
    asJsObject(this)['windSpeedUnits'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.weather.WindSpeedUnit');
      if (e == WindSpeedUnit.KILOMETERS_PER_HOUR) return path[
          'KILOMETERS_PER_HOUR'];
      if (e == WindSpeedUnit.METERS_PER_SECOND) return path[
          'METERS_PER_SECOND'];
      if (e == WindSpeedUnit.MILES_PER_HOUR) return path['MILES_PER_HOUR'];
    })(_windSpeedUnits);
  }
  WindSpeedUnit get windSpeedUnits => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.weather.WindSpeedUnit');
    if (e ==
        path['KILOMETERS_PER_HOUR']) return WindSpeedUnit.KILOMETERS_PER_HOUR;
    if (e == path['METERS_PER_SECOND']) return WindSpeedUnit.METERS_PER_SECOND;
    if (e == path['MILES_PER_HOUR']) return WindSpeedUnit.MILES_PER_HOUR;
  })(asJsObject(this)['windSpeedUnits']);
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
    asJsObject(this)['featureDetails'] =
        ((e) => e == null ? null : asJsObject(e))(_featureDetails);
  }
  WeatherFeature get featureDetails => ((e) => e == null
      ? null
      : new WeatherFeature.created(e))(asJsObject(this)['featureDetails']);
  void set infoWindowHtml(String _infoWindowHtml) {
    asJsObject(this)['infoWindowHtml'] = _infoWindowHtml;
  }
  String get infoWindowHtml => asJsObject(this)['infoWindowHtml'];
  void set latLng(LatLng _latLng) {
    asJsObject(this)['latLng'] =
        ((e) => e == null ? null : asJsObject(e))(_latLng);
  }
  LatLng get latLng => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['latLng']);
  void set pixelOffset(Size _pixelOffset) {
    asJsObject(this)['pixelOffset'] =
        ((e) => e == null ? null : asJsObject(e))(_pixelOffset);
  }
  Size get pixelOffset => ((e) => e == null ? null : new Size.created(e))(
      asJsObject(this)['pixelOffset']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _WeatherFeature
// **************************************************************************

@anonymous
class WeatherFeature extends JsInterface implements _WeatherFeature {
  WeatherFeature.created(JsObject o) : super.created(o);
  WeatherFeature() : this.created(new JsObject(context['Object']));

  void set current(WeatherConditions _current) {
    asJsObject(this)['current'] =
        ((e) => e == null ? null : asJsObject(e))(_current);
  }
  WeatherConditions get current => ((e) => e == null
      ? null
      : new WeatherConditions.created(e))(asJsObject(this)['current']);
  void set forecast(List<WeatherForecast> _forecast) {
    asJsObject(this)['forecast'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_forecast);
  }
  List<WeatherForecast> get forecast => ((e) {
    if (e == null) return null;
    return new JsList<WeatherForecast>.created(e,
        new JsInterfaceCodec<WeatherForecast>((o) =>
            ((e) => e == null ? null : new WeatherForecast.created(e))(o)));
  })(asJsObject(this)['forecast']);
  void set location(String _location) {
    asJsObject(this)['location'] = _location;
  }
  String get location => asJsObject(this)['location'];
  void set temperatureUnit(TemperatureUnit _temperatureUnit) {
    asJsObject(this)['temperatureUnit'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.weather.TemperatureUnit');
      if (e == TemperatureUnit.CELSIUS) return path['CELSIUS'];
      if (e == TemperatureUnit.FAHRENHEIT) return path['FAHRENHEIT'];
    })(_temperatureUnit);
  }
  TemperatureUnit get temperatureUnit => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.weather.TemperatureUnit');
    if (e == path['CELSIUS']) return TemperatureUnit.CELSIUS;
    if (e == path['FAHRENHEIT']) return TemperatureUnit.FAHRENHEIT;
  })(asJsObject(this)['temperatureUnit']);
  void set windSpeedUnit(WindSpeedUnit _windSpeedUnit) {
    asJsObject(this)['windSpeedUnit'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.weather.WindSpeedUnit');
      if (e == WindSpeedUnit.KILOMETERS_PER_HOUR) return path[
          'KILOMETERS_PER_HOUR'];
      if (e == WindSpeedUnit.METERS_PER_SECOND) return path[
          'METERS_PER_SECOND'];
      if (e == WindSpeedUnit.MILES_PER_HOUR) return path['MILES_PER_HOUR'];
    })(_windSpeedUnit);
  }
  WindSpeedUnit get windSpeedUnit => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.weather.WindSpeedUnit');
    if (e ==
        path['KILOMETERS_PER_HOUR']) return WindSpeedUnit.KILOMETERS_PER_HOUR;
    if (e == path['METERS_PER_SECOND']) return WindSpeedUnit.METERS_PER_SECOND;
    if (e == path['MILES_PER_HOUR']) return WindSpeedUnit.MILES_PER_HOUR;
  })(asJsObject(this)['windSpeedUnit']);
}

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
