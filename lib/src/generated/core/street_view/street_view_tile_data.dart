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
  static StreetViewTileData cast(js.JsObject jsObject) => jsObject == null ? null : new StreetViewTileData.fromJsObject(jsObject);
  StreetViewTileData.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  StreetViewTileData()
      : super();

  void set_getTileUrl(String getTileUrl(String pano, num tileZoom, num tileX, num tileY)) {
    $unsafe['getTileUrl'] = getTileUrl;
  }
  String getTileUrl(String pano, num tileZoom, num tileX, num tileY) => $unsafe.callMethod('getTileUrl', [pano, tileZoom, tileX, tileY]);

  set centerHeading(num centerHeading) => $unsafe['centerHeading'] = centerHeading;
  num get centerHeading => $unsafe['centerHeading'];
  set tileSize(Size tileSize) => $unsafe['tileSize'] = tileSize;
  Size get tileSize => Size.cast($unsafe['tileSize']);
  set worldSize(Size worldSize) => $unsafe['worldSize'] = worldSize;
  Size get worldSize => Size.cast($unsafe['worldSize']);
}
