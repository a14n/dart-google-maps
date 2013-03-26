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
  static AdUnit cast(js.Proxy proxy) => proxy == null ? null : new AdUnit.fromProxy(proxy);

  AdUnit(html.Node container, AdUnitOptions opts) : super(maps.adsense.AdUnit, [container, opts]);
  AdUnit.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get backgroundColor => $unsafe.getBackgroundColor();
  String get borderColor => $unsafe.getBorderColor();
  String get channelNumber => $unsafe.getChannelNumber();
  html.Node get container => $unsafe.getContainer();
  AdFormat get format => AdFormat.find($unsafe.getFormat());
  GMap get map => GMap.cast($unsafe.getMap());
  ControlPosition get position => ControlPosition.find($unsafe.getPosition());
  String get publisherId => $unsafe.getPublisherId();
  String get textColor => $unsafe.getTextColor();
  String get titleColor => $unsafe.getTitleColor();
  String get urlColor => $unsafe.getUrlColor();
  set backgroundColor(String backgroundColor) => $unsafe.setBackgroundColor(backgroundColor);
  set borderColor(String borderColor) => $unsafe.setBorderColor(borderColor);
  set channelNumber(String channelNumber) => $unsafe.setChannelNumber(channelNumber);
  set format(AdFormat format) => $unsafe.setFormat(format);
  set map(GMap map) => $unsafe.setMap(map);
  set position(ControlPosition position) => $unsafe.setPosition(position);
  set textColor(String textColor) => $unsafe.setTextColor(textColor);
  set titleColor(String titleColor) => $unsafe.setTitleColor(titleColor);
  set urlColor(String urlColor) => $unsafe.setUrlColor(urlColor);
}