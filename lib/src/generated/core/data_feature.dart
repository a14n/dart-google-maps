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

@JsName('google.maps.Data.Feature')
abstract class _DataFeature {
  factory _DataFeature([
    DataFeatureOptions options, // ignore: unused_element
  ]) =>
      $js;
  void forEachProperty(void Function(Object p1, String p2) callback);

  // synthetic getter for getGeometry
  DataGeometry get geometry => _getGeometry();
  @JsName('getGeometry')
  DataGeometry _getGeometry();

  // synthetic getter for getId
  Object /*num|String*/ get id => _getId();
  @JsName('getId')
  Object /*num|String*/ _getId();

  Object getProperty(String name);
  void removeProperty(String name);

  // synthetic setter for setGeometry
  set geometry(Object /*DataGeometry|LatLng*/ geometry) =>
      _setGeometry(geometry);
  @JsName('setGeometry')
  void _setGeometry(Object /*DataGeometry|LatLng*/ newGeometry);

  void setProperty(String name, Object newValue);
  void toGeoJson(void Function(Object p1) callback);
  Stream<DataRemovePropertyEvent> get onRemoveproperty {
    StreamController<DataRemovePropertyEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
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

  Stream<DataSetGeometryEvent> get onSetgeometry {
    StreamController<DataSetGeometryEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
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
    StreamController<DataSetPropertyEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
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
