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

@wrapper abstract class StreetViewPanoramaOptions extends jsw.TypedJsObject {
  StreetViewPanoramaOptions() : super();

  bool addressControl;
  StreetViewAddressControlOptions addressControlOptions;
  bool clickToGo;
  bool disableDoubleClickZoom;
  bool enableCloseButton;
  bool imageDateControl;
  bool linksControl;
  bool panControl;
  PanControlOptions panControlOptions;
  String pano;
  PanoProvider get panoProvider => $unsafe['panoProvider'];
  set panoProvider(PanoProvider panoProvider);
  LatLng position;
  StreetViewPov pov;
  bool scrollwheel;
  bool visible;
  bool zoomControl;
  ZoomControlOptions zoomControlOptions;
}
