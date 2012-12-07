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

part of google_maps;

class StreetViewPanoramaData extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new StreetViewPanoramaData.fromJsProxy(jsProxy);

  StreetViewPanoramaData() : super();
  StreetViewPanoramaData.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  String get copyright => $.copyright.value;
  set copyright(String copyright) => $.copyright = copyright;
  String get imageDate => $.imageDate.value;
  set imageDate(String imageDate) => $.imageDate = imageDate;
  List<StreetViewLink> get links => $.links.map((js.Proxy jsProxy) => new jsw.JsList<StreetViewLink>.fromJsProxy(jsProxy, StreetViewLink.INSTANCIATOR)).value;
  set links(List<StreetViewLink> links) => $.links = links;
  StreetViewLocation get location => $.location.map(StreetViewLocation.INSTANCIATOR).value;
  set location(StreetViewLocation location) => $.location = location;
  StreetViewTileData get tiles => $.tiles.map(StreetViewTileData.INSTANCIATOR).value;
  set tiles(StreetViewTileData tiles) => $.tiles = tiles;
}