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

class InfoWindowOptions extends jsw.IsJsProxy {
  set content(Object content) {
    if (content is String || content is html.Node) {
      $.content = content;
    } else {
      throw new UnsupportedError("Parameter must be of type String or Node");
    }
  }
  bool get disableAutoPan => $.disableAutoPan.value;
  set disableAutoPan(bool disableAutoPan) => $.disableAutoPan = disableAutoPan;
  num get maxWidth => $.maxWidth.value;
  set maxWidth(num maxWidth) => $.maxWidth = maxWidth;
  Size get pixelOffset => $.pixelOffset.map(Size.INSTANCIATOR).value;
  set pixelOffset(Size pixelOffset) => $.pixelOffset = pixelOffset;
  LatLng get position => $.position.map(LatLng.INSTANCIATOR).value;
  set position(LatLng position) => $.position = position;
  num get zIndex => $.zIndex.value;
  set zIndex(num zIndex) => $.zIndex = zIndex;
}