// Copyright (c) 2013, Alexandre Ardhuin
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

part of google_maps_visualization;

class MapsEngineStatus extends jsw.IsEnum<String> {
  static final INVALID_LAYER = new MapsEngineStatus._(maps.places.PlacesServiceStatus.INVALID_LAYER);
  static final OK = new MapsEngineStatus._(maps.places.PlacesServiceStatus.OK);
  static final UNKNOWN_ERROR = new MapsEngineStatus._(maps.places.PlacesServiceStatus.UNKNOWN_ERROR);

  static final _INSTANCES = [INVALID_LAYER, OK, UNKNOWN_ERROR];

  static MapsEngineStatus find(Object o) => findIn(_INSTANCES, o);

  MapsEngineStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is MapsEngineStatus ? (other as MapsEngineStatus).value : other);
}