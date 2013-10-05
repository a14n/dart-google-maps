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

@wrapper @forMethods abstract class AdUnit extends MVCObject {
  AdUnit(html.Node container, AdUnitOptions opts) : super(maps['adsense']['AdUnit'], [jsw.convertElementToJs(container), opts]);

  String get backgroundColor;
  String get borderColor;
  String get channelNumber;
  html.Node get container => jsw.convertElementToDart($unsafe.callMethod('getContainer'));
  @isEnum AdFormat get format;
  GMap get map;
  @isEnum ControlPosition get position;
  String get publisherId;
  String get textColor;
  String get titleColor;
  String get urlColor;
  set backgroundColor(String backgroundColor);
  set borderColor(String borderColor);
  set channelNumber(String channelNumber);
  set format(AdFormat format);
  set map(GMap map);
  set position(ControlPosition position);
  set textColor(String textColor);
  set titleColor(String titleColor);
  set urlColor(String urlColor);
}