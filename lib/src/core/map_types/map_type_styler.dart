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

class MapTypeStyler extends jsw.IsJsProxy {
  set gamma(num gamma) => $.gamma = gamma;
  set hue(String hue) => $.hue = hue;
  set invertLightness(bool invertLightness) => $.invert_lightness = invertLightness;
  set lightness(num lightness) => $.lightness = lightness;
  set saturation(num saturation) => $.saturation = saturation;
  set visibility(MapTypeStylerVisibility visibility) => $.visibility = visibility.value;
}

class MapTypeStylerVisibility extends jsw.IsEnum<String> {
  static final ON = new MapTypeStylerVisibility._("on");
  static final OFF = new MapTypeStylerVisibility._("off");
  static final SIMPLIFIED = new MapTypeStylerVisibility._("simplified");

  static final _INSTANCES = [ON, OFF, SIMPLIFIED];

  static MapTypeStylerVisibility find(Object o) => findIn(_INSTANCES, o);

  MapTypeStylerVisibility._(String value) : super(value);

  bool operator ==(Object other) => value == (other is MapTypeStylerVisibility ? (other as MapTypeStylerVisibility).value : other);
}