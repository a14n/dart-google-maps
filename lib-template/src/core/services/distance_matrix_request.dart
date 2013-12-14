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
  DistanceMatrixRequest();

  bool avoidHighways;
  bool avoidTolls;
  List/*Array.<LatLng>|Array.<string>*/ get destinations => jsw.TypedJsArray.$wrap($unsafe['destinations'], wrap: (e) => LatLng.isInstance(e) ? LatLng.$wrap(e) : e, unwrap: jsw.mayUnwrap);
  set destinations(List/*Array.<LatLng>|Array.<string>*/ destinations);
  List/*Array.<LatLng>|Array.<string>*/ get origins => jsw.TypedJsArray.$wrap($unsafe['origins'], wrap: (e) => LatLng.isInstance(e) ? LatLng.$wrap(e) : e, unwrap: jsw.mayUnwrap);
  set origins(List/*Array.<LatLng>|Array.<string>*/ origins);
  String region;
  TravelMode travelMode;
  UnitSystem unitSystem;
}