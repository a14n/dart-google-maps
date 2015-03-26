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

class InfoWindowOptions extends jsw.TypedJsObject {
  static InfoWindowOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new InfoWindowOptions.fromJsObject(jsObject);
  InfoWindowOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  InfoWindowOptions();

  set content(dynamic content) => $unsafe['content'] = content is String ? content : content is html.Node ? content : content == null ? null : throw "bad type";
  dynamic get content => ((v2) => v2 is String ? v2 : ((v1) => v1 is html.Node ? v1 : ((v0) => v0)(v1))(v2))($unsafe['content']);
  set disableAutoPan(bool disableAutoPan) => $unsafe['disableAutoPan'] = disableAutoPan;
  bool get disableAutoPan => $unsafe['disableAutoPan'];
  set maxWidth(num maxWidth) => $unsafe['maxWidth'] = maxWidth;
  num get maxWidth => $unsafe['maxWidth'];
  set pixelOffset(Size pixelOffset) => $unsafe['pixelOffset'] = pixelOffset == null ? null : pixelOffset.$unsafe;
  Size get pixelOffset => Size.$wrap($unsafe['pixelOffset']);
  set position(LatLng position) => $unsafe['position'] = position == null ? null : position.$unsafe;
  LatLng get position => LatLng.$wrap($unsafe['position']);
  set zIndex(num zIndex) => $unsafe['zIndex'] = zIndex;
  num get zIndex => $unsafe['zIndex'];
}
