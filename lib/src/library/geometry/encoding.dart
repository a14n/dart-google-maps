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

class Encoding {
  static List<LatLng> decodePath(String encodedPath) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.encoding).$.decodePath(encodedPath).map((js.Proxy jsProxy) => new jsw.JsList<LatLng>.fromJsProxy(jsProxy, LatLng.INSTANCIATOR)).value;
  static String encodePath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.encoding).$.encodePath(path).value;
    } else {
      throw new UnsupportedError("Parameter must be of type MVCArray<LatLng> or List<LatLng>");
    }
  }
}