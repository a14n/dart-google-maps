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

class DirectionsRequest extends jsw.TypedJsObject {
  static DirectionsRequest cast(js.JsObject jsObject) => jsObject == null ? null : new DirectionsRequest.fromJsObject(jsObject);
  DirectionsRequest.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DirectionsRequest() : super();

  set avoidHighways(bool avoidHighways) => $unsafe['avoidHighways'] = avoidHighways;
  bool get avoidHighways => $unsafe['avoidHighways'];
  set avoidTolls(bool avoidTolls) => $unsafe['avoidTolls'] = avoidTolls;
  bool get avoidTolls => $unsafe['avoidTolls'];
  dynamic /*LatLng|string*/ get destination {
    final result = $unsafe['destination'];
    if (LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  set destination(dynamic destination) => $unsafe['destination'] = destination;
  set durationInTraffic(bool durationInTraffic) => $unsafe['durationInTraffic'] = durationInTraffic;
  bool get durationInTraffic => $unsafe['durationInTraffic'];
  set optimizeWaypoints(bool optimizeWaypoints) => $unsafe['optimizeWaypoints'] = optimizeWaypoints;
  bool get optimizeWaypoints => $unsafe['optimizeWaypoints'];
  dynamic /*LatLng|string*/ get origin {
    final result = $unsafe['origin'];
    if (LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  set origin(dynamic origin) => $unsafe['origin'] = origin;
  set provideRouteAlternatives(bool provideRouteAlternatives) => $unsafe['provideRouteAlternatives'] = provideRouteAlternatives;
  bool get provideRouteAlternatives => $unsafe['provideRouteAlternatives'];
  set region(String region) => $unsafe['region'] = region;
  String get region => $unsafe['region'];
  set transitOptions(TransitOptions transitOptions) => $unsafe['transitOptions'] = transitOptions;
  TransitOptions get transitOptions => TransitOptions.cast($unsafe['transitOptions']);
  set travelMode(TravelMode travelMode) => $unsafe['travelMode'] = travelMode;
  TravelMode get travelMode => TravelMode.find($unsafe['travelMode']);
  set unitSystem(UnitSystem unitSystem) => $unsafe['unitSystem'] = unitSystem;
  UnitSystem get unitSystem => UnitSystem.find($unsafe['unitSystem']);
  set waypoints(List<DirectionsWaypoint> waypoints) => $unsafe['waypoints'] = waypoints == null ? null : waypoints is js.Serializable ? waypoints : js.jsify(waypoints);
  List<DirectionsWaypoint> get waypoints => jsw.TypedJsArray.castListOfSerializables($unsafe['waypoints'], DirectionsWaypoint.cast);
}
