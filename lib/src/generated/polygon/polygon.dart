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

part of '../polygon.dart';

@JS('google.maps.Polygon')
extension type Polygon._(MVCObject _) implements MVCObject {
  external Polygon([
    PolygonOptions? opts,
  ]);
  bool isDraggableDefined() => callMethod('getDraggable'.toJS) != null;

  @JS('getDraggable')
  external bool _getDraggable();
  bool get draggable => _getDraggable();
  @JS('getEditable')
  external bool _getEditable();
  bool get editable => _getEditable();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('getPath')
  external MVCArray<LatLng> _getPath();
  MVCArray<LatLng> get path => _getPath();
  @JS('getPaths')
  external MVCArray<MVCArray<LatLng>> _getPaths();
  MVCArray<MVCArray<LatLng>> get paths => _getPaths();
  @JS('getVisible')
  external bool _getVisible();
  bool get visible => _getVisible();
  @JS('setDraggable')
  external void _setDraggable(bool draggable);
  void set draggable(bool draggable) => _setDraggable(draggable);
  @JS('setEditable')
  external void _setEditable(bool editable);
  void set editable(bool editable) => _setEditable(editable);
  @JS('setMap')
  external void _setMap(Map? map);
  void set map(Map? map) => _setMap(map);
  @JS('setOptions')
  external void _setOptions(PolygonOptions? options);
  void set options(PolygonOptions? options) => _setOptions(options);
  @JS('setPath')
  external void _setPath(
      JSAny /*MVCArray<LatLng>|Array<LatLng|LatLngLiteral>*/ path);
  void set path(JSAny /*MVCArray<LatLng>|Array<LatLng|LatLngLiteral>*/ path) =>
      _setPath(path);
  @JS('setPaths')
  external void _setPaths(
      JSAny /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|Array<Array<LatLng|LatLngLiteral>>|Array<LatLng|LatLngLiteral>*/
          paths);
  void set paths(
          JSAny /*MVCArray<MVCArray<LatLng>>|MVCArray<LatLng>|Array<Array<LatLng|LatLngLiteral>>|Array<LatLng|LatLngLiteral>*/
              paths) =>
      _setPaths(paths);
  @JS('setVisible')
  external void _setVisible(bool visible);
  void set visible(bool visible) => _setVisible(visible);
  Stream<PolyMouseEvent> get onClick {
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'contextmenu',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'dblclick',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'drag',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'dragend',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'dragstart',
          ((MapMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mousedown',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mousemove',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseout',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseover',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseup',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
    late StreamController<PolyMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'rightclick',
          ((PolyMouseEvent e) => sc.add(e)).toJS,
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
