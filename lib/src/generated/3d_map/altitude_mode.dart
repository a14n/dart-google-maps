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

@JS('google.maps.maps3d.AltitudeMode')
extension type AltitudeMode._(JSAny _) implements JSAny {
  external static AltitudeMode get ABSOLUTE;
  external static AltitudeMode get CLAMP_TO_GROUND;
  external static AltitudeMode get RELATIVE_TO_GROUND;
  external static AltitudeMode get RELATIVE_TO_MESH;
}
