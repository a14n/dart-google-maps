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

part of '../google_maps_core.dart';

@JsName('google.maps.Polyline')
abstract class Polyline extends MVCObject {
  factory Polyline([
    PolylineOptions opts, // ignore: unused_element
  ]) =>
      $js;

  // synthetic getter for getDraggable
  bool get draggable => _getDraggable();
  @JsName('getDraggable')
  bool _getDraggable();

  // synthetic getter for getEditable
  bool get editable => _getEditable();
  @JsName('getEditable')
  bool _getEditable();

  // synthetic getter for getMap
  GMap get map => _getMap();
  @JsName('getMap')
  GMap _getMap();

  // synthetic getter for getPath
  MVCArray<LatLng> get path => _getPath();
  @JsName('getPath')
  MVCArray<LatLng> _getPath();

  // synthetic getter for getVisible
  bool get visible => _getVisible();
  @JsName('getVisible')
  bool _getVisible();

  // synthetic setter for setDraggable
  set draggable(bool draggable) => _setDraggable(draggable);
  @JsName('setDraggable')
  void _setDraggable(bool draggable);

  // synthetic setter for setEditable
  set editable(bool editable) => _setEditable(editable);
  @JsName('setEditable')
  void _setEditable(bool editable);

  // synthetic setter for setMap
  set map(GMap map) => _setMap(map);
  @JsName('setMap')
  void _setMap(GMap map);

  // synthetic setter for setOptions
  set options(PolylineOptions options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(PolylineOptions options);

  // synthetic setter for setPath
  set path(Object /*MVCArray<LatLng>|List<LatLng>*/ path) => _setPath(path);
  @JsName('setPath')
  void _setPath(Object /*MVCArray<LatLng>|List<LatLng>*/ path);

  // synthetic setter for setVisible
  set visible(bool visible) => _setVisible(visible);
  @JsName('setVisible')
  void _setVisible(bool visible);

  Stream<PolyMouseEvent> get onClick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onContextmenu {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onDblclick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDrag {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'drag',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragend {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragend',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onDragstart {
    StreamController<MapMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'dragstart',
          (MapMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<MapMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousedown {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMousemove {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousemove',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseout {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseover {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onMouseup {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<PolyMouseEvent> get onRightclick {
    StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (PolyMouseEvent event) => sc.add(event),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<PolyMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
