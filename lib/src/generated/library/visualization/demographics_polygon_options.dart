// Copyright (c) 2013, Alexandre Ardhuin
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

part of google_maps_visualization;

class DemographicsPolygonOptions extends jsw.TypedJsObject {
  static DemographicsPolygonOptions cast(js.JsObject jsObject) => jsObject == null ? null : new DemographicsPolygonOptions.fromJsObject(jsObject);
  DemographicsPolygonOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DemographicsPolygonOptions()
      : super();

  set fillColor(String fillColor) => $unsafe['fillColor'] = fillColor;
  String get fillColor => $unsafe['fillColor'];
  set fillColorStyle(DemographicsPropertyStyle fillColorStyle) => $unsafe['fillColorStyle'] = fillColorStyle;
  DemographicsPropertyStyle get fillColorStyle => DemographicsPropertyStyle.cast($unsafe['fillColorStyle']);
  set fillOpacity(num fillOpacity) => $unsafe['fillOpacity'] = fillOpacity;
  num get fillOpacity => $unsafe['fillOpacity'];
  set fillOpacityStyle(DemographicsPropertyStyle fillOpacityStyle) => $unsafe['fillOpacityStyle'] = fillOpacityStyle;
  DemographicsPropertyStyle get fillOpacityStyle => DemographicsPropertyStyle.cast($unsafe['fillOpacityStyle']);
  set strokeColor(String strokeColor) => $unsafe['strokeColor'] = strokeColor;
  String get strokeColor => $unsafe['strokeColor'];
  set strokeColorStyle(DemographicsPropertyStyle strokeColorStyle) => $unsafe['strokeColorStyle'] = strokeColorStyle;
  DemographicsPropertyStyle get strokeColorStyle => DemographicsPropertyStyle.cast($unsafe['strokeColorStyle']);
  set strokeOpacity(num strokeOpacity) => $unsafe['strokeOpacity'] = strokeOpacity;
  num get strokeOpacity => $unsafe['strokeOpacity'];
  set strokeOpacityStyle(DemographicsPropertyStyle strokeOpacityStyle) => $unsafe['strokeOpacityStyle'] = strokeOpacityStyle;
  DemographicsPropertyStyle get strokeOpacityStyle => DemographicsPropertyStyle.cast($unsafe['strokeOpacityStyle']);
  set strokeWeight(num strokeWeight) => $unsafe['strokeWeight'] = strokeWeight;
  num get strokeWeight => $unsafe['strokeWeight'];
}
