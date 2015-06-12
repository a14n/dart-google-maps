// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src.adsense;

@JsName('google.maps.adsense.AdUnit')
abstract class _AdUnit extends MVCObject {
  external factory _AdUnit(Node container, AdUnitOptions opts);

  String get backgroundColor => _getBackgroundColor();
  String _getBackgroundColor();
  String get borderColor => _getBorderColor();
  String _getBorderColor();
  String get channelNumber => _getChannelNumber();
  String _getChannelNumber();
  Node get container => _getContainer();
  Node _getContainer();
  AdFormat get format => _getFormat();
  AdFormat _getFormat();
  GMap get map => _getMap();
  GMap _getMap();
  ControlPosition get position => _getPosition();
  ControlPosition _getPosition();
  String get publisherId => _getPublisherId();
  String _getPublisherId();
  String get textColor => _getTextColor();
  String _getTextColor();
  String get titleColor => _getTitleColor();
  String _getTitleColor();
  String get urlColor => _getUrlColor();
  String _getUrlColor();
  void set backgroundColor(String backgroundColor) =>
      _setBackgroundColor(backgroundColor);
  void _setBackgroundColor(String backgroundColor);
  void set borderColor(String borderColor) => _setBorderColor(borderColor);
  void _setBorderColor(String borderColor);
  void set channelNumber(String channelNumber) =>
      _setChannelNumber(channelNumber);
  void _setChannelNumber(String channelNumber);
  void set format(AdFormat format) => _setFormat(format);
  void _setFormat(AdFormat format);
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set position(ControlPosition position) => _setPosition(position);
  void _setPosition(ControlPosition position);
  void set textColor(String textColor) => _setTextColor(textColor);
  void _setTextColor(String textColor);
  void set titleColor(String titleColor) => _setTitleColor(titleColor);
  void _setTitleColor(String titleColor);
  void set urlColor(String urlColor) => _setUrlColor(urlColor);
  void _setUrlColor(String urlColor);
}
