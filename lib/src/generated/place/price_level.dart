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

part of '../place.dart';

@JS('google.maps.places.PriceLevel')
extension type PriceLevel._(JSAny _) implements JSAny {
  external static PriceLevel get EXPENSIVE;
  external static PriceLevel get FREE;
  external static PriceLevel get INEXPENSIVE;
  external static PriceLevel get MODERATE;
  external static PriceLevel get VERY_EXPENSIVE;
}
