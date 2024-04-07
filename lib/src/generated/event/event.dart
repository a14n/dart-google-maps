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

@JS('google.maps.event')
extension type event._(JSObject _) implements JSObject {
  external static MapsEventListener addListener(
    JSObject /*Object<null>*/ instance,
    String eventName,
    JSFunction handler,
  );
  external static MapsEventListener addListenerOnce(
    JSObject /*Object<null>*/ instance,
    String eventName,
    JSFunction handler,
  );
  external static void clearInstanceListeners(
    JSObject /*Object<null>*/ instance,
  );
  external static void clearListeners(
    JSObject /*Object<null>*/ instance,
    String eventName,
  );
  external static bool hasListeners(
    JSObject /*Object<null>*/ instance,
    String eventName,
  );
  external static void removeListener(
    MapsEventListener listener,
  );
  external static void trigger(
    JSObject /*Object<null>*/ instance,
    String eventName,
    JSAny? /*UNPARSED:...?*/ eventArgs,
  );
  external static MapsEventListener addDomListener(
    JSObject /*Object<null>*/ instance,
    String eventName,
    JSFunction handler, [
    bool? capture,
  ]);
  external static MapsEventListener addDomListenerOnce(
    JSObject /*Object<null>*/ instance,
    String eventName,
    JSFunction handler, [
    bool? capture,
  ]);
}
