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

class FeatureStyle extends jsw.TypedJsObject {
  static FeatureStyle $wrap(js.JsObject jsObject) => jsObject == null ? null : new FeatureStyle.fromJsObject(jsObject);
  FeatureStyle.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  FeatureStyle()
      : super();

  void reset(String property) {
    $unsafe.callMethod('reset', [property]);
  }
  void resetAll() {
    $unsafe.callMethod('resetAll');
  }

  set fillColor(String fillColor) => $unsafe['fillColor'] = fillColor;
  String get fillColor => $unsafe['fillColor'];
  set fillOpacity(String fillOpacity) => $unsafe['fillOpacity'] = fillOpacity;
  String get fillOpacity => $unsafe['fillOpacity'];
  set iconAnchor(String iconAnchor) => $unsafe['iconAnchor'] = iconAnchor;
  String get iconAnchor => $unsafe['iconAnchor'];
  set iconClip(String iconClip) => $unsafe['iconClip'] = iconClip;
  String get iconClip => $unsafe['iconClip'];
  set iconImage(String iconImage) => $unsafe['iconImage'] = iconImage;
  String get iconImage => $unsafe['iconImage'];
  set iconOpacity(String iconOpacity) => $unsafe['iconOpacity'] = iconOpacity;
  String get iconOpacity => $unsafe['iconOpacity'];
  set iconSize(String iconSize) => $unsafe['iconSize'] = iconSize;
  String get iconSize => $unsafe['iconSize'];
  set strokeColor(String strokeColor) => $unsafe['strokeColor'] = strokeColor;
  String get strokeColor => $unsafe['strokeColor'];
  set strokeOpacity(String strokeOpacity) => $unsafe['strokeOpacity'] = strokeOpacity;
  String get strokeOpacity => $unsafe['strokeOpacity'];
  set strokeWidth(String strokeWidth) => $unsafe['strokeWidth'] = strokeWidth;
  String get strokeWidth => $unsafe['strokeWidth'];
  set zIndex(String zIndex) => $unsafe['zIndex'] = zIndex;
  String get zIndex => $unsafe['zIndex'];
}
