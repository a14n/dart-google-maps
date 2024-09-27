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

part of '../place.dart';

@JS('google.maps.places.FuelType')
extension type FuelType._(JSAny _) implements JSAny {
  external static FuelType get BIO_DIESEL;
  external static FuelType get DIESEL;
  external static FuelType get E80;
  external static FuelType get E85;
  external static FuelType get LPG;
  external static FuelType get METHANE;
  external static FuelType get MIDGRADE;
  external static FuelType get PREMIUM;
  external static FuelType get REGULAR_UNLEADED;
  external static FuelType get SP100;
  external static FuelType get SP91;
  external static FuelType get SP91_E10;
  external static FuelType get SP92;
  external static FuelType get SP95;
  external static FuelType get SP95_E10;
  external static FuelType get SP98;
  external static FuelType get SP99;
  external static FuelType get TRUCK_DIESEL;
}
