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

class WeatherFeature extends jsw.TypedProxy {
  static WeatherFeature cast(js.Proxy proxy) => proxy == null ? null : new WeatherFeature.fromProxy(proxy);

  WeatherFeature() : super();
  WeatherFeature.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  WeatherConditions get current => WeatherConditions.cast($unsafe['current']);
  List<WeatherForecast> get forecast => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['forecast'], WeatherForecast.cast);
  String get location => $unsafe['location'];
  TemperatureUnit get temperatureUnit => TemperatureUnit.find($unsafe['temperatureUnit']);
  WindSpeedUnit get windSpeedUnit => WindSpeedUnit.find($unsafe['windSpeedUnit']);
  set current(WeatherConditions current) => $unsafe['current'] = current;
  set forecast(List<WeatherForecast> forecast) => $unsafe['forecast'] = jsifyList(forecast);
  set location(String location) => $unsafe['location'] = location;
  set temperatureUnit(TemperatureUnit temperatureUnit) => $unsafe['temperatureUnit'] = temperatureUnit;
  set windSpeedUnit(WindSpeedUnit windSpeedUnit) => $unsafe['windSpeedUnit'] = windSpeedUnit;
}