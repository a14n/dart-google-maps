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

class MapTypeControlStyle extends IsEnum<int> {
  static final DEFAULT = new MapTypeControlStyle._(maps.MapTypeControlStyle.DEFAULT);
  static final DROPDOWN_MENU = new MapTypeControlStyle._(maps.MapTypeControlStyle.DROPDOWN_MENU);
  static final HORIZONTAL_BAR = new MapTypeControlStyle._(maps.MapTypeControlStyle.HORIZONTAL_BAR);

  static final _INSTANCES = [DEFAULT, DROPDOWN_MENU, HORIZONTAL_BAR];

  static MapTypeControlStyle find(Object o) => findIn(_INSTANCES, o);

  MapTypeControlStyle._(int value) : super(value);

  bool operator ==(Object other) => value == (other is MapTypeControlStyle ? (other as MapTypeControlStyle).value : other);
}