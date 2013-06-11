// Copyright (c) 2013, Alexandre Ardhuin
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

library utils;

import 'dart:async';

import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:meta/meta.dart';

/// metadata to indicate that an wrapped method has been renamed or customized in a darty way
const dartified = const _Dartified();
class _Dartified {
  const _Dartified();
}

// utility to get js.Proxy even if out of scope
dynamic findIn(List elements, Object o) => elements.firstWhere((e) => e == o, orElse: () => null);

dynamic firstNotNull(List elements) {
  for (final e in elements) {
    if (e != null) return e;
  }
  return null;
}

class IsEnum<E> implements js.Serializable<E> {
  E value;

  IsEnum(this.value);

  @override E toJs() => value;
}

js.Serializable<js.Proxy> jsifyList(List list) => (list is js.Serializable<js.Proxy>) ? list : js.array(list);
js.Serializable<js.Proxy> jsifyDateTime(DateTime dateTime) => (dateTime is js.Serializable<js.Proxy>) ? (dateTime as js.Serializable<js.Proxy>) : new jsw.JsDateToDateTimeAdapter(dateTime);


typedef _EventSinkCallback<T>(EventSink<T> eventSink);
/// Utility class to create streams from event retrieve with subscribe/unsubscribe
class SubscribeStreamProvider<T> implements EventSink<T> {
  final _EventSinkCallback<T> subscribe;
  final _EventSinkCallback<T> unsubscribe;
  final _controllers = new List<StreamController<T>>();

  SubscribeStreamProvider({subscribe(EventSink<T> eventSink), unsubscribe(EventSink<T> eventSink)})
      : subscribe = subscribe,
        unsubscribe = unsubscribe;

  void _addController(StreamController<T> controller) {
    _controllers.add(controller);
    if (_controllers.length == 1 && subscribe != null) subscribe(this);
  }

  void _removeController(StreamController<T> controller) {
    _controllers.remove(controller);
    if (_controllers.isEmpty && unsubscribe != null) unsubscribe(this);
  }

  Stream<T> get stream {
    StreamController<T> controller;
    controller = new StreamController<T>(
        onListen: () => _addController(controller),
        onCancel: () => _removeController(controller),
        sync: true);
    return controller.stream;
  }

  void add(T event) => _controllers.forEach((controller) => controller.add(event));
  void addError(errorEvent) => _controllers.forEach((controller) => controller.addError(errorEvent));
  void close() => _controllers.forEach((controller) => controller.close());
}