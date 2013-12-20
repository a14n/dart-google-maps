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
  static DemographicsPolygonOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new DemographicsPolygonOptions.fromJsObject(jsObject);
  DemographicsPolygonOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DemographicsPolygonOptions()
      : super();

  set fillColor(String fillColor) => $unsafe['fillColor'] = fillColor;
  String get fillColor => $unsafe['fillColor'];
  set fillColorStyle(DemographicsPropertyStyle fillColorStyle) => $unsafe['fillColorStyle'] = fillColorStyle == null ? null : fillColorStyle.$unsafe;
  DemographicsPropertyStyle get fillColorStyle => DemographicsPropertyStyle.$wrap($unsafe['fillColorStyle']);
  set fillOpacity(num fillOpacity) => $unsafe['fillOpacity'] = fillOpacity;
  num get fillOpacity => $unsafe['fillOpacity'];
  set fillOpacityStyle(DemographicsPropertyStyle fillOpacityStyle) => $unsafe['fillOpacityStyle'] = fillOpacityStyle == null ? null : fillOpacityStyle.$unsafe;
  DemographicsPropertyStyle get fillOpacityStyle => DemographicsPropertyStyle.$wrap($unsafe['fillOpacityStyle']);
  set strokeColor(String strokeColor) => $unsafe['strokeColor'] = strokeColor;
  String get strokeColor => $unsafe['strokeColor'];
  set strokeColorStyle(DemographicsPropertyStyle strokeColorStyle) => $unsafe['strokeColorStyle'] = strokeColorStyle == null ? null : strokeColorStyle.$unsafe;
  DemographicsPropertyStyle get strokeColorStyle => DemographicsPropertyStyle.$wrap($unsafe['strokeColorStyle']);
  set strokeOpacity(num strokeOpacity) => $unsafe['strokeOpacity'] = strokeOpacity;
  num get strokeOpacity => $unsafe['strokeOpacity'];
  set strokeOpacityStyle(DemographicsPropertyStyle strokeOpacityStyle) => $unsafe['strokeOpacityStyle'] = strokeOpacityStyle == null ? null : strokeOpacityStyle.$unsafe;
  DemographicsPropertyStyle get strokeOpacityStyle => DemographicsPropertyStyle.$wrap($unsafe['strokeOpacityStyle']);
  set strokeWeight(num strokeWeight) => $unsafe['strokeWeight'] = strokeWeight;
  num get strokeWeight => $unsafe['strokeWeight'];
}
