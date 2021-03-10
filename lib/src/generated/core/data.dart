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

@JsName('google.maps.Data')
abstract class Data extends MVCObject {
  factory Data([
    DataDataOptions? options, // ignore: unused_element
  ]) =>
      $js();
  DataFeature? add([
    Object? /*DataFeature?|DataFeatureOptions?*/ feature,
  ]);
  List<DataFeature?>? addGeoJson(
    Object? geoJson, [
    DataGeoJsonOptions? options,
  ]);
  bool? contains(DataFeature? feature);
  void forEach(void Function(DataFeature? p1)? callback);

  // synthetic getter for getControlPosition
  ControlPosition? get controlPosition => _getControlPosition();
  @JsName('getControlPosition')
  ControlPosition? _getControlPosition();

  // synthetic getter for getControls
  List<String?>? get controls => _getControls();
  @JsName('getControls')
  List<String?>? _getControls();

  // synthetic getter for getDrawingMode
  String? get drawingMode => _getDrawingMode();
  @JsName('getDrawingMode')
  String? _getDrawingMode();

  DataFeature? getFeatureById(Object? /*num?|String?*/ id);

  // synthetic getter for getMap
  GMap? get map => _getMap();
  @JsName('getMap')
  GMap? _getMap();

  // synthetic getter for getStyle
  Object? /*DataStylingFunction?|DataStyleOptions?*/ get style => _getStyle();
  @JsName('getStyle')
  Object? /*DataStylingFunction?|DataStyleOptions?*/ _getStyle();

  void loadGeoJson(
    String? url, [
    DataGeoJsonOptions? options,
    void Function(List<DataFeature?>? p1)? callback,
  ]);
  void overrideStyle(DataFeature? feature, DataStyleOptions? style);
  void remove(DataFeature? feature);
  void revertStyle([
    DataFeature? feature,
  ]);

  // synthetic setter for setControlPosition
  set controlPosition(ControlPosition? controlPosition) =>
      _setControlPosition(controlPosition);
  @JsName('setControlPosition')
  void _setControlPosition(ControlPosition? controlPosition);

  // synthetic setter for setControls
  set controls(List<String?>? controls) => _setControls(controls);
  @JsName('setControls')
  void _setControls(List<String?>? controls);

  // synthetic setter for setDrawingMode
  set drawingMode(String? drawingMode) => _setDrawingMode(drawingMode);
  @JsName('setDrawingMode')
  void _setDrawingMode(String? drawingMode);

  // synthetic setter for setMap
  set map(GMap? map) => _setMap(map);
  @JsName('setMap')
  void _setMap(GMap? map);

  // synthetic setter for setStyle
  set style(Object? /*DataStylingFunction?|DataStyleOptions?*/ style) =>
      _setStyle(style);
  @JsName('setStyle')
  void _setStyle(Object? /*DataStylingFunction?|DataStyleOptions?*/ style);

  void toGeoJson(void Function(Object? p1)? callback);
  Stream<DataAddFeatureEvent> get onAddfeature {
    late StreamController<DataAddFeatureEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'addfeature',
          (DataAddFeatureEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'click',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'contextmenu',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'dblclick',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'mousedown',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseout',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseover',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'mouseup',
          (DataMouseEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'removefeature',
          (DataRemoveFeatureEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'removeproperty',
          (DataRemovePropertyEvent event) => sc.add(event),
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

  Stream<DataMouseEvent> get onRightclick {
    late StreamController<DataMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'rightclick',
          (DataMouseEvent event) => sc.add(event),
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

  Stream<DataSetGeometryEvent> get onSetgeometry {
    late StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'setgeometry',
          (DataSetGeometryEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'setproperty',
          (DataSetPropertyEvent event) => sc.add(event),
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
}
