// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src;

@JsName('google.maps.StreetViewService')
abstract class _StreetViewService implements JsInterface {
  factory _StreetViewService() => null;

  void getPanoramaById(
      String pano, callback(StreetViewPanoramaData p1, StreetViewStatus p2));
  void getPanoramaByLocation(LatLng latlng, num radius,
      callback(StreetViewPanoramaData p1, StreetViewStatus p2));

  void getPanorama(
      dynamic /*StreetViewLocationRequest|StreetViewPanoRequest*/ request,
      void callback(StreetViewPanoramaData datas, StreetViewStatus status)) {
    _getPanorama(
        (ChainedCodec()
              ..add(JsInterfaceCodec<StreetViewLocationRequest>(
                  (o) => StreetViewLocationRequest.created(o),
                  (o) => o is JsObject && o.hasProperty('location')))
              ..add(JsInterfaceCodec<StreetViewPanoRequest>(
                  (o) => StreetViewPanoRequest.created(o),
                  (o) => o is JsObject && o.hasProperty('pano'))))
            .encode(request),
        callback);
  }

  void _getPanorama(dynamic request,
      void callback(StreetViewPanoramaData datas, StreetViewStatus status));
}
