// Copyright (c) 2015, Alexandre Ardhuin
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

part of '../directions.dart';

extension type DirectionsStep._(JSObject _) implements JSObject {
  external DirectionsStep({
    String encoded_lat_lngs,
    LatLng end_location,
    LatLng end_point,
    String instructions,
    JSArray<LatLng> lat_lngs,
    String maneuver,
    JSArray<LatLng> path,
    LatLng start_location,
    LatLng start_point,
    TravelMode travel_mode,
    Distance? distance,
    Duration? duration,
    DirectionsPolyline? polyline,
    JSArray<DirectionsStep>? steps,
    TransitDetails? transit,
    TransitDetails? transit_details,
  });
  @JS('encoded_lat_lngs')
  external String _encodedLatLngs;
  String get encodedLatLngs => _encodedLatLngs;
  set encodedLatLngs(String value) => _encodedLatLngs = value;
  @JS('end_location')
  external LatLng _endLocation;
  LatLng get endLocation => _endLocation;
  set endLocation(LatLng value) => _endLocation = value;
  @JS('end_point')
  external LatLng _endPoint;
  LatLng get endPoint => _endPoint;
  set endPoint(LatLng value) => _endPoint = value;
  external String instructions;
  @JS('lat_lngs')
  external JSArray<LatLng> _latLngs;
  JSArray<LatLng> get latLngs => _latLngs;
  set latLngs(JSArray<LatLng> value) => _latLngs = value;
  external String maneuver;
  @JS('path')
  external JSArray<LatLng> _path;
  List<LatLng> get path => _path.toDart;
  set path(List<LatLng> value) => _path = value.toJS;
  @JS('start_location')
  external LatLng _startLocation;
  LatLng get startLocation => _startLocation;
  set startLocation(LatLng value) => _startLocation = value;
  @JS('start_point')
  external LatLng _startPoint;
  LatLng get startPoint => _startPoint;
  set startPoint(LatLng value) => _startPoint = value;
  @JS('travel_mode')
  external TravelMode _travelMode;
  TravelMode get travelMode => _travelMode;
  set travelMode(TravelMode value) => _travelMode = value;
  external Distance? distance;
  external Duration? duration;
  external DirectionsPolyline? polyline;
  @JS('steps')
  external JSArray<DirectionsStep>? _steps;
  List<DirectionsStep>? get steps => _steps?.toDart;
  set steps(List<DirectionsStep>? value) => _steps = value?.toJS;
  external TransitDetails? transit;
  @JS('transit_details')
  external TransitDetails? _transitDetails;
  TransitDetails? get transitDetails => _transitDetails;
  set transitDetails(TransitDetails? value) => _transitDetails = value;
}
