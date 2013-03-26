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

class LatLng extends jsw.TypedProxy {
  static LatLng cast(js.Proxy proxy) => proxy == null ? null : new LatLng.fromProxy(proxy);
  static bool isInstance(js.Proxy proxy) => js.instanceof(proxy, maps.LatLng);

  LatLng(num lat, num lng, [bool noWrap]) : super(maps.LatLng, [lat, lng, noWrap]);
  LatLng.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool equals(LatLng other) => $unsafe.equals(other);
  num get lat => $unsafe.lat();
  num get lng => $unsafe.lng();
  String toString() => $unsafe["toString"].apply($unsafe, js.array([]));
  String toUrlValue([num precision]) => $unsafe.toUrlValue(precision);
}