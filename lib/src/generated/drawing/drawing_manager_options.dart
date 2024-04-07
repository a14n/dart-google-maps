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

part of '../drawing.dart';

extension type DrawingManagerOptions._(JSObject _) implements JSObject {
  external DrawingManagerOptions({
    CircleOptions? circleOptions,
    bool? drawingControl,
    DrawingControlOptions? drawingControlOptions,
    OverlayType? drawingMode,
    Map? map,
    MarkerOptions? markerOptions,
    PolygonOptions? polygonOptions,
    PolylineOptions? polylineOptions,
    RectangleOptions? rectangleOptions,
  });
  external CircleOptions? circleOptions;
  external bool? drawingControl;
  external DrawingControlOptions? drawingControlOptions;
  external OverlayType? drawingMode;
  external Map? map;
  external MarkerOptions? markerOptions;
  external PolygonOptions? polygonOptions;
  external PolylineOptions? polylineOptions;
  external RectangleOptions? rectangleOptions;
}
