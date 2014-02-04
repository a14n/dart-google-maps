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

class TransitLine extends jsw.TypedJsObject {
  static TransitLine $wrap(js.JsObject jsObject) => jsObject == null ? null : new TransitLine.fromJsObject(jsObject);
  TransitLine.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  TransitLine();

  set agencies(List<TransitAgency> agencies) => $unsafe['agencies'] = jsw.jsify(agencies);
  List<TransitAgency> get agencies => jsw.TypedJsArray.$wrapSerializables($unsafe['agencies'], TransitAgency.$wrap);
  set color(String color) => $unsafe['color'] = color;
  String get color => $unsafe['color'];
  set icon(String icon) => $unsafe['icon'] = icon;
  String get icon => $unsafe['icon'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set shortName(String shortName) => $unsafe['short_name'] = shortName;
  String get shortName => $unsafe['short_name'];
  set textColor(String textColor) => $unsafe['text_color'] = textColor;
  String get textColor => $unsafe['text_color'];
  set url(String url) => $unsafe['url'] = url;
  String get url => $unsafe['url'];
  set vehicle(TransitVehicle vehicle) => $unsafe['vehicle'] = vehicle == null ? null : vehicle.$unsafe;
  TransitVehicle get vehicle => TransitVehicle.$wrap($unsafe['vehicle']);
}
