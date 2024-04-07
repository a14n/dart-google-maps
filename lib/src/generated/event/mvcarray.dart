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

part of '../event.dart';

@JS('google.maps.MVCArray')
extension type MVCArray<T extends JSAny?>._(MVCObject _) implements MVCObject {
  external MVCArray([
    JSArray<T>? array,
  ]);
  external void clear();
  external void forEach(
    JSFunction /*void Function(T,num)*/ callback,
  );
  @JS('getArray')
  external JSArray<T> _getArray();
  JSArray<T> get array => _getArray();
  external T getAt(
    num i,
  );
  @JS('getLength')
  external num _getLength();
  num get length => _getLength();
  external void insertAt(
    num i,
    T elem,
  );
  external T pop();
  external num push(
    T elem,
  );
  external T removeAt(
    num i,
  );
  external void setAt(
    num i,
    T elem,
  );
  Stream<num> get onInsertAt {
    late StreamController<num> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'insert_at',
          ((num e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<num>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<({num index, T removed})> get onRemoveAt {
    late StreamController<({num index, T removed})> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'remove_at',
          ((num index, T removed) => sc.add((index: index, removed: removed)))
              .toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<({num index, T removed})>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<({num index, T previous})> get onSetAt {
    late StreamController<({num index, T previous})> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'set_at',
          ((num index, T previous) =>
              sc.add((index: index, previous: previous))).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<({num index, T previous})>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
