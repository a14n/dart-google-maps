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

class WeatherLayerOptions extends jsw.TypedJsObject {
  static WeatherLayerOptions cast(js.JsObject jsObject) => jsObject == null ? null : new WeatherLayerOptions.fromJsObject(jsObject);
  WeatherLayerOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  WeatherLayerOptions() : super();

  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  bool get clickable => $unsafe['clickable'];
  LabelColor get labelColor => LabelColor.find($unsafe['labelColor']);
  set labelColor(LabelColor labelColor) => $unsafe['labelColor'] = labelColor;
  set map(GMap map) => $unsafe['map'] = map;
  GMap get map => GMap.cast($unsafe['map']);
  set suppressInfoWindows(bool suppressInfoWindows) => $unsafe['suppressInfoWindows'] = suppressInfoWindows;
  bool get suppressInfoWindows => $unsafe['suppressInfoWindows'];
  TemperatureUnit get temperatureUnits => TemperatureUnit.find($unsafe['temperatureUnits']);
  set temperatureUnits(TemperatureUnit temperatureUnits) => $unsafe['temperatureUnits'] = temperatureUnits;
  WindSpeedUnit get windSpeedUnits => WindSpeedUnit.find($unsafe['windSpeedUnits']);
  set windSpeedUnits(WindSpeedUnit windSpeedUnits) => $unsafe['windSpeedUnits'] = windSpeedUnits;
}
