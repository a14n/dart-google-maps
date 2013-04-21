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

class StreetViewPanoramaData extends jsw.TypedProxy {
  static StreetViewPanoramaData cast(js.Proxy proxy) => proxy == null ? null : new StreetViewPanoramaData.fromProxy(proxy);

  StreetViewPanoramaData() : super();
  StreetViewPanoramaData.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get copyright => $unsafe['copyright'];
  String get imageDate => $unsafe['imageDate'];
  List<StreetViewLink> get links => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['links'], StreetViewLink.cast);
  StreetViewLocation get location => StreetViewLocation.cast($unsafe['location']);
  StreetViewTileData get tiles => StreetViewTileData.cast($unsafe['tiles']);
  set copyright(String copyright) => $unsafe['copyright'] = copyright;
  set imageDate(String imageDate) => $unsafe['imageDate'] = imageDate;
  set links(List<StreetViewLink> links) => $unsafe['links'] = jsifyList(links);
  set location(StreetViewLocation location) => $unsafe['location'] = location;
  set tiles(StreetViewTileData tiles) => $unsafe['tiles'] = tiles;
}