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

@JS('google.maps.Data.Feature')
extension type DataFeature._(JSObject _) implements JSObject {
  external DataFeature([
    DataFeatureOptions? options,
  ]);
  external void forEachProperty(
    JSFunction /*void Function(JSAny?,String)*/ callback,
  );
  @JS('getGeometry')
  external DataGeometry _getGeometry();
  DataGeometry get geometry => _getGeometry();
  @JS('getId')
  external JSAny? /*number|string|undefined*/ _getId();
  JSAny? /*number|string|undefined*/ get id => _getId();
  external JSAny? getProperty(
    String name,
  );
  external void removeProperty(
    String name,
  );
  @JS('setGeometry')
  external void _setGeometry(
      JSAny /*Data.Geometry|LatLng|LatLngLiteral*/ newGeometry);
  void set geometry(JSAny /*Data.Geometry|LatLng|LatLngLiteral*/ newGeometry) =>
      _setGeometry(newGeometry);
  external void setProperty(
    String name,
    JSAny? newValue,
  );
  external void toGeoJson(
    JSFunction /*void Function(JSObject/*Object<null>*/)*/ callback,
  );
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
}
