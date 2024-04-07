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

part of '../map.dart';

extension type MapOptions._(JSObject _) implements JSObject {
  external MapOptions({
    String? backgroundColor,
    LatLngOrLatLngLiteral? center,
    bool? clickableIcons,
    num? controlSize,
    bool? disableDefaultUI,
    bool? disableDoubleClickZoom,
    bool? draggable,
    String? draggableCursor,
    String? draggingCursor,
    bool? fullscreenControl,
    FullscreenControlOptions? fullscreenControlOptions,
    String? gestureHandling,
    num? heading,
    bool? headingInteractionEnabled,
    bool? isFractionalZoomEnabled,
    bool? keyboardShortcuts,
    String? mapId,
    bool? mapTypeControl,
    MapTypeControlOptions? mapTypeControlOptions,
    JSAny? /*(MapTypeId|string)?*/ mapTypeId,
    num? maxZoom,
    num? minZoom,
    bool? noClear,
    bool? panControl,
    PanControlOptions? panControlOptions,
    RenderingType? renderingType,
    MapRestriction? restriction,
    bool? rotateControl,
    RotateControlOptions? rotateControlOptions,
    bool? scaleControl,
    ScaleControlOptions? scaleControlOptions,
    bool? scrollwheel,
    StreetViewPanorama? streetView,
    bool? streetViewControl,
    StreetViewControlOptions? streetViewControlOptions,
    JSArray<MapTypeStyle>? styles,
    num? tilt,
    bool? tiltInteractionEnabled,
    num? zoom,
    bool? zoomControl,
    ZoomControlOptions? zoomControlOptions,
  });
  external String? backgroundColor;
  external LatLngOrLatLngLiteral? center;
  external bool? clickableIcons;
  external num? controlSize;
  external bool? disableDefaultUI;
  external bool? disableDoubleClickZoom;
  external bool? draggable;
  external String? draggableCursor;
  external String? draggingCursor;
  external bool? fullscreenControl;
  external FullscreenControlOptions? fullscreenControlOptions;
  external String? gestureHandling;
  external num? heading;
  external bool? headingInteractionEnabled;
  external bool? isFractionalZoomEnabled;
  external bool? keyboardShortcuts;
  external String? mapId;
  external bool? mapTypeControl;
  external MapTypeControlOptions? mapTypeControlOptions;
  external JSAny? /*(MapTypeId|string)?*/ mapTypeId;
  external num? maxZoom;
  external num? minZoom;
  external bool? noClear;
  external bool? panControl;
  external PanControlOptions? panControlOptions;
  external RenderingType? renderingType;
  external MapRestriction? restriction;
  external bool? rotateControl;
  external RotateControlOptions? rotateControlOptions;
  external bool? scaleControl;
  external ScaleControlOptions? scaleControlOptions;
  external bool? scrollwheel;
  external StreetViewPanorama? streetView;
  external bool? streetViewControl;
  external StreetViewControlOptions? streetViewControlOptions;
  external JSArray<MapTypeStyle>? styles;
  external num? tilt;
  external bool? tiltInteractionEnabled;
  external num? zoom;
  external bool? zoomControl;
  external ZoomControlOptions? zoomControlOptions;
}
