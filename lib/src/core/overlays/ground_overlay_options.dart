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

class GroundOverlayOptions extends jsw.TypedProxy {
  static GroundOverlayOptions cast(js.Proxy proxy) => proxy == null ? null : new GroundOverlayOptions.fromProxy(proxy);

  GroundOverlayOptions() : super();
  GroundOverlayOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool get clickable => $unsafe['clickable'];
  GMap get map => GMap.cast($unsafe['map']);
  num get opacity => $unsafe['opacity'];
  set clickable(bool clickable) => $unsafe['clickable'] = clickable;
  set map(GMap map) => $unsafe['map'] = map;
  set opacity(num opacity) => $unsafe['opacity'] = opacity;
}