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

part of '../google_maps_local_context.dart';

@JsName()
@anonymous
abstract class _LocalContextMapViewOptions {
  factory _LocalContextMapViewOptions() => $js;
  num maxPlaceCount;
  List<PlaceTypePreference> placeTypePreferences;
  Object /*MapDirectionsOptions|MapDirectionsOptionsLiteral*/ directionsOptions;
  Element element;
  Object /*LatLng|LatLngBounds|Circle|String*/ locationBias;
  LatLngBounds locationRestriction;
  GMap map;
  Object /*PinOptions Function((bool isSelected, bool isHighlighted) p1)|PinOptions*/ pinOptionsSetup;
  Object /*PlaceChooserViewSetupOptions Function((PlaceChooserLayoutMode defaultLayoutMode, PlaceChooserPosition defaultPosition) p1)|PlaceChooserViewSetupOptions*/ placeChooserViewSetup;
  Object /*PlaceDetailsViewSetupOptions Function((PlaceDetailsLayoutMode defaultLayoutMode, PlaceDetailsPosition defaultPosition) p1)|PlaceDetailsViewSetupOptions*/ placeDetailsViewSetup;
}
