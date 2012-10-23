// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library google_maps_weather;

import 'package:js/js.dart' as js;
import 'js_wrap.dart' as jsw;
import 'google_maps.dart';

class CloudLayer extends MVCObject {
  CloudLayer() : super.newInstance(maps.weather.CloudLayer);
  CloudLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  set map(GMap map) => $.setMap(map);
}

class WeatherLayer extends MVCObject {
  WeatherLayer([WeatherLayerOptions opts]) : super.newInstance(maps.weather.WeatherLayer, [opts]);
  WeatherLayer.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  set map(GMap map) => $.setMap(map);
  set options(WeatherLayerOptions options) => $.setOptions(options);

  WeatherLayerEvents get on => new WeatherLayerEvents._(this);
}

class WeatherLayerEvents {
  final WeatherLayer _weatherLayer;

  WeatherLayerEvents._(WeatherLayer this._weatherLayer);

  WeatherMouseEventListenerAdder get click => new WeatherMouseEventListenerAdder(_weatherLayer, "click");
}

class WeatherLayerOptions extends jsw.IsJsProxy {
  set clickable(bool clickable) => $.clickable = clickable;
  set labelColor(LabelColor labelColor) => $.labelColor = labelColor;
  set map(GMap map) => $.map = map;
  set suppressInfoWindows(bool suppressInfoWindows) => $.suppressInfoWindows = suppressInfoWindows;
  set temperatureUnits(TemperatureUnit temperatureUnits) => $.temperatureUnits = temperatureUnits;
  set windSpeedUnits(WindSpeedUnit windSpeedUnits) => $.windSpeedUnits = windSpeedUnits;
}

class TemperatureUnit extends jsw.IsEnum<String> {
  static final CELSIUS = new TemperatureUnit._(maps.weather.TemperatureUnit.CELSIUS);
  static final FAHRENHEIT = new TemperatureUnit._(maps.weather.TemperatureUnit.FAHRENHEIT);

  static final _INSTANCES = [CELSIUS, FAHRENHEIT];

  static TemperatureUnit find(Object o) => findIn(_INSTANCES, o);

  TemperatureUnit._(String value) : super(value);

  bool operator ==(Object other) => value == (other is TemperatureUnit ? (other as TemperatureUnit).value : other);
}

class WindSpeedUnit extends jsw.IsEnum<String> {
  static final KILOMETERS_PER_HOUR = new WindSpeedUnit._(maps.weather.WindSpeedUnit.KILOMETERS_PER_HOUR);
  static final METERS_PER_SECOND = new WindSpeedUnit._(maps.weather.WindSpeedUnit.METERS_PER_SECOND);
  static final MILES_PER_HOUR = new WindSpeedUnit._(maps.weather.WindSpeedUnit.MILES_PER_HOUR);

  static final _INSTANCES = [KILOMETERS_PER_HOUR, METERS_PER_SECOND, MILES_PER_HOUR];

  static WindSpeedUnit find(Object o) => findIn(_INSTANCES, o);

  WindSpeedUnit._(String value) : super(value);

  bool operator ==(Object other) => value == (other is WindSpeedUnit ? (other as WindSpeedUnit).value : other);
}

class LabelColor extends jsw.IsEnum<String> {
  static final BLACK = new LabelColor._(maps.weather.LabelColor.BLACK);
  static final WHITE = new LabelColor._(maps.weather.LabelColor.WHITE);

  static final _INSTANCES = [BLACK, WHITE];

  static LabelColor find(Object o) => findIn(_INSTANCES, o);

  LabelColor._(String value) : super(value);

  bool operator ==(Object other) => value == (other is LabelColor ? (other as LabelColor).value : other);
}

class WeatherMouseEvent extends jsw.IsJsProxy {
  WeatherMouseEvent();
  WeatherMouseEvent.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  WeatherFeature get featureDetails => $.getProperty("featureDetails", WeatherFeature.INSTANCIATOR);
  String get infoWindowHtml => $["infoWindowHtml"];
  LatLng get latLng => $.getProperty("latLng", LatLng.INSTANCIATOR);
  Size get pixelOffset => $.getProperty("pixelOffset", Size.INSTANCIATOR);
}

class WeatherFeature extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new WeatherFeature.fromJsProxy(jsProxy);

  WeatherFeature.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  WeatherConditions get current => $.current.map(WeatherConditions.INSTANCIATOR).value;
  List<WeatherForecast> get forecast => $.forecast.map((js.Proxy jsProxy) => new js.JsList<WeatherForecast>.fromJsProxy(jsProxy, WeatherForecast.INSTANCIATOR)).value;
  String get location => $.location.value;
  TemperatureUnit get temperatureUnit => $.temperatureUnit.map(TemperatureUnit.find).value;
  WindSpeedUnit get windSpeedUnit => $.windSpeedUnit.map(WindSpeedUnit.find).value;
}

class WeatherConditions extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new WeatherConditions.fromJsProxy(jsProxy);

  WeatherConditions.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get day => $.day.value;
  String get description => $.description.value;
  num get high => $.high.value;
  num get humidity => $.humidity.value;
  num get low => $.low.value;
  String get shortDay => $.shortDay.value;
  num get temperature => $.temperature.value;
  String get windDirection => $.windDirection.value;
  num get windSpeed => $.windSpeed.value;
}

class WeatherForecast extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new WeatherForecast.fromJsProxy(jsProxy);

  WeatherForecast.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get day => $.day.value;
  String get description => $.description.value;
  num get high => $.high.value;
  num get low => $.low.value;
  String get shortDay => $.shortDay.value;
}

class WeatherMouseEventListenerAdder extends EventListenerAdder {
  WeatherMouseEventListenerAdder(jsw.IsJsProxy _instance, String _eventName) : super(_instance, _eventName);

  void add(void handler(WeatherMouseEvent e)) { super.add((e) => handler(e.map((e) => new WeatherMouseEvent.fromJsProxy(e)).value)); }
  MapsEventListenerRegistration addTemporary(void handler(WeatherMouseEvent e)) => super.addTemporary((e) => handler(e.map((e) => new WeatherMouseEvent.fromJsProxy(e)).value));
}
