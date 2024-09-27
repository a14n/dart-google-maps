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

part of '../marker.dart';

@JS('google.maps.Marker')
extension type Marker._(MVCObject _) implements MVCObject {
  external Marker([
    MarkerOptions? opts,
  ]);
  bool isDraggableDefined() => callMethod('getDraggable'.toJS) != null;

  external static int get MAX_ZINDEX;
  @JS('getAnimation')
  external Animation? _getAnimation();
  Animation? get animation => _getAnimation();
  @JS('getClickable')
  external bool _getClickable();
  bool get clickable => _getClickable();
  @JS('getCursor')
  external String? _getCursor();
  String? get cursor => _getCursor();
  @JS('getDraggable')
  external bool _getDraggable();
  bool get draggable => _getDraggable();
  @JS('getIcon')
  external JSAny? /*string|Icon|Symbol|null|undefined*/ _getIcon();
  JSAny? /*string|Icon|Symbol|null|undefined*/ get icon => _getIcon();
  @JS('getLabel')
  external JSAny? /*MarkerLabel|string|null|undefined*/ _getLabel();
  JSAny? /*MarkerLabel|string|null|undefined*/ get label => _getLabel();
  @JS('getMap')
  external JSAny? /*Map|StreetViewPanorama|null*/ _getMap();
  JSAny? /*Map|StreetViewPanorama|null*/ get map => _getMap();
  @JS('getOpacity')
  external num? _getOpacity();
  num? get opacity => _getOpacity();
  @JS('getPosition')
  external LatLng? _getPosition();
  LatLng? get position => _getPosition();
  @JS('getShape')
  external MarkerShape? _getShape();
  MarkerShape? get shape => _getShape();
  @JS('getTitle')
  external String? _getTitle();
  String? get title => _getTitle();
  @JS('getVisible')
  external bool _getVisible();
  bool get visible => _getVisible();
  @JS('getZIndex')
  external num? _getZIndex();
  num? get zIndex => _getZIndex();
  @JS('setAnimation')
  external void _setAnimation(Animation? animation);
  set animation(Animation? animation) => _setAnimation(animation);
  @JS('setClickable')
  external void _setClickable(bool flag);
  set clickable(bool flag) => _setClickable(flag);
  @JS('setCursor')
  external void _setCursor(String? cursor);
  set cursor(String? cursor) => _setCursor(cursor);
  @JS('setDraggable')
  external void _setDraggable(bool? flag);
  set draggable(bool? flag) => _setDraggable(flag);
  @JS('setIcon')
  external void _setIcon(JSAny? /*(string|Icon|Symbol)?*/ icon);
  set icon(JSAny? /*(string|Icon|Symbol)?*/ icon) => _setIcon(icon);
  @JS('setLabel')
  external void _setLabel(JSAny? /*(string|MarkerLabel)?*/ label);
  set label(JSAny? /*(string|MarkerLabel)?*/ label) => _setLabel(label);
  @JS('setMap')
  external void _setMap(JSAny? /*Map|StreetViewPanorama|null*/ map);
  set map(JSAny? /*Map|StreetViewPanorama|null*/ map) => _setMap(map);
  @JS('setOpacity')
  external void _setOpacity(num? opacity);
  set opacity(num? opacity) => _setOpacity(opacity);
  @JS('setOptions')
  external void _setOptions(MarkerOptions options);
  set options(MarkerOptions options) => _setOptions(options);
  @JS('setPosition')
  external void _setPosition(LatLngOrLatLngLiteral? latlng);
  set position(LatLngOrLatLngLiteral? latlng) => _setPosition(latlng);
  @JS('setShape')
  external void _setShape(MarkerShape? shape);
  set shape(MarkerShape? shape) => _setShape(shape);
  @JS('setTitle')
  external void _setTitle(String? title);
  set title(String? title) => _setTitle(title);
  @JS('setVisible')
  external void _setVisible(bool visible);
  set visible(bool visible) => _setVisible(visible);
  @JS('setZIndex')
  external void _setZIndex(num? zIndex);
  set zIndex(num? zIndex) => _setZIndex(zIndex);
  Stream<void> get onAnimationChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'animation_changed',
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

  Stream<void> get onClickableChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'clickable_changed',
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

  Stream<void> get onCursorChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'cursor_changed',
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

  Stream<void> get onDraggableChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'draggable_changed',
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

  Stream<void> get onFlatChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'flat_changed',
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

  Stream<void> get onIconChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'icon_changed',
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

  Stream<void> get onPositionChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'position_changed',
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

  Stream<void> get onShapeChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'shape_changed',
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

  Stream<void> get onTitleChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'title_changed',
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

  Stream<void> get onVisibleChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'visible_changed',
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

  Stream<void> get onZindexChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'zindex_changed',
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
