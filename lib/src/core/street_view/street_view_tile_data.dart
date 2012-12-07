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

class StreetViewTileData extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new StreetViewTileData.fromJsProxy(jsProxy);

  StreetViewTileData() : super();
  StreetViewTileData.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  void set_getTileUrl(String getTileUrl(String pano, num tileZoom, num tileX, num tileY)) {
    $.getTileUrl = new jsw.Callback.many((Option<String> pano, Option<num> tileZoom, Option<num> tileX, Option<num> tileY) => getTileUrl(pano.value, tileZoom.value, tileX.value, tileY.value));
  }
  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) => $.getTileUrl(pano, tileZoom, tileX, tileY).value;

  set centerHeading(num centerHeading) => $.centerHeading = centerHeading;
  set tileSize(Size tileSize) => $.tileSize = tileSize;
  set worldSize(Size worldSize) => $.worldSize = worldSize;
}