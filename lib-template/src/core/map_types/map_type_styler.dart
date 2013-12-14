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
  MapTypeStyler();

  num gamma;
  String hue;
  bool invertLightness;
  num lightness;
  num saturation;
  MapTypeStylerVisibility visibility;
}

class MapTypeStylerVisibility extends jsw.IsEnum<String> {
  static final _FINDER = new jsw.EnumFinder<String, MapTypeStylerVisibility>([ON, OFF, SIMPLIFIED]);
  static MapTypeStylerVisibility $wrap(String jsValue) => _FINDER.find(jsValue);

  static final ON = new MapTypeStylerVisibility._("on");
  static final OFF = new MapTypeStylerVisibility._("off");
  static final SIMPLIFIED = new MapTypeStylerVisibility._("simplified");

  MapTypeStylerVisibility._(String value) : super(value);
}
