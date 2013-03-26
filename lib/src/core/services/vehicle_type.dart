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

class VehicleType extends IsEnum<String> {
  static final BUS = new VehicleType._("BUS");
  static final CABLE_CAR = new VehicleType._("CABLE_CAR");
  static final COMMUTER_TRAIN = new VehicleType._("COMMUTER_TRAIN");
  static final FERRY = new VehicleType._("FERRY");
  static final FUNICULAR = new VehicleType._("FUNICULAR");
  static final GONDOLA_LIFT = new VehicleType._("GONDOLA_LIFT");
  static final HEAVY_RAIL = new VehicleType._("HEAVY_RAIL");
  static final HIGH_SPEED_TRAIN = new VehicleType._("HIGH_SPEED_TRAIN");
  static final INTERCITY_BUS = new VehicleType._("INTERCITY_BUS");
  static final METRO_RAIL = new VehicleType._("METRO_RAIL");
  static final MONORAIL = new VehicleType._("MONORAIL");
  static final OTHER = new VehicleType._("OTHER");
  static final RAIL = new VehicleType._("RAIL");
  static final SHARE_TAXI = new VehicleType._("SHARE_TAXI");
  static final SUBWAY = new VehicleType._("SUBWAY");
  static final TRAM = new VehicleType._("TRAM");
  static final TROLLEYBUS = new VehicleType._("TROLLEYBUS");

  static final _INSTANCES = [BUS, CABLE_CAR, COMMUTER_TRAIN, FERRY, FUNICULAR, GONDOLA_LIFT, HEAVY_RAIL, HIGH_SPEED_TRAIN, INTERCITY_BUS, METRO_RAIL, MONORAIL, OTHER, RAIL, SHARE_TAXI, SUBWAY, TRAM, TROLLEYBUS];

  static VehicleType find(Object o) => findIn(_INSTANCES, o);

  VehicleType._(String value) : super(value);

  bool operator ==(Object other) => value == (other is VehicleType ? (other as VehicleType).value : other);
}