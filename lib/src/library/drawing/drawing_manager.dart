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
  static DrawingManager cast(js.Proxy proxy) => proxy == null ? null : new DrawingManager.fromProxy(proxy);

  SubscribeStreamProvider<Circle> _onCirclecomplete;
  SubscribeStreamProvider<Marker> _onMarkercomplete;
  SubscribeStreamProvider<OverlayCompleteEvent> _onOverlaycomplete;
  SubscribeStreamProvider<Polygon> _onPolygoncomplete;
  SubscribeStreamProvider<Polyline> _onPolylinecomplete;
  SubscribeStreamProvider<Rectangle> _onRectanglecomplete;

  DrawingManager([DrawingManagerOptions opts]) : super(maps.drawing.DrawingManager, [opts]) { _initStreams(); }
  DrawingManager.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

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

  OverlayType get drawingMode => OverlayType.find($unsafe.getDrawingMode());
  GMap get map => GMap.cast($unsafe.getMap());
  set drawingMode(OverlayType drawingMode) => $unsafe.setDrawingMode(drawingMode);
  set map(GMap map) => $unsafe.setMap(map);
  set options(DrawingManagerOptions options) => $unsafe.setOptions(options);

  /// deprecated : use onXxx stream.
  @deprecated DrawingManagerEvents get on => new DrawingManagerEvents._(this);
}

@deprecated
class DrawingManagerEvents {
  static final CIRCLECOMPLETE = "circlecomplete";
  static final MARKERCOMPLETE = "markercomplete";
  static final OVERLAYCOMPLETE = "overlaycomplete";
  static final POLYGONCOMPLETE = "polygoncomplete";
  static final POLYLINECOMPLETE = "polylinecomplete";
  static final RECTANGLECOMPLETE = "rectanglecomplete";

  final DrawingManager _drawingManager;

  DrawingManagerEvents._(this._drawingManager);

  CircleCompleteEventListenerAdder get circleComplete => new CircleCompleteEventListenerAdder(_drawingManager, CIRCLECOMPLETE);
  MarkerCompleteEventListenerAdder get markerComplete => new MarkerCompleteEventListenerAdder(_drawingManager, MARKERCOMPLETE);
  OverlayCompleteEventListenerAdder get overlayComplete => new OverlayCompleteEventListenerAdder(_drawingManager, OVERLAYCOMPLETE);
  PolygonCompleteEventListenerAdder get polygonComplete => new PolygonCompleteEventListenerAdder(_drawingManager, POLYGONCOMPLETE);
  PolylineCompleteEventListenerAdder get polylineComplete => new PolylineCompleteEventListenerAdder(_drawingManager, POLYLINECOMPLETE);
  RectangleCompleteEventListenerAdder get rectangleComplete => new RectangleCompleteEventListenerAdder(_drawingManager, RECTANGLECOMPLETE);
}