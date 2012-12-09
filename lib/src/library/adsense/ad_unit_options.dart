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

class AdUnitOptions extends jsw.IsJsProxy {
  set backgroundColor(String backgroundColor) => $.backgroundColor = backgroundColor;
  set borderColor(String borderColor) => $.borderColor = borderColor;
  set channelNumber(String channelNumber) => $.channelNumber = channelNumber;
  set format(AdFormat format) => $.format = format;
  set map(GMap map) => $.map = map;
  set position(ControlPosition position) => $.position = position;
  set publisherId(String publisherId) => $.publisherId = publisherId;
  set textColor(String textColor) => $.textColor = textColor;
  set titleColor(String titleColor) => $.titleColor = titleColor;
  set urlColor(String urlColor) => $.urlColor = urlColor;
}