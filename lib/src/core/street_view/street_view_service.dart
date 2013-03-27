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

class StreetViewService extends jsw.TypedProxy {
  static StreetViewPov cast(js.Proxy proxy) => proxy == null ? null : new StreetViewPov.fromProxy(proxy);

  StreetViewService() : super(maps.StreetViewService);
  StreetViewService.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  void getPanoramaById(String pano, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    $unsafe.getPanoramaById(pano, new js.Callback.once((js.Proxy streetViewPanoramaData, String streetViewStatus) => callback(StreetViewPanoramaData.cast(streetViewPanoramaData), StreetViewStatus.find(streetViewStatus))));
  }
  void getPanoramaByLocation(LatLng latlng, num radius, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    $unsafe.getPanoramaByLocation(latlng, radius, new js.Callback.once((js.Proxy streetViewPanoramaData, String streetViewStatus) => callback(StreetViewPanoramaData.cast(streetViewPanoramaData), StreetViewStatus.find(streetViewStatus))));
  }
}