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

class StreetViewService extends jsw.TypedJsObject {
  static StreetViewService $wrap(js.JsObject jsObject) => jsObject == null ? null : new StreetViewService.fromJsObject(jsObject);
  StreetViewService.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  StreetViewService()
      : super(maps['StreetViewService'], []);

  void getPanoramaById(String pano, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    $unsafe.callMethod('getPanoramaById', [pano, (js.JsObject streetViewPanoramaData, String streetViewStatus) => callback(StreetViewPanoramaData.$wrap(streetViewPanoramaData), StreetViewStatus.$wrap(streetViewStatus))]);
  }
  void getPanoramaByLocation(LatLng latlng, num radius, void callback(StreetViewPanoramaData streetViewPanoramaData, StreetViewStatus streetViewStatus)) {
    $unsafe.callMethod('getPanoramaByLocation', [jsw.Serializable.$unwrap(latlng), radius, (js.JsObject streetViewPanoramaData, String streetViewStatus) => callback(StreetViewPanoramaData.$wrap(streetViewPanoramaData), StreetViewStatus.$wrap(streetViewStatus))]);
  }
}
