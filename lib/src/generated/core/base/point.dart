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

class Point extends jsw.TypedJsObject {
  static Point $wrap(js.JsObject jsObject) => jsObject == null ? null : new Point.fromJsObject(jsObject);
  Point.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  Point(num x, num y)
      : super(maps['Point'], [x, y]);

  bool equals(Point other) => $unsafe.callMethod('equals', [other == null ? null : other.$unsafe]);
  String toString() => $unsafe.callMethod('toString');

  set x(num x) => $unsafe['x'] = x;
  num get x => $unsafe['x'];
  set y(num y) => $unsafe['y'] = y;
  num get y => $unsafe['y'];
}
