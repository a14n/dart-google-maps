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

part of '../google_maps_drawing.dart';

@JsName('google.maps.drawing.DrawingManager')
abstract class DrawingManager extends MVCObject {
  factory DrawingManager([
    DrawingManagerOptions options, // ignore: unused_element
  ]) =>
      $js;

  // synthetic getter for getDrawingMode
  OverlayType get drawingMode => _getDrawingMode();
  @JsName('getDrawingMode')
  OverlayType _getDrawingMode();

  // synthetic getter for getMap
  GMap get map => _getMap();
  @JsName('getMap')
  GMap _getMap();

  // synthetic setter for setDrawingMode
  set drawingMode(OverlayType drawingMode) => _setDrawingMode(drawingMode);
  @JsName('setDrawingMode')
  void _setDrawingMode(OverlayType drawingMode);

  // synthetic setter for setMap
  set map(GMap map) => _setMap(map);
  @JsName('setMap')
  void _setMap(GMap map);

  // synthetic setter for setOptions
  set options(DrawingManagerOptions options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(DrawingManagerOptions options);

  Stream<Circle> get onCirclecomplete {
    StreamController<Circle> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'circlecomplete',
          (Circle circle) => sc.add(circle),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Circle>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Marker> get onMarkercomplete {
    StreamController<Marker> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'markercomplete',
          (Marker marker) => sc.add(marker),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Marker>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<OverlayCompleteEvent> get onOverlaycomplete {
    StreamController<OverlayCompleteEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'overlaycomplete',
          (OverlayCompleteEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<OverlayCompleteEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Polygon> get onPolygoncomplete {
    StreamController<Polygon> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'polygoncomplete',
          (Polygon polygon) => sc.add(polygon),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Polygon>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Polyline> get onPolylinecomplete {
    StreamController<Polyline> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'polylinecomplete',
          (Polyline polyline) => sc.add(polyline),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Polyline>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<Rectangle> get onRectanglecomplete {
    StreamController<Rectangle> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rectanglecomplete',
          (Rectangle rectangle) => sc.add(rectangle),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<Rectangle>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
