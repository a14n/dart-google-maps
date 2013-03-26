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

class Point extends jsw.TypedProxy {
  static Point cast(js.Proxy proxy) => proxy == null ? null : new Point.fromProxy(proxy);

  Point(num x, num y) : super(maps.Point, [x, y]);
  Point.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool equals(Point other) => $unsafe.equals(other);
  String toString() => $unsafe["toString"].apply($unsafe, js.array([]));

  num get x => $unsafe.x;
  num get y => $unsafe.y;
  set x(num x) => $unsafe.x = x;
  set y(num y) => $unsafe.y = y;
}