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

typedef StreetViewPanoramaData PanoProvider(String pano);

class StreetViewPanoramaOptions extends jsw.TypedProxy {
  static StreetViewPanoramaOptions cast(js.Proxy proxy) => proxy == null ? null : new StreetViewPanoramaOptions.fromProxy(proxy);

  StreetViewPanoramaOptions() : super();
  StreetViewPanoramaOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  bool get addressControl => $unsafe['addressControl'];
  StreetViewAddressControlOptions get addressControlOptions => StreetViewAddressControlOptions.cast($unsafe['addressControlOptions']);
  bool get clickToGo => $unsafe['clickToGo'];
  bool get disableDoubleClickZoom => $unsafe['disableDoubleClickZoom'];
  bool get enableCloseButton => $unsafe['enableCloseButton'];
  bool get imageDateControl => $unsafe['imageDateControl'];
  bool get linksControl => $unsafe['linksControl'];
  bool get panControl => $unsafe['panControl'];
  PanControlOptions get panControlOptions => PanControlOptions.cast($unsafe['panControlOptions']);
  String get pano => $unsafe['pano'];
  PanoProvider get panoProvider => $unsafe['panoProvider'];
  LatLng get position => LatLng.cast($unsafe['position']);
  StreetViewPov get pov => StreetViewPov.cast($unsafe['pov']);
  bool get scrollwheel => $unsafe['scrollwheel'];
  bool get visible => $unsafe['visible'];
  bool get zoomControl => $unsafe['zoomControl'];
  ZoomControlOptions get zoomControlOptions => ZoomControlOptions.cast($unsafe['zoomControlOptions']);
  set addressControl(bool addressControl) => $unsafe['addressControl'] = addressControl;
  set addressControlOptions(StreetViewAddressControlOptions addressControlOptions) => $unsafe['addressControlOptions'] = addressControlOptions;
  set clickToGo(bool clickToGo) => $unsafe['clickToGo'] = clickToGo;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $unsafe['disableDoubleClickZoom'] = disableDoubleClickZoom;
  set enableCloseButton(bool enableCloseButton) => $unsafe['enableCloseButton'] = enableCloseButton;
  set imageDateControl(bool imageDateControl) => $unsafe['imageDateControl'] = imageDateControl;
  set linksControl(bool linksControl) => $unsafe['linksControl'] = linksControl;
  set panControl(bool panControl) => $unsafe['panControl'] = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => $unsafe['panControlOptions'] = panControlOptions;
  set pano(String pano) => $unsafe['pano'] = pano;
  set panoProvider(PanoProvider panoProvider) => $unsafe['panoProvider'] = panoProvider;
  set position(LatLng position) => $unsafe['position'] = position;
  set pov(StreetViewPov pov) => $unsafe['pov'] = pov;
  set scrollwheel(bool scrollwheel) => $unsafe['scrollwheel'] = scrollwheel;
  set visible(bool visible) => $unsafe['visible'] = visible;
  set zoomControl(bool zoomControl) => $unsafe['zoomControl'] = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $unsafe['zoomControlOptions'] = zoomControlOptions;
}