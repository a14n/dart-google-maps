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

@deprecated
class MarkerImage extends jsw.TypedJsObject {
  static MarkerImage cast(js.JsObject jsObject) => jsObject == null ? null : new MarkerImage.fromJsObject(jsObject);
  MarkerImage.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  MarkerImage(String url, [Size size, Point origin, Point anchor, Size scaledSize]) : super(maps['MarkerImage'], [url, size, origin, anchor, scaledSize]);

  set anchor(Point anchor) => $unsafe['anchor'] = anchor;
Point get anchor => Point.cast($unsafe['anchor']);
set origin(Point origin) => $unsafe['origin'] = origin;
Point get origin => Point.cast($unsafe['origin']);
set scaledSize(Size scaledSize) => $unsafe['scaledSize'] = scaledSize;
Size get scaledSize => Size.cast($unsafe['scaledSize']);
set size(Size size) => $unsafe['size'] = size;
Size get size => Size.cast($unsafe['size']);
set url(String url) => $unsafe['url'] = url;
String get url => $unsafe['url'];
}
