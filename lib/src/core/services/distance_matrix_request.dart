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

class DistanceMatrixRequest extends jsw.IsJsProxy {
  set avoidHighways(bool avoidHighways) => $.avoidHighways = avoidHighways;
  set avoidTolls(bool avoidTolls) => $.avoidTolls = avoidTolls;
  set destinations(Object destinations) {
    if (destinations is List<String> || destinations is List<LatLng>) {
      $.destinations = destinations;
    } else {
      throw new UnsupportedError("Parameter must be of type List<String> or List<LatLng>");
    }
  }
  set origins(Object origins) {
    if (origins is List<String> || origins is List<LatLng>) {
      $.origins = origins;
    } else {
      throw new UnsupportedError("Parameter must be of type List<String> or List<LatLng>");
    }
  }
  set region(String region) => $.region = region;
  set travelMode(TravelMode travelMode) => $.travelMode = travelMode;
  set unitSystem(UnitSystem unitSystem) => $.unitSystem = unitSystem;
}