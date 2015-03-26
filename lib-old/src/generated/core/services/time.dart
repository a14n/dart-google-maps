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

class Time extends jsw.TypedJsObject {
  static Time $wrap(js.JsObject jsObject) => jsObject == null ? null : new Time.fromJsObject(jsObject);
  Time.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  Time();

  set text(String text) => $unsafe['text'] = text;
  String get text => $unsafe['text'];
  set timeZone(String timeZone) => $unsafe['timeZone'] = timeZone;
  String get timeZone => $unsafe['timeZone'];
  set value(DateTime value) => $unsafe['value'] = value;
  DateTime get value => $unsafe['value'];
}
