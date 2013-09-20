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

class StreetViewPanoramaOptions extends jsw.TypedJsObject {
  static StreetViewPanoramaOptions cast(js.JsObject jsObject) => jsObject == null ? null : new StreetViewPanoramaOptions.fromJsObject(jsObject);
  StreetViewPanoramaOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  StreetViewPanoramaOptions() : super();

  set addressControl(bool addressControl) => $unsafe['addressControl'] = addressControl;
bool get addressControl => $unsafe['addressControl'];
set addressControlOptions(StreetViewAddressControlOptions addressControlOptions) => $unsafe['addressControlOptions'] = addressControlOptions;
StreetViewAddressControlOptions get addressControlOptions => StreetViewAddressControlOptions.cast($unsafe['addressControlOptions']);
set clickToGo(bool clickToGo) => $unsafe['clickToGo'] = clickToGo;
bool get clickToGo => $unsafe['clickToGo'];
set disableDoubleClickZoom(bool disableDoubleClickZoom) => $unsafe['disableDoubleClickZoom'] = disableDoubleClickZoom;
bool get disableDoubleClickZoom => $unsafe['disableDoubleClickZoom'];
set enableCloseButton(bool enableCloseButton) => $unsafe['enableCloseButton'] = enableCloseButton;
bool get enableCloseButton => $unsafe['enableCloseButton'];
set imageDateControl(bool imageDateControl) => $unsafe['imageDateControl'] = imageDateControl;
bool get imageDateControl => $unsafe['imageDateControl'];
set linksControl(bool linksControl) => $unsafe['linksControl'] = linksControl;
bool get linksControl => $unsafe['linksControl'];
set panControl(bool panControl) => $unsafe['panControl'] = panControl;
bool get panControl => $unsafe['panControl'];
set panControlOptions(PanControlOptions panControlOptions) => $unsafe['panControlOptions'] = panControlOptions;
PanControlOptions get panControlOptions => PanControlOptions.cast($unsafe['panControlOptions']);
set pano(String pano) => $unsafe['pano'] = pano;
String get pano => $unsafe['pano'];
PanoProvider get panoProvider => $unsafe['panoProvider'];
  set panoProvider(PanoProvider panoProvider) => $unsafe['panoProvider'] = panoProvider;
  set position(LatLng position) => $unsafe['position'] = position;
LatLng get position => LatLng.cast($unsafe['position']);
set pov(StreetViewPov pov) => $unsafe['pov'] = pov;
StreetViewPov get pov => StreetViewPov.cast($unsafe['pov']);
set scrollwheel(bool scrollwheel) => $unsafe['scrollwheel'] = scrollwheel;
bool get scrollwheel => $unsafe['scrollwheel'];
set visible(bool visible) => $unsafe['visible'] = visible;
bool get visible => $unsafe['visible'];
set zoomControl(bool zoomControl) => $unsafe['zoomControl'] = zoomControl;
bool get zoomControl => $unsafe['zoomControl'];
set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $unsafe['zoomControlOptions'] = zoomControlOptions;
ZoomControlOptions get zoomControlOptions => ZoomControlOptions.cast($unsafe['zoomControlOptions']);
}
