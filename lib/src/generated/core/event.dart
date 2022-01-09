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

@JS('google.maps.event')
external Object get _Event$namespace;

class Event {
  static MapsEventListener addDomListener(
    Object? instance,
    String? eventName,
    Function? handler, [
    bool? capture,
  ]) =>
      callMethod(_Event$namespace, 'addDomListener', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler),
        capture
      ]);
  static MapsEventListener addDomListenerOnce(
    Object? instance,
    String? eventName,
    Function? handler, [
    bool? capture,
  ]) =>
      callMethod(_Event$namespace, 'addDomListenerOnce', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler),
        capture
      ]);
  static MapsEventListener addListener(
          Object? instance, String? eventName, Function? handler) =>
      callMethod(_Event$namespace, 'addListener', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler)
      ]);
  static MapsEventListener addListenerOnce(
          Object? instance, String? eventName, Function? handler) =>
      callMethod(_Event$namespace, 'addListenerOnce', [
        instance,
        eventName,
        handler == null ? null : allowInterop(handler)
      ]);
  static void clearInstanceListeners(Object? instance) =>
      callMethod(_Event$namespace, 'clearInstanceListeners', [instance]);
  static void clearListeners(Object? instance, String? eventName) =>
      callMethod(_Event$namespace, 'clearListeners', [instance, eventName]);
  static bool? hasListeners(Object? instance, String? eventName) =>
      callMethod(_Event$namespace, 'hasListeners', [instance, eventName]);
  static void removeListener(MapsEventListener? listener) =>
      callMethod(_Event$namespace, 'removeListener', [listener]);

  static void trigger(
          Object instance, String eventName, List<Object?>? eventArgs) =>
      callMethod(
          _Event$namespace, 'trigger', [instance, eventName, ...?eventArgs]);
}
