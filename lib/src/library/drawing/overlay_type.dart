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

part of google_maps_drawing;

class OverlayType extends IsEnum<String> {
  static final CIRCLE= new OverlayType._(maps.drawing.OverlayType.CIRCLE);
  static final MARKER= new OverlayType._(maps.drawing.OverlayType.MARKER);
  static final POLYGON= new OverlayType._(maps.drawing.OverlayType.POLYGON);
  static final POLYLINE= new OverlayType._(maps.drawing.OverlayType.POLYLINE);
  static final RECTANGLE= new OverlayType._(maps.drawing.OverlayType.RECTANGLE);

  static final _INSTANCES = [CIRCLE, MARKER, POLYGON, POLYLINE, RECTANGLE];

  static OverlayType find(Object o) => findIn(_INSTANCES, o);

  OverlayType._(String value) : super(value);

  bool operator ==(Object other) => value == (other is OverlayType ? (other as OverlayType).value : other);
}