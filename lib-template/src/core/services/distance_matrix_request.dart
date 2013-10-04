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

@wrapper abstract class DistanceMatrixRequest extends jsw.TypedJsObject {
  DistanceMatrixRequest() : super();

  bool avoidHighways;
  bool avoidTolls;
  List/*Array.<LatLng>|Array.<string>*/ get destinations => jsw.TypedJsArray.castListOfSerializables($unsafe['destinations'], (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  set destinations(List/*Array.<LatLng>|Array.<string>*/ destinations);
  List/*Array.<LatLng>|Array.<string>*/ get origins => jsw.TypedJsArray.castListOfSerializables($unsafe['origins'], (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  set origins(List/*Array.<LatLng>|Array.<string>*/ origins);
  String region;
  @isEnum TravelMode travelMode;
  @isEnum UnitSystem unitSystem;
}