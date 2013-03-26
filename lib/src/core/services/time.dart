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

part of google_maps;

class Time extends jsw.TypedProxy {
  static Time cast(js.Proxy proxy) => proxy == null ? null : new Time.fromProxy(proxy);

  Time() : super();
  Time.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get text => $unsafe.text;
  String get timeZone => $unsafe.time_zone;
  DateTime get value => jsw.JsDateToDateTimeAdapter.cast($unsafe.value);
  set samples(String text) => $unsafe.text = text;
  set timeZone(String timeZone) => $unsafe.time_zone = timeZone;
  set value(DateTime value) => $unsafe.value = jsifyDateTime(value);
}