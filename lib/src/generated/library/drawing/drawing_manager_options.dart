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
  static DrawingManagerOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new DrawingManagerOptions.fromJsObject(jsObject);
  DrawingManagerOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DrawingManagerOptions()
      : super();

  set circleOptions(CircleOptions circleOptions) => $unsafe['circleOptions'] = circleOptions == null ? null : circleOptions.$unsafe;
  CircleOptions get circleOptions => CircleOptions.$wrap($unsafe['circleOptions']);
  set drawingControl(bool drawingControl) => $unsafe['drawingControl'] = drawingControl;
  bool get drawingControl => $unsafe['drawingControl'];
  set drawingControlOptions(DrawingControlOptions drawingControlOptions) => $unsafe['drawingControlOptions'] = drawingControlOptions == null ? null : drawingControlOptions.$unsafe;
  DrawingControlOptions get drawingControlOptions => DrawingControlOptions.$wrap($unsafe['drawingControlOptions']);
  set drawingMode(OverlayType drawingMode) => $unsafe['drawingMode'] = drawingMode == null ? null : drawingMode.$unsafe;
  OverlayType get drawingMode => OverlayType.$wrap($unsafe['drawingMode']);
  set map(GMap map) => $unsafe['map'] = map == null ? null : map.$unsafe;
  GMap get map => GMap.$wrap($unsafe['map']);
  set markerOptions(MarkerOptions markerOptions) => $unsafe['markerOptions'] = markerOptions == null ? null : markerOptions.$unsafe;
  MarkerOptions get markerOptions => MarkerOptions.$wrap($unsafe['markerOptions']);
  set polygonOptions(PolygonOptions polygonOptions) => $unsafe['polygonOptions'] = polygonOptions == null ? null : polygonOptions.$unsafe;
  PolygonOptions get polygonOptions => PolygonOptions.$wrap($unsafe['polygonOptions']);
  set polylineOptions(PolylineOptions polylineOptions) => $unsafe['polylineOptions'] = polylineOptions == null ? null : polylineOptions.$unsafe;
  PolylineOptions get polylineOptions => PolylineOptions.$wrap($unsafe['polylineOptions']);
  set rectangleOptions(RectangleOptions rectangleOptions) => $unsafe['rectangleOptions'] = rectangleOptions == null ? null : rectangleOptions.$unsafe;
  RectangleOptions get rectangleOptions => RectangleOptions.$wrap($unsafe['rectangleOptions']);
}
