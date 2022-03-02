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
abstract class MapCanvasProjection {
  factory MapCanvasProjection() => $js();
  LatLng? fromContainerPixelToLatLng([
    Point? pixel,
    bool? noClampNoWrap,
  ]);
  LatLng? fromDivPixelToLatLng([
    Point? pixel,
    bool? noClampNoWrap,
  ]);
  Point? fromLatLngToContainerPixel(LatLng? latLng);
  Point? fromLatLngToDivPixel([
    LatLng? latLng,
  ]);

  // synthetic getter for getVisibleRegion
  VisibleRegion? get visibleRegion => _getVisibleRegion();
  @JsName('getVisibleRegion')
  VisibleRegion? _getVisibleRegion();

  // synthetic getter for getWorldWidth
  num? get worldWidth => _getWorldWidth();
  @JsName('getWorldWidth')
  num? _getWorldWidth();
}
