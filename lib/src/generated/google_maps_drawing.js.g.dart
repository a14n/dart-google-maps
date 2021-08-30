// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

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

@JS()
library google_maps.drawing;

import 'dart:async' show StreamController;
import 'package:js_wrapping/js_wrapping.dart';
import 'package:google_maps/google_maps.dart';

@JS('google.maps.drawing.DrawingManager')
class DrawingManager extends MVCObject {
  external DrawingManager([
    DrawingManagerOptions? options, // ignore: unused_element
  ]);
}

extension DrawingManager$Ext on DrawingManager {
  OverlayType? get drawingMode => _getDrawingMode();
  GMap? get map => _getMap();
  set drawingMode(OverlayType? drawingMode) => _setDrawingMode(drawingMode);
  set map(GMap? map) => _setMap(map);
  set options(DrawingManagerOptions? options) => _setOptions(options);
  Stream<Circle> get onCirclecomplete {
    late StreamController<Circle> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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
    late StreamController<Marker> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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
    late StreamController<OverlayCompleteEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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
    late StreamController<Polygon> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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
    late StreamController<Polyline> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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
    late StreamController<Rectangle> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
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

  OverlayType? _getDrawingMode() => callMethod(this, 'getDrawingMode', []);

  GMap? _getMap() => callMethod(this, 'getMap', []);

  void _setDrawingMode(OverlayType? drawingMode) {
    callMethod(this, 'setDrawingMode', [drawingMode]);
  }

  void _setMap(GMap? map) {
    callMethod(this, 'setMap', [map]);
  }

  void _setOptions(DrawingManagerOptions? options) {
    callMethod(this, 'setOptions', [options]);
  }
}

@JS()
@anonymous
class DrawingManagerOptions {
  external factory DrawingManagerOptions();

  external CircleOptions? get circleOptions;

  external set circleOptions(CircleOptions? value);

  external bool? get drawingControl;

  external set drawingControl(bool? value);

  external DrawingControlOptions? get drawingControlOptions;

  external set drawingControlOptions(DrawingControlOptions? value);

  external OverlayType? get drawingMode;

  external set drawingMode(OverlayType? value);

  external GMap? get map;

  external set map(GMap? value);

  external MarkerOptions? get markerOptions;

  external set markerOptions(MarkerOptions? value);

  external PolygonOptions? get polygonOptions;

  external set polygonOptions(PolygonOptions? value);

  external PolylineOptions? get polylineOptions;

  external set polylineOptions(PolylineOptions? value);

  external RectangleOptions? get rectangleOptions;

  external set rectangleOptions(RectangleOptions? value);
}

@JS()
@anonymous
class DrawingControlOptions {
  external factory DrawingControlOptions();

  external ControlPosition? get position;

  external set position(ControlPosition? value);
}

extension DrawingControlOptions$Ext on DrawingControlOptions {
  List<OverlayType?>? get drawingModes =>
      getProperty(this, 'drawingModes')?.cast<OverlayType?>();

  set drawingModes(List<OverlayType?>? value) {
    setProperty(this, 'drawingModes', value);
  }
}

@JS()
@anonymous
class OverlayCompleteEvent {
  external factory OverlayCompleteEvent();

  external Object? /*Marker?|Polygon?|Polyline?|Rectangle?|Circle?*/ get overlay;

  external set overlay(
      Object? /*Marker?|Polygon?|Polyline?|Rectangle?|Circle?*/ value);

  external OverlayType? get type;

  external set type(OverlayType? value);
}

@JS('google.maps.drawing.OverlayType')
class OverlayType {
  external static OverlayType get CIRCLE;
  external static OverlayType get MARKER;
  external static OverlayType get POLYGON;
  external static OverlayType get POLYLINE;
  external static OverlayType get RECTANGLE;
}

OverlayType? OverlayType$cast(value) {
  if (value == OverlayType.CIRCLE) return OverlayType.CIRCLE;
  if (value == OverlayType.MARKER) return OverlayType.MARKER;
  if (value == OverlayType.POLYGON) return OverlayType.POLYGON;
  if (value == OverlayType.POLYLINE) return OverlayType.POLYLINE;
  if (value == OverlayType.RECTANGLE) return OverlayType.RECTANGLE;
  return null;
}
