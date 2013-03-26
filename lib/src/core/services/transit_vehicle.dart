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

class TransitVehicle extends jsw.TypedProxy {
  static TransitVehicle cast(js.Proxy proxy) => proxy == null ? null : new TransitVehicle.fromProxy(proxy);

  TransitVehicle() : super();
  TransitVehicle.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get icon => $unsafe.icon;
  String get localIcon => $unsafe.local_icon;
  String get name => $unsafe.name;
  VehicleType get type => VehicleType.find($unsafe.type);
  set icon(String icon) => $unsafe.icon = icon;
  set localIcon(String localIcon) => $unsafe.local_icon = localIcon;
  set name(String name) => $unsafe.name = name;
  set type(VehicleType type) => $unsafe.type = type;
}