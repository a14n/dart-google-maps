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

part of '../google_maps_geometry.dart';

@JS('google.maps.geometry.encoding')
external Object get _Encoding$namespace;

class Encoding {
  static List<LatLng> decodePath(String encodedPath) =>
      callMethod(_Encoding$namespace, 'decodePath', [encodedPath])
          .cast<LatLng>();

  static String encodePath(Object /*List<LatLng>|MVCArray<LatLng>*/ path) =>
      callMethod(_Encoding$namespace, 'encodePath', [path]);
}
