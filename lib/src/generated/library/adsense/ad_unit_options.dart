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

part of google_maps_adsense;

class AdUnitOptions extends jsw.TypedJsObject {
  static AdUnitOptions cast(js.JsObject jsObject) => jsObject == null ? null : new AdUnitOptions.fromJsObject(jsObject);
  AdUnitOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  AdUnitOptions() : super();

  set backgroundColor(String backgroundColor) => $unsafe['backgroundColor'] = backgroundColor;
  String get backgroundColor => $unsafe['backgroundColor'];
  set borderColor(String borderColor) => $unsafe['borderColor'] = borderColor;
  String get borderColor => $unsafe['borderColor'];
  set channelNumber(String channelNumber) => $unsafe['channelNumber'] = channelNumber;
  String get channelNumber => $unsafe['channelNumber'];
  set format(AdFormat format) => $unsafe['format'] = format;
  AdFormat get format => AdFormat.find($unsafe['format']);
  set map(GMap map) => $unsafe['map'] = map;
  GMap get map => GMap.cast($unsafe['map']);
  set position(ControlPosition position) => $unsafe['position'] = position;
  ControlPosition get position => ControlPosition.find($unsafe['position']);
  set publisherId(String publisherId) => $unsafe['publisherId'] = publisherId;
  String get publisherId => $unsafe['publisherId'];
  set textColor(String textColor) => $unsafe['textColor'] = textColor;
  String get textColor => $unsafe['textColor'];
  set titleColor(String titleColor) => $unsafe['titleColor'] = titleColor;
  String get titleColor => $unsafe['titleColor'];
  set urlColor(String urlColor) => $unsafe['urlColor'] = urlColor;
  String get urlColor => $unsafe['urlColor'];
}
