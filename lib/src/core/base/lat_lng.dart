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

@JsName('google.maps.LatLng')
abstract class _LatLng implements JsInterface {
  external factory _LatLng(num lat, num lng, [bool noWrap]);

  bool equals(LatLng other);
  num get lat => _lat();
  num _lat();
  num get lng => _lng();
  num _lng();
  String toString();
  String toUrlValue([num precision]);
}
