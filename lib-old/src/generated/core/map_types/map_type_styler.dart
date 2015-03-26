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

class MapTypeStyler extends jsw.TypedJsObject {
  static MapTypeStyler $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapTypeStyler.fromJsObject(jsObject);
  MapTypeStyler.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MapTypeStyler();

  set gamma(num gamma) => $unsafe['gamma'] = gamma;
  num get gamma => $unsafe['gamma'];
  set hue(String hue) => $unsafe['hue'] = hue;
  String get hue => $unsafe['hue'];
  set invertLightness(bool invertLightness) => $unsafe['invertLightness'] = invertLightness;
  bool get invertLightness => $unsafe['invertLightness'];
  set lightness(num lightness) => $unsafe['lightness'] = lightness;
  num get lightness => $unsafe['lightness'];
  set saturation(num saturation) => $unsafe['saturation'] = saturation;
  num get saturation => $unsafe['saturation'];
  set visibility(MapTypeStylerVisibility visibility) => $unsafe['visibility'] = visibility == null ? null : visibility.$unsafe;
  MapTypeStylerVisibility get visibility => MapTypeStylerVisibility.$wrap($unsafe['visibility']);
}

class MapTypeStylerVisibility extends jsw.IsEnum<String> {
  static final _FINDER = new jsw.EnumFinder<String, MapTypeStylerVisibility>([ON, OFF, SIMPLIFIED]);
  static MapTypeStylerVisibility $wrap(String jsValue) => _FINDER.find(jsValue);

  static final ON = new MapTypeStylerVisibility._("on");
  static final OFF = new MapTypeStylerVisibility._("off");
  static final SIMPLIFIED = new MapTypeStylerVisibility._("simplified");

  MapTypeStylerVisibility._(String value)
      : super(value);
}
