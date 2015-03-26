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
  static DirectionsRequest $wrap(js.JsObject jsObject) => jsObject == null ? null : new DirectionsRequest.fromJsObject(jsObject);
  DirectionsRequest.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DirectionsRequest();

  set avoidHighways(bool avoidHighways) => $unsafe['avoidHighways'] = avoidHighways;
  bool get avoidHighways => $unsafe['avoidHighways'];
  set avoidTolls(bool avoidTolls) => $unsafe['avoidTolls'] = avoidTolls;
  bool get avoidTolls => $unsafe['avoidTolls'];
  set destination(dynamic destination) => $unsafe['destination'] = destination is LatLng ? destination.$unsafe : destination is String ? destination : destination == null ? null : throw "bad type";
  dynamic get destination => ((v2) => LatLng.isInstance(v2) ? LatLng.$wrap(v2) : ((v1) => v1 is String ? v1 : ((v0) => v0)(v1))(v2))($unsafe['destination']);
  set durationInTraffic(bool durationInTraffic) => $unsafe['durationInTraffic'] = durationInTraffic;
  bool get durationInTraffic => $unsafe['durationInTraffic'];
  set optimizeWaypoints(bool optimizeWaypoints) => $unsafe['optimizeWaypoints'] = optimizeWaypoints;
  bool get optimizeWaypoints => $unsafe['optimizeWaypoints'];
  set origin(dynamic origin) => $unsafe['origin'] = origin is LatLng ? origin.$unsafe : origin is String ? origin : origin == null ? null : throw "bad type";
  dynamic get origin => ((v2) => LatLng.isInstance(v2) ? LatLng.$wrap(v2) : ((v1) => v1 is String ? v1 : ((v0) => v0)(v1))(v2))($unsafe['origin']);
  set region(String region) => $unsafe['region'] = region;
  String get region => $unsafe['region'];
  set transitOptions(TransitOptions transitOptions) => $unsafe['transitOptions'] = transitOptions == null ? null : transitOptions.$unsafe;
  TransitOptions get transitOptions => TransitOptions.$wrap($unsafe['transitOptions']);
  set travelMode(TravelMode travelMode) => $unsafe['travelMode'] = travelMode == null ? null : travelMode.$unsafe;
  TravelMode get travelMode => TravelMode.$wrap($unsafe['travelMode']);
  set unitSystem(UnitSystem unitSystem) => $unsafe['unitSystem'] = unitSystem == null ? null : unitSystem.$unsafe;
  UnitSystem get unitSystem => UnitSystem.$wrap($unsafe['unitSystem']);
  set waypoints(List<DirectionsWaypoint> waypoints) => $unsafe['waypoints'] = jsw.jsify(waypoints);
  List<DirectionsWaypoint> get waypoints => jsw.TypedJsArray.$wrapSerializables($unsafe['waypoints'], DirectionsWaypoint.$wrap);
}
