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

@JsName('google.maps.StyledMapType')
abstract class StyledMapType extends MVCObject implements MapType {
  factory StyledMapType(
    List<MapTypeStyle?>? styles, [
    StyledMapTypeOptions? options, // ignore: unused_element
  ]) =>
      $js();
  String? alt;
  num? maxZoom;
  num? minZoom;
  String? name;
  Projection? projection;
  num? radius;
  Size? tileSize;
  Element? Function(Point? tileCoord, num? zoom, Document? ownerDocument)?
      getTile;
  void Function([
    Element? tile,
  ])? releaseTile;
}
