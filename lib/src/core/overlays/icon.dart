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

class Icon extends jsw.TypedProxy {
  static Icon cast(js.Proxy proxy) => proxy == null ? null : new Icon.fromProxy(proxy);

  Icon() : super();
  Icon.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  Point get anchor => Point.cast($unsafe.anchor);
  Point get origin => Point.cast($unsafe.origin);
  Size get scaledSize => Size.cast($unsafe.scaledSize);
  Size get size => Size.cast($unsafe.size);
  String get url => $unsafe.url;
  set anchor(Point anchor) => $unsafe.anchor = anchor;
  set origin(Point origin) => $unsafe.origin = origin;
  set scaledSize(Size scaledSize) => $unsafe.scaledSize = scaledSize;
  set size(Size size) => $unsafe.size = size;
  set url(String url) => $unsafe.url = url;
}