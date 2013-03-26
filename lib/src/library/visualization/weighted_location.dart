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

part of google_maps_visualization;

class WeightedLocation extends jsw.TypedProxy {
  static WeightedLocation cast(js.Proxy proxy) => proxy == null ? null : new WeightedLocation.fromProxy(proxy);

  WeightedLocation() : super();
  WeightedLocation.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  LatLng get location => LatLng.cast($unsafe.location);
  num get weight => $unsafe.weight;
  set location(LatLng location) => $unsafe.location = location;
  set weight(num weight) => $unsafe.weight = weight;
}