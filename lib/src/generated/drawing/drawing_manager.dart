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

@JS('google.maps.drawing.DrawingManager')
extension type DrawingManager._(MVCObject _) implements MVCObject {
  external DrawingManager([
    DrawingManagerOptions? options,
  ]);
  @JS('getDrawingMode')
  external OverlayType? _getDrawingMode();
  OverlayType? get drawingMode => _getDrawingMode();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('setDrawingMode')
  external void _setDrawingMode(OverlayType? drawingMode);
  void set drawingMode(OverlayType? drawingMode) =>
      _setDrawingMode(drawingMode);
  @JS('setMap')
  external void _setMap(Map? map);
  void set map(Map? map) => _setMap(map);
  @JS('setOptions')
  external void _setOptions(DrawingManagerOptions options);
  void set options(DrawingManagerOptions options) => _setOptions(options);
  Stream<Circle> get onCirclecomplete {
    late StreamController<Circle> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'circlecomplete',
          ((Circle e) => sc.add(e)).toJS,
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
    late StreamController<Marker> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'markercomplete',
          ((Marker e) => sc.add(e)).toJS,
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
    late StreamController<OverlayCompleteEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'overlaycomplete',
          ((OverlayCompleteEvent e) => sc.add(e)).toJS,
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
    late StreamController<Polygon> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'polygoncomplete',
          ((Polygon e) => sc.add(e)).toJS,
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
    late StreamController<Polyline> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'polylinecomplete',
          ((Polyline e) => sc.add(e)).toJS,
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
    late StreamController<Rectangle> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'rectanglecomplete',
          ((Rectangle e) => sc.add(e)).toJS,
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
