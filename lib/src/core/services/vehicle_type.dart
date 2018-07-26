// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src;

@jsEnum
class VehicleType extends JsEnum {
  static final values = <VehicleType>[
    BUS,
    CABLE_CAR,
    COMMUTER_TRAIN,
    FERRY,
    FUNICULAR,
    GONDOLA_LIFT,
    HEAVY_RAIL,
    HIGH_SPEED_TRAIN,
    INTERCITY_BUS,
    METRO_RAIL,
    MONORAIL,
    OTHER,
    RAIL,
    SHARE_TAXI,
    SUBWAY,
    TRAM,
    TROLLEYBUS
  ];
  static final BUS = VehicleType._('BUS');
  static final CABLE_CAR = VehicleType._('CABLE_CAR');
  static final COMMUTER_TRAIN = VehicleType._('COMMUTER_TRAIN');
  static final FERRY = VehicleType._('FERRY');
  static final FUNICULAR = VehicleType._('FUNICULAR');
  static final GONDOLA_LIFT = VehicleType._('GONDOLA_LIFT');
  static final HEAVY_RAIL = VehicleType._('HEAVY_RAIL');
  static final HIGH_SPEED_TRAIN = VehicleType._('HIGH_SPEED_TRAIN');
  static final INTERCITY_BUS = VehicleType._('INTERCITY_BUS');
  static final METRO_RAIL = VehicleType._('METRO_RAIL');
  static final MONORAIL = VehicleType._('MONORAIL');
  static final OTHER = VehicleType._('OTHER');
  static final RAIL = VehicleType._('RAIL');
  static final SHARE_TAXI = VehicleType._('SHARE_TAXI');
  static final SUBWAY = VehicleType._('SUBWAY');
  static final TRAM = VehicleType._('TRAM');
  static final TROLLEYBUS = VehicleType._('TROLLEYBUS');
  VehicleType._(o) : super.created(o);
}
