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

class AdUnit extends MVCObject {
  static AdUnit $wrap(js.JsObject jsObject) => jsObject == null ? null : new AdUnit.fromJsObject(jsObject);
  AdUnit.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  AdUnit(html.Node container, AdUnitOptions opts)
      : super(maps['adsense']['AdUnit'], [container, opts]);

  String get backgroundColor => $unsafe.callMethod('getBackgroundColor');
  String get borderColor => $unsafe.callMethod('getBorderColor');
  String get channelNumber => $unsafe.callMethod('getChannelNumber');
  html.Node get container => $unsafe.callMethod('getContainer');
  AdFormat get format => AdFormat.$wrap($unsafe.callMethod('getFormat'));
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  ControlPosition get position => ControlPosition.$wrap($unsafe.callMethod('getPosition'));
  String get publisherId => $unsafe.callMethod('getPublisherId');
  String get textColor => $unsafe.callMethod('getTextColor');
  String get titleColor => $unsafe.callMethod('getTitleColor');
  String get urlColor => $unsafe.callMethod('getUrlColor');
  set backgroundColor(String backgroundColor) => $unsafe.callMethod('setBackgroundColor', [backgroundColor]);
  set borderColor(String borderColor) => $unsafe.callMethod('setBorderColor', [borderColor]);
  set channelNumber(String channelNumber) => $unsafe.callMethod('setChannelNumber', [channelNumber]);
  set format(AdFormat format) => $unsafe.callMethod('setFormat', [format == null ? null : format.$unsafe]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  set position(ControlPosition position) => $unsafe.callMethod('setPosition', [position == null ? null : position.$unsafe]);
  set textColor(String textColor) => $unsafe.callMethod('setTextColor', [textColor]);
  set titleColor(String titleColor) => $unsafe.callMethod('setTitleColor', [titleColor]);
  set urlColor(String urlColor) => $unsafe.callMethod('setUrlColor', [urlColor]);
}
