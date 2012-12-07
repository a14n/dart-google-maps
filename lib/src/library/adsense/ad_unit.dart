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
  AdUnit(html.Node container, AdUnitOptions opts) : super.newInstance(maps.adsense.AdUnit, [container, opts]);
  AdUnit.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get channelNumber => $.getChannelNumber().value;
  html.Node get container => $.getContainer().value;
  AdFormat get format => $.getFormat().map(AdFormat.find).value;
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  ControlPosition get position => $.getPosition().map(ControlPosition.find).value;
  String get publisherId => $.getPublisherId().value;
  set channelNumber(String channelNumber) => $.setChannelNumber(channelNumber);
  set format(AdFormat format) => $.setFormat(format);
  set map(GMap map) => $.setMap(map);
  set position(ControlPosition position) => $.setPosition(position);
}