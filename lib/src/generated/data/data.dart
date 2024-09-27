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

part of '../data.dart';

@JS('google.maps.Data')
extension type Data._(MVCObject _) implements MVCObject {
  external Data([
    DataDataOptions? options,
  ]);
  external DataFeature add([
    JSAny? /*(Data.Feature|Data.FeatureOptions)?*/ feature,
  ]);
  external JSArray<DataFeature> addGeoJson(
    JSObject /*Object<null>*/ geoJson, [
    DataGeoJsonOptions? options,
  ]);
  external bool contains(
    DataFeature feature,
  );
  external void forEach(
    JSFunction /*void Function(DataFeature)*/ callback,
  );
  @JS('getControlPosition')
  external ControlPosition _getControlPosition();
  ControlPosition get controlPosition => _getControlPosition();
  @JS('getControls')
  external JSArray<JSString> _getControls();
  JSArray<JSString> get controls => _getControls();
  @JS('getDrawingMode')
  external String? _getDrawingMode();
  String? get drawingMode => _getDrawingMode();
  external DataFeature? getFeatureById(
    JSAny /*number|string*/ id,
  );
  @JS('getMap')
  external Map? _getMap();
  Map? get map => _getMap();
  @JS('getStyle')
  external JSAny /*Data.StylingFunction|Data.StyleOptions*/ _getStyle();
  JSAny /*Data.StylingFunction|Data.StyleOptions*/ get style => _getStyle();
  external void loadGeoJson(
    String url, [
    DataGeoJsonOptions? options,
    JSFunction /*void Function(JSArray<DataFeature>)*/ ? callback,
  ]);
  external void overrideStyle(
    DataFeature feature,
    DataStyleOptions style,
  );
  external void remove(
    DataFeature feature,
  );
  external void revertStyle([
    DataFeature? feature,
  ]);
  @JS('setControlPosition')
  external void _setControlPosition(ControlPosition controlPosition);
  set controlPosition(ControlPosition controlPosition) =>
      _setControlPosition(controlPosition);
  @JS('setControls')
  external void _setControls(JSArray<JSString> controls);
  set controls(JSArray<JSString> controls) => _setControls(controls);
  @JS('setDrawingMode')
  external void _setDrawingMode(String? drawingMode);
  set drawingMode(String? drawingMode) => _setDrawingMode(drawingMode);
  @JS('setMap')
  external void _setMap(Map? map);
  set map(Map? map) => _setMap(map);
  @JS('setStyle')
  external void _setStyle(
      JSAny /*Data.StylingFunction|Data.StyleOptions*/ style);
  set style(JSAny /*Data.StylingFunction|Data.StyleOptions*/ style) =>
      _setStyle(style);
  external void toGeoJson(
    JSFunction /*void Function(JSObject/*Object<null>*/)*/ callback,
  );
  Stream<DataAddFeatureEvent> get onAddfeature {
    late StreamController<DataAddFeatureEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'addfeature',
          ((DataAddFeatureEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataAddFeatureEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onClick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onContextmenu {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'contextmenu',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onDblclick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'dblclick',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMousedown {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mousedown',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseout {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseout',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseover {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseover',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onMouseup {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mouseup',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataRemoveFeatureEvent> get onRemovefeature {
    late StreamController<DataRemoveFeatureEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'removefeature',
          ((DataRemoveFeatureEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemoveFeatureEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataRemovePropertyEvent> get onRemoveproperty {
    late StreamController<DataRemovePropertyEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'removeproperty',
          ((DataRemovePropertyEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataRemovePropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetGeometryEvent> get onSetgeometry {
    late StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'setgeometry',
          ((DataSetGeometryEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetGeometryEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataSetPropertyEvent> get onSetproperty {
    late StreamController<DataSetPropertyEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'setproperty',
          ((DataSetPropertyEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataSetPropertyEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<DataMouseEvent> get onRightclick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'rightclick',
          ((DataMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<DataMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
