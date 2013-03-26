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

class DistanceMatrixRequest extends jsw.TypedProxy {
  static DistanceMatrixRequest cast(js.Proxy proxy) => proxy == null ? null : new DistanceMatrixRequest.fromProxy(proxy);

  DistanceMatrixRequest() : super();
  DistanceMatrixRequest.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool get avoidHighways => $unsafe.avoidHighways;
  bool get avoidTolls => $unsafe.avoidTolls;
  List/*Array.<LatLng>|Array.<string>*/ get destinations => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.destinations, (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  List/*Array.<LatLng>|Array.<string>*/ get origins => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.origins, (e) => LatLng.isInstance(e) ? LatLng.cast(e) : e);
  String get region => $unsafe.region;
  TravelMode get travelMode => TravelMode.find($unsafe.travelMode);
  UnitSystem get unitSystem => UnitSystem.find($unsafe.unitSystem);
  set avoidHighways(bool avoidHighways) => $unsafe.avoidHighways = avoidHighways;
  set avoidTolls(bool avoidTolls) => $unsafe.avoidTolls = avoidTolls;
  set destinations(List/*Array.<LatLng>|Array.<string>*/ destinations) => $unsafe.destinations = jsifyList(destinations);
  set origins(List/*Array.<LatLng>|Array.<string>*/ origins) => $unsafe.origins = jsifyList(origins);
  set region(String region) => $unsafe.region = region;
  set travelMode(TravelMode travelMode) => $unsafe.travelMode = travelMode;
  set unitSystem(UnitSystem unitSystem) => $unsafe.unitSystem = unitSystem;
}