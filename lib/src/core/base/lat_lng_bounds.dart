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

part of google_maps;

class LatLngBounds extends jsw.TypedProxy {
  static LatLngBounds cast(js.Proxy proxy) => proxy == null ? null : new LatLngBounds.fromProxy(proxy);

  LatLngBounds([LatLng sw, LatLng ne]) : super(maps.LatLngBounds, [sw, ne]);
  LatLngBounds.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool contains(LatLng latLng) => $unsafe.contains(latLng);
  bool equals(LatLngBounds other) => $unsafe.equals(other);
  LatLngBounds extend(LatLng point) => LatLngBounds.cast($unsafe.extend(point));
  LatLng get center => LatLng.cast($unsafe.getCenter());
  LatLng get northEast => LatLng.cast($unsafe.getNorthEast());
  LatLng get southWest => LatLng.cast($unsafe.getSouthWest());
  bool intersects(LatLngBounds other) => $unsafe.intersects(other);
  bool isEmpty() => $unsafe.isEmpty();
  LatLng toSpan() => LatLng.cast($unsafe.toSpan());
  String toString() => $unsafe["toString"].apply($unsafe, js.array([]));
  String toUrlValue([num precision]) => $unsafe.toUrlValue(precision);
  bool union(LatLngBounds other) => $unsafe.union(other);
}