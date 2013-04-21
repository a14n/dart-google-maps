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

class InfoWindowOptions extends jsw.TypedProxy {
  static InfoWindowOptions cast(js.Proxy proxy) => proxy == null ? null : new InfoWindowOptions.fromProxy(proxy);

  InfoWindowOptions() : super();
  InfoWindowOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  dynamic/*string|Node*/ get content => $unsafe['content'];
  bool get disableAutoPan => $unsafe['disableAutoPan'];
  num get maxWidth => $unsafe['maxWidth'];
  Size get pixelOffset => Size.cast($unsafe['pixelOffset']);
  LatLng get position => LatLng.cast($unsafe['position']);
  num get zIndex => $unsafe['zIndex'];
  set content(dynamic/*string|Node*/ content) => $unsafe['content'] = content;
  set disableAutoPan(bool disableAutoPan) => $unsafe['disableAutoPan'] = disableAutoPan;
  set maxWidth(num maxWidth) => $unsafe['maxWidth'] = maxWidth;
  set pixelOffset(Size pixelOffset) => $unsafe['pixelOffset'] = pixelOffset;
  set position(LatLng position) => $unsafe['position'] = position;
  set zIndex(num zIndex) => $unsafe['zIndex'] = zIndex;
}