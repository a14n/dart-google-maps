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

part of google_maps.src;

final event = new Event.created(context['google']['maps']['event']);
abstract class _Event implements JsInterface {
  MapsEventListener addDomListener(
      Object instance, String eventName, handler(dynamic p1), [bool capture]);
  MapsEventListener addDomListenerOnce(
      Object instance, String eventName, handler(dynamic p1), [bool capture]);
  MapsEventListener addListener(
      Object instance, String eventName, handler(dynamic p1));
  MapsEventListener addListenerOnce(
      Object instance, String eventName, handler(dynamic p1));
  void clearInstanceListeners(Object instance);
  void clearListeners(Object instance, String eventName);
  void removeListener(MapsEventListener listener);
  void trigger(Object instance, String eventName, dynamic var_args);
}
