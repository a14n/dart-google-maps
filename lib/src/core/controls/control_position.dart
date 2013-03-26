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

class ControlPosition extends IsEnum<int> {
  static final BOTTOM_CENTER = new ControlPosition._(maps.ControlPosition.BOTTOM_CENTER);
  static final BOTTOM_LEFT = new ControlPosition._(maps.ControlPosition.BOTTOM_LEFT);
  static final BOTTOM_RIGHT = new ControlPosition._(maps.ControlPosition.BOTTOM_RIGHT);
  static final LEFT_BOTTOM = new ControlPosition._(maps.ControlPosition.LEFT_BOTTOM);
  static final LEFT_CENTER = new ControlPosition._(maps.ControlPosition.LEFT_CENTER);
  static final LEFT_TOP = new ControlPosition._(maps.ControlPosition.LEFT_TOP);
  static final RIGHT_BOTTOM = new ControlPosition._(maps.ControlPosition.RIGHT_BOTTOM);
  static final RIGHT_CENTER = new ControlPosition._(maps.ControlPosition.RIGHT_CENTER);
  static final RIGHT_TOP = new ControlPosition._(maps.ControlPosition.RIGHT_TOP);
  static final TOP_CENTER = new ControlPosition._(maps.ControlPosition.TOP_CENTER);
  static final TOP_LEFT = new ControlPosition._(maps.ControlPosition.TOP_LEFT);
  static final TOP_RIGHT = new ControlPosition._(maps.ControlPosition.TOP_RIGHT);

  static final _INSTANCES = [BOTTOM_CENTER, BOTTOM_LEFT, BOTTOM_RIGHT, LEFT_BOTTOM, LEFT_CENTER, LEFT_TOP, RIGHT_BOTTOM, RIGHT_CENTER, RIGHT_TOP, TOP_CENTER, TOP_LEFT, TOP_RIGHT];

  static ControlPosition find(Object o) => findIn(_INSTANCES, o);

  ControlPosition._(int value) : super(value);

  bool operator ==(Object other) => value == (other is ControlPosition ? (other as ControlPosition).value : other);
}