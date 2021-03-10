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

@JsName('google.maps.MVCArray')
abstract class MVCArray<T> extends MVCObject {
  factory MVCArray([
    List<T?>? array, // ignore: unused_element
  ]) =>
      $js();
  void clear();
  void forEach(void Function(T? p1, num? p2)? callback);

  // synthetic getter for getArray
  List<T?>? get array => _getArray();
  @JsName('getArray')
  List<T?>? _getArray();

  T? getAt(num? i);

  // synthetic getter for getLength
  num? get length => _getLength();
  @JsName('getLength')
  num? _getLength();

  void insertAt(num? i, T? elem);
  T? pop();
  num? push(T? elem);
  T? removeAt(num? i);
  void setAt(num? i, T? elem);
  Stream<num> get onInsertAt {
    late StreamController<num> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'insert_at',
          (num index) => sc.add(index),
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

  Stream<List> get onRemoveAt {
    late StreamController<List> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'remove_at',
          (num index, T removed) => sc.add([index, removed]),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<List>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<List> get onSetAt {
    late StreamController<List> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'set_at',
          (num index, T previous) => sc.add([index, previous]),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<List>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
