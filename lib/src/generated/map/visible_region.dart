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

part of '../map.dart';

extension type VisibleRegion._(JSObject _) implements JSObject {
  external VisibleRegion({
    LatLng farLeft,
    LatLng farRight,
    LatLngBounds latLngBounds,
    LatLng nearLeft,
    LatLng nearRight,
  });
  external LatLng farLeft;
  external LatLng farRight;
  external LatLngBounds latLngBounds;
  external LatLng nearLeft;
  external LatLng nearRight;
}
