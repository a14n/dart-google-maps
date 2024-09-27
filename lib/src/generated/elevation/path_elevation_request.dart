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

part of '../elevation.dart';

extension type PathElevationRequest._(JSObject _) implements JSObject {
  external PathElevationRequest({
    num samples,
    JSArray<LatLngOrLatLngLiteral>? path,
  });
  external num samples;
  @JS('path')
  external JSArray<LatLngOrLatLngLiteral>? _path;
  List<LatLngOrLatLngLiteral>? get path => _path?.toDart;
  set path(List<LatLngOrLatLngLiteral>? value) => _path = value?.toJS;
}
