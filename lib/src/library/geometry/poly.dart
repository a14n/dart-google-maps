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

class Poly {
  static bool containsLocation(LatLng point, Polygon polygon) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.poly).$.containsLocation(point, polygon).value;
  static bool isLocationOnEdge(LatLng point, Object poly, [num tolerance]) {
    if (poly is Polygon || poly is Polyline) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.poly).$.isLocationOnEdge(point, poly, tolerance).value;
    } else {
      throw new UnsupportedError("Parameter must be of type Polygon or Polyline");
    }
  }
}