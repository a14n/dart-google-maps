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

part of google_maps.src.drawing;

@JsName('google.maps.drawing.DrawingManager')
abstract class _DrawingManager extends MVCObject {
  factory _DrawingManager([DrawingManagerOptions options]) => null;

  OverlayType get drawingMode => _getDrawingMode();
  OverlayType _getDrawingMode();
  GMap get map => _getMap();
  GMap _getMap();
  set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  void _setDrawingMode(OverlayType drawingMode);
  set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  set options(DrawingManagerOptions options) => _setOptions(options);
  void _setOptions(DrawingManagerOptions options);

  Stream<Circle> get onCirclecomplete =>
      getStream(this, 'circlecomplete', (JsObject o) => Circle.created(o));
  Stream<Marker> get onMarkercomplete =>
      getStream(this, 'markercomplete', (JsObject o) => Marker.created(o));
  Stream<OverlayCompleteEvent> get onOverlaycomplete => getStream(
      this, 'overlaycomplete', (JsObject o) => OverlayCompleteEvent.created(o));
  Stream<Polygon> get onPolygoncomplete =>
      getStream(this, 'polygoncomplete', (JsObject o) => Polygon.created(o));
  Stream<Polyline> get onPolylinecomplete =>
      getStream(this, 'polylinecomplete', (JsObject o) => Polyline.created(o));
  Stream<Rectangle> get onRectanglecomplete => getStream(
      this, 'rectanglecomplete', (JsObject o) => Rectangle.created(o));
}
