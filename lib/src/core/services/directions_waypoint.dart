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

class DirectionsWaypoint extends jsw.TypedProxy {
  static DirectionsWaypoint cast(js.Proxy proxy) => proxy == null ? null : new DirectionsWaypoint.fromProxy(proxy);

  DirectionsWaypoint() : super();
  DirectionsWaypoint.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  dynamic/*LatLng|string*/ get location {
    final result = $unsafe['location'];
    if(LatLng.isInstance(result)) {
      return LatLng.cast(result);
    }
    return result;
  }
  bool get stopover => $unsafe['stopover'];
  set location(dynamic/*LatLng|string*/ location) => $unsafe['location'] = location;
  set stopover(bool stopover) => $unsafe['stopover'] = stopover;
}