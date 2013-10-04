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

@wrapper abstract class DirectionsRequest extends jsw.TypedJsObject {
  DirectionsRequest() : super();

  bool avoidHighways;
  bool avoidTolls;
  dynamic/*LatLng|string*/ get destination {
    final result = $unsafe['destination'];
    if(LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  set destination(dynamic/*LatLng|string*/ destination);
  bool durationInTraffic;
  bool optimizeWaypoints;
  dynamic/*LatLng|string*/ get origin {
    final result = $unsafe['origin'];
    if(LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  set origin(dynamic/*LatLng|string*/ origin);
  bool provideRouteAlternatives;
  String region;
  TransitOptions transitOptions;
  @isEnum TravelMode travelMode;
  @isEnum UnitSystem unitSystem;
  List<DirectionsWaypoint> waypoints;
}