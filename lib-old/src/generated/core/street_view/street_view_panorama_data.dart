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

class StreetViewPanoramaData extends jsw.TypedJsObject {
  static StreetViewPanoramaData $wrap(js.JsObject jsObject) => jsObject == null ? null : new StreetViewPanoramaData.fromJsObject(jsObject);
  StreetViewPanoramaData.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  StreetViewPanoramaData();

  set copyright(String copyright) => $unsafe['copyright'] = copyright;
  String get copyright => $unsafe['copyright'];
  set imageDate(String imageDate) => $unsafe['imageDate'] = imageDate;
  String get imageDate => $unsafe['imageDate'];
  set links(List<StreetViewLink> links) => $unsafe['links'] = jsw.jsify(links);
  List<StreetViewLink> get links => jsw.TypedJsArray.$wrapSerializables($unsafe['links'], StreetViewLink.$wrap);
  set location(StreetViewLocation location) => $unsafe['location'] = location == null ? null : location.$unsafe;
  StreetViewLocation get location => StreetViewLocation.$wrap($unsafe['location']);
  set tiles(StreetViewTileData tiles) => $unsafe['tiles'] = tiles == null ? null : tiles.$unsafe;
  StreetViewTileData get tiles => StreetViewTileData.$wrap($unsafe['tiles']);
}
