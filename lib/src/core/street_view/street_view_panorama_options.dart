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

class StreetViewPanoramaOptions extends jsw.IsJsProxy {
  set addressControl(bool addressControl) => $.addressControl = addressControl;
  set addressControlOptions(StreetViewAddressControlOptions addressControlOptions) => $.addressControlOptions = addressControlOptions;
  set clickToGo(bool clickToGo) => $.clickToGo = clickToGo;
  set disableDoubleClickZoom(bool disableDoubleClickZoom) => $.disableDoubleClickZoom = disableDoubleClickZoom;
  set enableCloseButton(bool enableCloseButton) => $.enableCloseButton = enableCloseButton;
  set imageDateControl(bool imageDateControl) => $.imageDateControl = imageDateControl;
  set linksControl(bool linksControl) => $.linksControl = linksControl;
  set panControl(bool panControl) => $.panControl = panControl;
  set panControlOptions(PanControlOptions panControlOptions) => $.panControlOptions = panControlOptions;
  set pano(String pano) => $.pano = pano;
  set panoProvider(StreetViewPanoramaData provider(String pano)) => $.panoProvider = new jsw.Callback.many((Option<String> pano) => provider(pano.value));
  set position(LatLng position) => $.position = position;
  set pov(StreetViewPov pov) => $.pov = pov;
  set scrollwheel(bool scrollwheel) => $.scrollwheel = scrollwheel;
  set visible(bool visible) => $.visible = visible;
  set zoomControl(bool zoomControl) => $.zoomControl = zoomControl;
  set zoomControlOptions(ZoomControlOptions zoomControlOptions) => $.zoomControlOptions = zoomControlOptions;
}