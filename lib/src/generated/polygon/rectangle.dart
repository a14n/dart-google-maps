// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../polygon.dart';

@JS('google.maps.Rectangle')
extension type Rectangle._(MVCObject _) implements MVCObject {
  external Rectangle([
    RectangleOptions? opts,
  ]);
  @JS('getBounds')
  external LatLngBounds? _getBounds();
  LatLngBounds? get bounds => _getBounds();
  @JS('getDraggable')
  external bool _getDraggable();
  bool get draggable => _getDraggable();
  @JS('getEditable')
  external bool _getEditable();
  bool get editable => _getEditable();
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('getVisible')
  external bool _getVisible();
  bool get visible => _getVisible();
  @JS('setBounds')
  external void _setBounds(LatLngBoundsOrLatLngBoundsLiteral? bounds);
  set bounds(LatLngBoundsOrLatLngBoundsLiteral? bounds) => _setBounds(bounds);
  @JS('setDraggable')
  external void _setDraggable(bool draggable);
  set draggable(bool draggable) => _setDraggable(draggable);
  @JS('setEditable')
  external void _setEditable(bool editable);
  set editable(bool editable) => _setEditable(editable);
  @JS('setMap')
  external void _setMap(Map? map);
  set map(Map? map) => _setMap(map);
  @JS('setOptions')
  external void _setOptions(RectangleOptions? options);
  set options(RectangleOptions? options) => _setOptions(options);
  @JS('setVisible')
  external void _setVisible(bool visible);
  set visible(bool visible) => _setVisible(visible);
  Stream<void> get onBoundsChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'bounds_changed',
          (() => sc.add(null)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<MapMouseEvent> get onClick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
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

  Stream<MapMouseEvent> get onContextmenu {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'contextmenu',
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

  Stream<MapMouseEvent> get onDblclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'dblclick',
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

  Stream<MapMouseEvent> get onMousedown {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mousedown',
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

  Stream<MapMouseEvent> get onMousemove {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mousemove',
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

  Stream<MapMouseEvent> get onMouseout {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseout',
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

  Stream<MapMouseEvent> get onMouseover {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseover',
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

  Stream<MapMouseEvent> get onMouseup {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseup',
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

  Stream<MapMouseEvent> get onRightclick {
    late StreamController<MapMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'rightclick',
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
}
