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

class WeatherForecast extends jsw.TypedJsObject {
  static WeatherForecast $wrap(js.JsObject jsObject) => jsObject == null ? null : new WeatherForecast.fromJsObject(jsObject);
  WeatherForecast.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  WeatherForecast()
      : super();

  set day(String day) => $unsafe['day'] = day;
  String get day => $unsafe['day'];
  set description(String description) => $unsafe['description'] = description;
  String get description => $unsafe['description'];
  set high(num high) => $unsafe['high'] = high;
  num get high => $unsafe['high'];
  set low(num low) => $unsafe['low'] = low;
  num get low => $unsafe['low'];
  set shortDay(String shortDay) => $unsafe['shortDay'] = shortDay;
  String get shortDay => $unsafe['shortDay'];
}
