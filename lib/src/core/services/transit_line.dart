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

class TransitLine extends jsw.TypedProxy {
  static TransitLine cast(js.Proxy proxy) => proxy == null ? null : new TransitLine.fromProxy(proxy);

  TransitLine() : super();
  TransitLine.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  List<TransitAgency> get agencies => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.agencies, TransitAgency.cast);
  String get color => $unsafe.color;
  String get icon => $unsafe.icon;
  String get name => $unsafe.name;
  String get shortName => $unsafe.short_name;
  String get textColor => $unsafe.text_color;
  String get url => $unsafe.url;
  TransitVehicle get vehicle => TransitVehicle.cast($unsafe.vehicle);
  set agencies(List<TransitAgency> agencies) => $unsafe.agencies = jsifyList(agencies);
  set color(String color) => $unsafe.color = color;
  set icon(String icon) => $unsafe.icon = icon;
  set name(String name) => $unsafe.name = name;
  set shortName(String shortName) => $unsafe.short_name = shortName;
  set textColor(String textColor) => $unsafe.text_color = textColor;
  set url(String url) => $unsafe.url = url;
  set vehicle(TransitVehicle vehicle) => $unsafe.vehicle = vehicle;
}