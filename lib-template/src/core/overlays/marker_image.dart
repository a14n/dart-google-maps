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
@wrapper abstract class MarkerImage extends jsw.TypedJsObject {
  MarkerImage(String url, [Size size, Point origin, Point anchor, Size scaledSize]) : super(maps['MarkerImage'], [url, size, origin, anchor, scaledSize]);

  Point anchor;
  Point origin;
  Size scaledSize;
  Size size;
  String url;
}
