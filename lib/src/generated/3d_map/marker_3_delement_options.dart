// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../3d_map.dart';

extension type Marker3DElementOptions._(JSObject _) implements JSObject {
  external Marker3DElementOptions({
    AltitudeMode? altitudeMode,
    CollisionBehavior? collisionBehavior,
    bool? drawsWhenOccluded,
    bool? extruded,
    String? label,
    JSAny? /*(LatLngLiteral|LatLngAltitude|LatLngAltitudeLiteral)?*/ position,
    bool? sizePreserved,
    num? zIndex,
  });
  external AltitudeMode? altitudeMode;
  external CollisionBehavior? collisionBehavior;
  external bool? drawsWhenOccluded;
  external bool? extruded;
  external String? label;
  external JSAny? /*(LatLngLiteral|LatLngAltitude|LatLngAltitudeLiteral)?*/
      position;
  external bool? sizePreserved;
  external num? zIndex;
}
