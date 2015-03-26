// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

const _undefined = const _Undefined();
class _Undefined {
  const _Undefined();
}

final GEvent event = new GEvent.created(getPath('google.maps.event'));

@anonymous
abstract class _GEvent implements JsInterface {
  MapsEventListener addDomListener(
      dynamic instance, String eventName, Function handler, [bool capture]);
  MapsEventListener addDomListenerOnce(
      dynamic instance, String eventName, Function handler, [bool capture]);
  MapsEventListener addListener(
      dynamic instance, String eventName, Function handler);
  MapsEventListener addListenerOnce(
      dynamic instance, String eventName, Function handler);
  void clearInstanceListeners(dynamic instance);
  void clearListeners(dynamic instance, String eventName);
  void removeListener(MapsEventListener listener);
  void trigger(dynamic instance, String eventName, List<dynamic> args) {
    asJsObject(this).callMethod(
        'trigger', [toJs(instance), eventName]..addAll(args.map(toJs)));
  }
}
