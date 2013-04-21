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

part of google_maps_drawing;

class DrawingManagerOptions extends jsw.TypedProxy {
  static DrawingManagerOptions cast(js.Proxy proxy) => proxy == null ? null : new DrawingManagerOptions.fromProxy(proxy);

  DrawingManagerOptions() : super();
  DrawingManagerOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  CircleOptions get circleOptions => CircleOptions.cast($unsafe['circleOptions']);
  bool get drawingControl => $unsafe['drawingControl'];
  DrawingControlOptions get drawingControlOptions => DrawingControlOptions.cast($unsafe['drawingControlOptions']);
  OverlayType get drawingMode => OverlayType.find($unsafe['drawingMode']);
  GMap get map => GMap.cast($unsafe['map']);
  MarkerOptions get markerOptions => MarkerOptions.cast($unsafe['markerOptions']);
  PolygonOptions get polygonOptions => PolygonOptions.cast($unsafe['polygonOptions']);
  PolylineOptions get polylineOptions => PolylineOptions.cast($unsafe['polylineOptions']);
  RectangleOptions get rectangleOptions => RectangleOptions.cast($unsafe['rectangleOptions']);
  set circleOptions(CircleOptions circleOptions) => $unsafe['circleOptions'] = circleOptions;
  set drawingControl(bool drawingControl) => $unsafe['drawingControl'] = drawingControl;
  set drawingControlOptions(DrawingControlOptions drawingControlOptions) => $unsafe['drawingControlOptions'] = drawingControlOptions;
  set drawingMode(OverlayType drawingMode) => $unsafe['drawingMode'] = drawingMode;
  set map(GMap map) => $unsafe['map'] = map;
  set markerOptions(MarkerOptions markerOptions) => $unsafe['markerOptions'] = markerOptions;
  set polygonOptions(PolygonOptions polygonOptions) => $unsafe['polygonOptions'] = polygonOptions;
  set polylineOptions(PolylineOptions polylineOptions) => $unsafe['polylineOptions'] = polylineOptions;
  set rectangleOptions(RectangleOptions rectangleOptions) => $unsafe['rectangleOptions'] = rectangleOptions;
}