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
  static MarkerImage $wrap(js.JsObject jsObject) => jsObject == null ? null : new MarkerImage.fromJsObject(jsObject);
  MarkerImage.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  MarkerImage(String url, [Size size, Point origin, Point anchor, Size scaledSize]):super(maps['MarkerImage'], [url, size == null ? null : size.$unsafe, origin == null ? null : origin.$unsafe, anchor == null ? null : anchor.$unsafe, scaledSize == null ? null : scaledSize.$unsafe]);

  set anchor(Point anchor) => $unsafe['anchor'] = anchor == null ? null : anchor.$unsafe;
Point get anchor => Point.$wrap($unsafe['anchor']);
set origin(Point origin) => $unsafe['origin'] = origin == null ? null : origin.$unsafe;
Point get origin => Point.$wrap($unsafe['origin']);
set scaledSize(Size scaledSize) => $unsafe['scaledSize'] = scaledSize == null ? null : scaledSize.$unsafe;
Size get scaledSize => Size.$wrap($unsafe['scaledSize']);
set size(Size size) => $unsafe['size'] = size == null ? null : size.$unsafe;
Size get size => Size.$wrap($unsafe['size']);
set url(String url) => $unsafe['url'] = url;
String get url => $unsafe['url'];
}
