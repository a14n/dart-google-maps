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

class DistanceMatrixRequest extends jsw.TypedJsObject {
  static DistanceMatrixRequest cast(js.JsObject jsObject) => jsObject == null ? null : new DistanceMatrixRequest.fromJsObject(jsObject);
  DistanceMatrixRequest.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DistanceMatrixRequest() : super();

  set avoidHighways(bool avoidHighways) => $unsafe['avoidHighways'] = avoidHighways;
  bool get avoidHighways => $unsafe['avoidHighways'];
  set avoidTolls(bool avoidTolls) => $unsafe['avoidTolls'] = avoidTolls;
  bool get avoidTolls => $unsafe['avoidTolls'];
  List /*Array.<LatLng>|Array.<string>*/ get destinations => jsw.TypedJsArray.castListOfSerializables($unsafe['destinations'], (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  set destinations(List destinations) => $unsafe['destinations'] = destinations == null ? null : destinations is js.Serializable ? destinations : js.jsify(destinations);
  List /*Array.<LatLng>|Array.<string>*/ get origins => jsw.TypedJsArray.castListOfSerializables($unsafe['origins'], (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  set origins(List origins) => $unsafe['origins'] = origins == null ? null : origins is js.Serializable ? origins : js.jsify(origins);
  set region(String region) => $unsafe['region'] = region;
  String get region => $unsafe['region'];
  TravelMode get travelMode => TravelMode.find($unsafe['travelMode']);
  set travelMode(TravelMode travelMode) => $unsafe['travelMode'] = travelMode;
  UnitSystem get unitSystem => UnitSystem.find($unsafe['unitSystem']);
  set unitSystem(UnitSystem unitSystem) => $unsafe['unitSystem'] = unitSystem;
}
