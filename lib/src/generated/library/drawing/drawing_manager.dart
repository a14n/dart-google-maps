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

class DrawingManager extends MVCObject {
  static DrawingManager cast(js.JsObject jsObject) => jsObject == null ? null : new DrawingManager.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider<Circle> _onCirclecomplete;
  jsw.SubscribeStreamProvider<Marker> _onMarkercomplete;
  jsw.SubscribeStreamProvider<OverlayCompleteEvent> _onOverlaycomplete;
  jsw.SubscribeStreamProvider<Polygon> _onPolygoncomplete;
  jsw.SubscribeStreamProvider<Polyline> _onPolylinecomplete;
  jsw.SubscribeStreamProvider<Rectangle> _onRectanglecomplete;

  DrawingManager([DrawingManagerOptions opts]) : super(maps['drawing']['DrawingManager'], [opts]) {
    _initStreams();
  }
  DrawingManager.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onCirclecomplete = event.getStreamProviderFor(this, "circlecomplete", Circle.cast);
    _onMarkercomplete = event.getStreamProviderFor(this, "markercomplete", Marker.cast);
    _onOverlaycomplete = event.getStreamProviderFor(this, "overlaycomplete", OverlayCompleteEvent.cast);
    _onPolygoncomplete = event.getStreamProviderFor(this, "polygoncomplete", Polygon.cast);
    _onPolylinecomplete = event.getStreamProviderFor(this, "polylinecomplete", Polyline.cast);
    _onRectanglecomplete = event.getStreamProviderFor(this, "rectanglecomplete", Rectangle.cast);
  }

  Stream<Circle> get onCirclecomplete => _onCirclecomplete.stream;
  Stream<Marker> get onMarkercomplete => _onMarkercomplete.stream;
  Stream<OverlayCompleteEvent> get onOverlaycomplete => _onOverlaycomplete.stream;
  Stream<Polygon> get onPolygoncomplete => _onPolygoncomplete.stream;
  Stream<Polyline> get onPolylinecomplete => _onPolylinecomplete.stream;
  Stream<Rectangle> get onRectanglecomplete => _onRectanglecomplete.stream;

  OverlayType get drawingMode => OverlayType.find($unsafe.callMethod('getDrawingMode'));
  GMap get map => GMap.cast($unsafe.callMethod('getMap'));
  set drawingMode(OverlayType drawingMode) => $unsafe.callMethod('setDrawingMode', [drawingMode]);
  set map(GMap map) => $unsafe.callMethod('setMap', [map]);
  set options(DrawingManagerOptions options) => $unsafe.callMethod('setOptions', [options]);
}
