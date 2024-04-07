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

part of '../street_view.dart';

extension type StreetViewPanoramaOptions._(JSObject _) implements JSObject {
  external StreetViewPanoramaOptions({
    bool? addressControl,
    StreetViewAddressControlOptions? addressControlOptions,
    bool? clickToGo,
    num? controlSize,
    bool? disableDefaultUI,
    bool? disableDoubleClickZoom,
    bool? enableCloseButton,
    bool? fullscreenControl,
    FullscreenControlOptions? fullscreenControlOptions,
    bool? imageDateControl,
    bool? linksControl,
    bool? motionTracking,
    bool? motionTrackingControl,
    MotionTrackingControlOptions? motionTrackingControlOptions,
    bool? panControl,
    PanControlOptions? panControlOptions,
    String? pano,
    LatLngOrLatLngLiteral? position,
    StreetViewPov? pov,
    bool? scrollwheel,
    bool? showRoadLabels,
    bool? visible,
    num? zoom,
    bool? zoomControl,
    ZoomControlOptions? zoomControlOptions,
  });
  external bool? addressControl;
  external StreetViewAddressControlOptions? addressControlOptions;
  external bool? clickToGo;
  external num? controlSize;
  external bool? disableDefaultUI;
  external bool? disableDoubleClickZoom;
  external bool? enableCloseButton;
  external bool? fullscreenControl;
  external FullscreenControlOptions? fullscreenControlOptions;
  external bool? imageDateControl;
  external bool? linksControl;
  external bool? motionTracking;
  external bool? motionTrackingControl;
  external MotionTrackingControlOptions? motionTrackingControlOptions;
  external bool? panControl;
  external PanControlOptions? panControlOptions;
  external String? pano;
  external LatLngOrLatLngLiteral? position;
  external StreetViewPov? pov;
  external bool? scrollwheel;
  external bool? showRoadLabels;
  external bool? visible;
  external num? zoom;
  external bool? zoomControl;
  external ZoomControlOptions? zoomControlOptions;
}
