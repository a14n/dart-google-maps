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

part of google_maps.src;

@JsName('google.maps.LatLngBounds')
abstract class _LatLngBounds implements JsInterface {
  external factory _LatLngBounds([LatLng sw, LatLng ne]);

  bool contains(LatLng latLng);
  bool equals(LatLngBounds other);
  LatLngBounds extend(LatLng point);
  LatLng get center => _getCenter();
  LatLng _getCenter();
  LatLng get northEast => _getNorthEast();
  LatLng _getNorthEast();
  LatLng get southWest => _getSouthWest();
  LatLng _getSouthWest();
  bool intersects(LatLngBounds other);
  bool get isEmpty => _isEmpty();
  bool _isEmpty();
  LatLng toSpan();
  String toString();
  String toUrlValue([num precision]);
  LatLngBounds union(LatLngBounds other);
}
