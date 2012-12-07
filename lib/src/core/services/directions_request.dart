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

class DirectionsRequest extends jsw.IsJsProxy {
  set avoidHighways(bool avoidHighways) => $.avoidHighways = avoidHighways;
  set avoidTolls(bool avoidTolls) => $.avoidTolls = avoidTolls;
  set destination(Object destination) {
    if (destination is String || destination is LatLng) {
      $.destination = destination;
    } else {
      throw new UnsupportedError("Parameter must be of type String or LatLng");
    }
  }
  set optimizeWaypoints(bool optimizeWaypoints) => $.optimizeWaypoints = optimizeWaypoints;
  set origin(Object origin) {
    if (origin is String || origin is LatLng) {
      $.origin = origin;
    } else {
      throw new UnsupportedError("Parameter must be of type String or LatLng");
    }
  }
  set provideRouteAlternatives(bool provideRouteAlternatives) => $.provideRouteAlternatives = provideRouteAlternatives;
  set region(String region) => $.region = region;
  set transitOptions(TransitOptions transitOptions) => $.transitOptions = transitOptions;
  set travelMode(TravelMode travelMode) => $.travelMode = travelMode;
  set unitSystem(UnitSystem unitSystem) => $.unitSystem = unitSystem;
  set waypoints(List<DirectionsWaypoint> waypoints) => $.waypoints = waypoints;
}