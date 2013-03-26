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

class DirectionsRequest extends jsw.TypedProxy {
  static DirectionsRequest cast(js.Proxy proxy) => proxy == null ? null : new DirectionsRequest.fromProxy(proxy);

  DirectionsRequest() : super();
  DirectionsRequest.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool get avoidHighways => $unsafe.avoidHighways;
  bool get avoidTolls => $unsafe.avoidTolls;
  dynamic/*LatLng|string*/ get destination {
    final result = $unsafe.destination;
    if(LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  bool get durationInTraffic => $unsafe.durationInTraffic;
  bool get optimizeWaypoints => $unsafe.optimizeWaypoints;
  dynamic/*LatLng|string*/ get origin {
    final result = $unsafe.origin;
    if(LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  bool get provideRouteAlternatives => $unsafe.provideRouteAlternatives;
  String get region => $unsafe.region;
  TransitOptions get transitOptions => TransitOptions.cast($unsafe.transitOptions);
  TravelMode get travelMode => TravelMode.find($unsafe.travelMode);
  UnitSystem get unitSystem => UnitSystem.find($unsafe.unitSystem);
  List<DirectionsWaypoint> get waypoints => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.waypoints, DirectionsWaypoint.cast);
  set avoidHighways(bool avoidHighways) => $unsafe.avoidHighways = avoidHighways;
  set avoidTolls(bool avoidTolls) => $unsafe.avoidTolls = avoidTolls;
  set destination(dynamic/*LatLng|string*/ destination) => $unsafe.destination = destination;
  set durationInTraffic(bool durationInTraffic) => $unsafe.durationInTraffic = durationInTraffic;
  set optimizeWaypoints(bool optimizeWaypoints) => $unsafe.optimizeWaypoints = optimizeWaypoints;
  set origin(dynamic/*LatLng|string*/ origin) => $unsafe.origin = origin;
  set provideRouteAlternatives(bool provideRouteAlternatives) => $unsafe.provideRouteAlternatives = provideRouteAlternatives;
  set region(String region) => $unsafe.region = region;
  set transitOptions(TransitOptions transitOptions) => $unsafe.transitOptions = transitOptions;
  set travelMode(TravelMode travelMode) => $unsafe.travelMode = travelMode;
  set unitSystem(UnitSystem unitSystem) => $unsafe.unitSystem = unitSystem;
  set waypoints(List<DirectionsWaypoint> waypoints) => $unsafe.waypoints = jsifyList(waypoints);
}