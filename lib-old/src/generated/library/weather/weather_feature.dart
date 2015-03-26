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

part of google_maps_weather;

class WeatherFeature extends jsw.TypedJsObject {
  static WeatherFeature $wrap(js.JsObject jsObject) => jsObject == null ? null : new WeatherFeature.fromJsObject(jsObject);
  WeatherFeature.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  WeatherFeature()
      : super();

  set current(WeatherConditions current) => $unsafe['current'] = current == null ? null : current.$unsafe;
  WeatherConditions get current => WeatherConditions.$wrap($unsafe['current']);
  set forecast(List<WeatherForecast> forecast) => $unsafe['forecast'] = jsw.jsify(forecast);
  List<WeatherForecast> get forecast => jsw.TypedJsArray.$wrapSerializables($unsafe['forecast'], WeatherForecast.$wrap);
  set location(String location) => $unsafe['location'] = location;
  String get location => $unsafe['location'];
  set temperatureUnit(TemperatureUnit temperatureUnit) => $unsafe['temperatureUnit'] = temperatureUnit == null ? null : temperatureUnit.$unsafe;
  TemperatureUnit get temperatureUnit => TemperatureUnit.$wrap($unsafe['temperatureUnit']);
  set windSpeedUnit(WindSpeedUnit windSpeedUnit) => $unsafe['windSpeedUnit'] = windSpeedUnit == null ? null : windSpeedUnit.$unsafe;
  WindSpeedUnit get windSpeedUnit => WindSpeedUnit.$wrap($unsafe['windSpeedUnit']);
}
