// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../directions.dart';

@JS('google.maps.VehicleType')
extension type VehicleType._(JSAny _) implements JSAny {
  external static VehicleType get BUS;
  external static VehicleType get CABLE_CAR;
  external static VehicleType get COMMUTER_TRAIN;
  external static VehicleType get FERRY;
  external static VehicleType get FUNICULAR;
  external static VehicleType get GONDOLA_LIFT;
  external static VehicleType get HEAVY_RAIL;
  external static VehicleType get HIGH_SPEED_TRAIN;
  external static VehicleType get INTERCITY_BUS;
  external static VehicleType get METRO_RAIL;
  external static VehicleType get MONORAIL;
  external static VehicleType get OTHER;
  external static VehicleType get RAIL;
  external static VehicleType get SHARE_TAXI;
  external static VehicleType get SUBWAY;
  external static VehicleType get TRAM;
  external static VehicleType get TROLLEYBUS;
}
