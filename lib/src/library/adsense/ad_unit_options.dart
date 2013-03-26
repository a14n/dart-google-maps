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

class AdUnitOptions extends jsw.TypedProxy {
  static AdUnitOptions cast(js.Proxy proxy) => proxy == null ? null : new AdUnitOptions.fromProxy(proxy);

  AdUnitOptions() : super();
  AdUnitOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get backgroundColor => $unsafe.backgroundColor;
  String get borderColor => $unsafe.borderColor;
  String get channelNumber => $unsafe.channelNumber;
  AdFormat get format => AdFormat.find($unsafe.format);
  GMap get map => GMap.cast($unsafe.map);
  ControlPosition get position => ControlPosition.find($unsafe.position);
  String get publisherId => $unsafe.publisherId;
  String get textColor => $unsafe.textColor;
  String get titleColor => $unsafe.titleColor;
  String get urlColor => $unsafe.urlColor;
  set backgroundColor(String backgroundColor) => $unsafe.backgroundColor = backgroundColor;
  set borderColor(String borderColor) => $unsafe.borderColor = borderColor;
  set channelNumber(String channelNumber) => $unsafe.channelNumber = channelNumber;
  set format(AdFormat format) => $unsafe.format = format;
  set map(GMap map) => $unsafe.map = map;
  set position(ControlPosition position) => $unsafe.position = position;
  set publisherId(String publisherId) => $unsafe.publisherId = publisherId;
  set textColor(String textColor) => $unsafe.textColor = textColor;
  set titleColor(String titleColor) => $unsafe.titleColor = titleColor;
  set urlColor(String urlColor) => $unsafe.urlColor = urlColor;
}