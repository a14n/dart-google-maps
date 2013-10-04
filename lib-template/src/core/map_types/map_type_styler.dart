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

@wrapper abstract class MapTypeStyler extends jsw.TypedJsObject {
  MapTypeStyler() : super();

  num gamma;
  String hue;
  bool invertLightness;
  num lightness;
  num saturation;
  @isEnum MapTypeStylerVisibility visibility;
}

class MapTypeStylerVisibility extends IsEnum<String> {
  static final ON = new MapTypeStylerVisibility._("on");
  static final OFF = new MapTypeStylerVisibility._("off");
  static final SIMPLIFIED = new MapTypeStylerVisibility._("simplified");

  static final _FINDER = new EnumFinder<String, MapTypeStylerVisibility>([ON, OFF, SIMPLIFIED]);

  static MapTypeStylerVisibility find(o) => _FINDER.find(o);

  MapTypeStylerVisibility._(String value) : super(value);
}
