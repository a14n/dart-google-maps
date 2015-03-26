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
  static DistanceMatrixRequest $wrap(js.JsObject jsObject) => jsObject == null ? null : new DistanceMatrixRequest.fromJsObject(jsObject);
  DistanceMatrixRequest.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DistanceMatrixRequest();

  set avoidHighways(bool avoidHighways) => $unsafe['avoidHighways'] = avoidHighways;
  bool get avoidHighways => $unsafe['avoidHighways'];
  set avoidTolls(bool avoidTolls) => $unsafe['avoidTolls'] = avoidTolls;
  bool get avoidTolls => $unsafe['avoidTolls'];
  List /*Array.<LatLng>|Array.<string>*/ get destinations => jsw.TypedJsArray.$wrap($unsafe['destinations'], wrap: (e) => LatLng.isInstance(e) ? LatLng.$wrap(e) : e, unwrap: jsw.mayUnwrap);
  set destinations(List destinations) => $unsafe['destinations'] = jsw.jsify(destinations);
  List /*Array.<LatLng>|Array.<string>*/ get origins => jsw.TypedJsArray.$wrap($unsafe['origins'], wrap: (e) => LatLng.isInstance(e) ? LatLng.$wrap(e) : e, unwrap: jsw.mayUnwrap);
  set origins(List origins) => $unsafe['origins'] = jsw.jsify(origins);
  set region(String region) => $unsafe['region'] = region;
  String get region => $unsafe['region'];
  set travelMode(TravelMode travelMode) => $unsafe['travelMode'] = travelMode == null ? null : travelMode.$unsafe;
  TravelMode get travelMode => TravelMode.$wrap($unsafe['travelMode']);
  set unitSystem(UnitSystem unitSystem) => $unsafe['unitSystem'] = unitSystem == null ? null : unitSystem.$unsafe;
  UnitSystem get unitSystem => UnitSystem.$wrap($unsafe['unitSystem']);
}
