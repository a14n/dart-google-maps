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

class StreetViewTileData extends jsw.TypedJsObject {
  static StreetViewTileData $wrap(js.JsObject jsObject) => jsObject == null ? null : new StreetViewTileData.fromJsObject(jsObject);
  StreetViewTileData.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  StreetViewTileData();

  void set_getTileUrl(String getTileUrl(String pano, num tileZoom, num tileX, num tileY)) {
    $unsafe['getTileUrl'] = getTileUrl;
  }
  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) => $unsafe.callMethod('getTileUrl', [pano, tileZoom, tileX, tileY]);

  set centerHeading(num centerHeading) => $unsafe['centerHeading'] = centerHeading;
  num get centerHeading => $unsafe['centerHeading'];
  set tileSize(Size tileSize) => $unsafe['tileSize'] = tileSize == null ? null : tileSize.$unsafe;
  Size get tileSize => Size.$wrap($unsafe['tileSize']);
  set worldSize(Size worldSize) => $unsafe['worldSize'] = worldSize == null ? null : worldSize.$unsafe;
  Size get worldSize => Size.$wrap($unsafe['worldSize']);
}
