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

class StrokePosition extends IsEnum<int> {
  static final CENTER = new StrokePosition._(maps.StrokePosition.CENTER);
  static final INSIDE = new StrokePosition._(maps.StrokePosition.INSIDE);
  static final OUTSIDE = new StrokePosition._(maps.StrokePosition.OUTSIDE);

  static final _INSTANCES = [CENTER, INSIDE, OUTSIDE];

  static StrokePosition find(Object o) => findIn(_INSTANCES, o);

  StrokePosition._(int value) : super(value);

  bool operator ==(Object other) => value == (other is StrokePosition ? (other as StrokePosition).value : other);
}