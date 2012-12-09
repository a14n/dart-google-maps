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

class Icon extends jsw.IsJsProxy {
  Icon() : super();
  Icon.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  Point get anchor => $.anchor.map(Point.INSTANCIATOR).value;
  set anchor(Point anchor) => $.anchor = anchor;
  Point get origin => $.origin.map(Point.INSTANCIATOR).value;
  set origin(Point origin) => $.origin = origin;
  Size get scaledSize => $.scaledSize.map(Size.INSTANCIATOR).value;
  set scaledSize(Size scaledSize) => $.scaledSize = scaledSize;
  Size get size => $.size.map(Size.INSTANCIATOR).value;
  set size(Size size) => $.size = size;
  String get url => $.url.value;
  set url(String url) => $.url = url;
}