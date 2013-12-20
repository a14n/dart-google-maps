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

class TransitVehicle extends jsw.TypedJsObject {
  static TransitVehicle $wrap(js.JsObject jsObject) => jsObject == null ? null : new TransitVehicle.fromJsObject(jsObject);
  TransitVehicle.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  TransitVehicle();

  set icon(String icon) => $unsafe['icon'] = icon;
  String get icon => $unsafe['icon'];
  set localIcon(String localIcon) => $unsafe['localIcon'] = localIcon;
  String get localIcon => $unsafe['localIcon'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set type(VehicleType type) => $unsafe['type'] = type == null ? null : type.$unsafe;
  VehicleType get type => VehicleType.$wrap($unsafe['type']);
}
