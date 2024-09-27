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

part of '../data_driven_styling.dart';

extension type FeatureLayer._(JSObject _) implements JSObject {
  external FeatureLayer({
    FeatureType featureType,
    bool isAvailable,
    String? datasetId,
    JSAny? /*(FeatureStyleOptions|FeatureStyleFunction)?*/ style,
  });
  external FeatureType featureType;
  external bool isAvailable;
  external String? datasetId;
  external JSAny? /*(FeatureStyleOptions|FeatureStyleFunction)?*/ style;
  external MapsEventListener addListener(
    String eventName,
    JSFunction handler,
  );
  Stream<FeatureMouseEvent> get onClick {
    late StreamController<FeatureMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'click',
          ((FeatureMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FeatureMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<FeatureMouseEvent> get onMousemove {
    late StreamController<FeatureMouseEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'mousemove',
          ((FeatureMouseEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<FeatureMouseEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
