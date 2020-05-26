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

part of '../google_maps_core.dart';

@JsName()
@anonymous
abstract class _MapOptions {
  factory _MapOptions() => $js;
  String backgroundColor;
  LatLng center;
  bool clickableIcons;
  num controlSize;
  bool disableDefaultUI;
  bool disableDoubleClickZoom;
  bool draggable;
  String draggableCursor;
  String draggingCursor;
  bool fullscreenControl;
  FullscreenControlOptions fullscreenControlOptions;
  String gestureHandling;
  num heading;
  bool keyboardShortcuts;
  bool mapTypeControl;
  MapTypeControlOptions mapTypeControlOptions;
  Object /*MapTypeId|String*/ mapTypeId;
  num maxZoom;
  num minZoom;
  bool noClear;
  bool panControl;
  PanControlOptions panControlOptions;
  MapRestriction restriction;
  bool rotateControl;
  RotateControlOptions rotateControlOptions;
  bool scaleControl;
  ScaleControlOptions scaleControlOptions;
  bool scrollwheel;
  StreetViewPanorama streetView;
  bool streetViewControl;
  StreetViewControlOptions streetViewControlOptions;
  List<MapTypeStyle> styles;
  num tilt;
  num zoom;
  bool zoomControl;
  ZoomControlOptions zoomControlOptions;
}
