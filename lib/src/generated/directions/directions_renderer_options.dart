// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../directions.dart';

extension type DirectionsRendererOptions._(JSObject _) implements JSObject {
  external DirectionsRendererOptions({
    DirectionsResult? directions,
    bool? draggable,
    bool? hideRouteList,
    InfoWindow? infoWindow,
    Map? map,
    MarkerOptions? markerOptions,
    HTMLElement? panel,
    PolylineOptions? polylineOptions,
    bool? preserveViewport,
    num? routeIndex,
    bool? suppressBicyclingLayer,
    bool? suppressInfoWindows,
    bool? suppressMarkers,
    bool? suppressPolylines,
  });
  external DirectionsResult? directions;
  external bool? draggable;
  external bool? hideRouteList;
  external InfoWindow? infoWindow;
  external Map? map;
  external MarkerOptions? markerOptions;
  external HTMLElement? panel;
  external PolylineOptions? polylineOptions;
  external bool? preserveViewport;
  external num? routeIndex;
  external bool? suppressBicyclingLayer;
  external bool? suppressInfoWindows;
  external bool? suppressMarkers;
  external bool? suppressPolylines;
}
