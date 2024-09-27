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

part of '../3d_map.dart';

extension type Polyline3DElementOptions._(JSObject _) implements JSObject {
  external Polyline3DElementOptions({
    AltitudeMode? altitudeMode,
    JSIterable<JSAny /*LatLngAltitude|LatLngAltitudeLiteral|LatLngLiteral*/ >?
        coordinates,
    bool? drawsOccludedSegments,
    bool? extruded,
    bool? geodesic,
    String? outerColor,
    num? outerWidth,
    String? strokeColor,
    num? strokeWidth,
    num? zIndex,
  });
  external AltitudeMode? altitudeMode;
  external JSIterable<
          JSAny /*LatLngAltitude|LatLngAltitudeLiteral|LatLngLiteral*/ >?
      coordinates;
  external bool? drawsOccludedSegments;
  external bool? extruded;
  external bool? geodesic;
  external String? outerColor;
  external num? outerWidth;
  external String? strokeColor;
  external num? strokeWidth;
  external num? zIndex;
}
