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

class DrawingManagerOptions extends jsw.TypedJsObject {
  static DrawingManagerOptions cast(js.JsObject jsObject) => jsObject == null ? null : new DrawingManagerOptions.fromJsObject(jsObject);
  DrawingManagerOptions.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  DrawingManagerOptions() : super();

  set circleOptions(CircleOptions circleOptions) => $unsafe['circleOptions'] = circleOptions;
  CircleOptions get circleOptions => CircleOptions.cast($unsafe['circleOptions']);
  set drawingControl(bool drawingControl) => $unsafe['drawingControl'] = drawingControl;
  bool get drawingControl => $unsafe['drawingControl'];
  set drawingControlOptions(DrawingControlOptions drawingControlOptions) => $unsafe['drawingControlOptions'] = drawingControlOptions;
  DrawingControlOptions get drawingControlOptions => DrawingControlOptions.cast($unsafe['drawingControlOptions']);
  set drawingMode(OverlayType drawingMode) => $unsafe['drawingMode'] = drawingMode;
  OverlayType get drawingMode => OverlayType.find($unsafe['drawingMode']);
  set map(GMap map) => $unsafe['map'] = map;
  GMap get map => GMap.cast($unsafe['map']);
  set markerOptions(MarkerOptions markerOptions) => $unsafe['markerOptions'] = markerOptions;
  MarkerOptions get markerOptions => MarkerOptions.cast($unsafe['markerOptions']);
  set polygonOptions(PolygonOptions polygonOptions) => $unsafe['polygonOptions'] = polygonOptions;
  PolygonOptions get polygonOptions => PolygonOptions.cast($unsafe['polygonOptions']);
  set polylineOptions(PolylineOptions polylineOptions) => $unsafe['polylineOptions'] = polylineOptions;
  PolylineOptions get polylineOptions => PolylineOptions.cast($unsafe['polylineOptions']);
  set rectangleOptions(RectangleOptions rectangleOptions) => $unsafe['rectangleOptions'] = rectangleOptions;
  RectangleOptions get rectangleOptions => RectangleOptions.cast($unsafe['rectangleOptions']);
}
