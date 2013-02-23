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

class Time extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new Time.fromJsProxy(jsProxy);

  Time() : super();
  Time.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get text => $.text.value;
  String get timeZone => $.time_zone.value;
  DateTime get value => $.value.map(jsw.JsDate.INSTANCIATOR).value;
}