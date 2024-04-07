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

part of '../elevation.dart';

@JS('google.maps.ElevationService')
extension type ElevationService._(JSObject _) implements JSObject {
  external ElevationService();
  external JSPromise<PathElevationResponse> getElevationAlongPath(
    PathElevationRequest request, [
    JSFunction /*void Function(JSArray<ElevationResult>?,ElevationStatus)*/ ?
        callback,
  ]);
  external JSPromise<LocationElevationResponse> getElevationForLocations(
    LocationElevationRequest request, [
    JSFunction /*void Function(JSArray<ElevationResult>?,ElevationStatus)*/ ?
        callback,
  ]);
}
