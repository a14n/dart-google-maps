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

part of google_maps_geometry;

final Encoding encoding = new Encoding();

@wrapper class Encoding extends jsw.TypedJsObject {
  Encoding() : super.fromJsObject(maps['geometry']['encoding']);

  @generate List<LatLng> decodePath(String encodedPath) => null;
  String encodePath(dynamic/*Array.<LatLng>|MVCArray.<LatLng>*/ path) => $unsafe.callMethod('encodePath', [path == null ? null : path is js.JsArray ? path : jsw.jsify(path)]);
}
