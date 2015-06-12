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

part of google_maps.src;

@anonymous
abstract class _DirectionsStep implements JsInterface {
  external factory _DirectionsStep();

  Distance distance;
  GDuration duration;
  LatLng _end_location;
  LatLng get endLocation => _end_location;
  void set endLocation(LatLng endLocation) {
    _end_location = endLocation;
  }
  String instructions;
  List<LatLng> path;
  LatLng _start_location;
  LatLng get startLocation => _start_location;
  void set startLocation(LatLng startLocation) {
    _start_location = startLocation;
  }
  List<DirectionsStep> steps;
  TransitDetails transit;
  TravelMode _travel_mode;
  TravelMode get travelMode => _travel_mode;
  void set travelMode(TravelMode travelMode) {
    _travel_mode = travelMode;
  }
}
