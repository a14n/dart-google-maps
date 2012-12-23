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

GEvent get event => new GEvent();

@deprecated class Events {
  static MapsEventListener addDomListener(Object instance, String eventName, Function handler, [bool capture]) => event.addDomListener(instance, eventName, handler, capture);
  static MapsEventListener addDomListenerOnce(Object instance, String eventName, Function handler, [bool capture]) => event.addDomListenerOnce(instance, eventName, handler, capture);
  static MapsEventListener addListener(jsw.IsJsProxy instance, String eventName, Function handler) => event.addListener(instance, eventName, handler);
  static MapsEventListener addListenerOnce(jsw.IsJsProxy instance, String eventName, Function handler) => event.addListenerOnce(instance, eventName, handler);
  static void clearInstanceListeners(jsw.IsJsProxy instance) { event.clearInstanceListeners(instance); }
  static void clearListeners(jsw.IsJsProxy instance, String eventName) { event.clearListeners(instance, eventName); }
  static void removeListener(MapsEventListener listener) { event.removeListener(listener); }
  static void trigger(jsw.IsJsProxy instance, String eventName, List<Object> args) { event.trigger(instance, eventName, args); }
}

class GEvent {
  static final _INSTANCE = new GEvent._();

  factory GEvent() => _INSTANCE;
  GEvent._();

  MapsEventListener addDomListener(Object instance, String eventName, Function handler, [bool capture]) {
    final callback = new jsw.Callback.many(handler);
    final instanciator = (js.Proxy jsProxy) => new MapsEventListener.fromJsProxy(jsProxy, () => callback.dispose());
    return new jsw.IsJsProxy.fromJsProxy(maps.event).$.addDomListener(instance, eventName, callback, capture).map(instanciator).value;
  }
  MapsEventListener addDomListenerOnce(Object instance, String eventName, Function handler, [bool capture]) {
    final callback = new jsw.Callback.once(handler);
    final instanciator = (js.Proxy jsProxy) => new MapsEventListener.fromJsProxy(jsProxy);
    return new jsw.IsJsProxy.fromJsProxy(maps.event).$.addDomListenerOnce(instance, eventName, callback, capture).map(instanciator).value;
  }
  MapsEventListener addListener(jsw.IsJsProxy instance, String eventName, Function handler) {
    final callback = new jsw.Callback.many(handler);
    final instanciator = (js.Proxy jsProxy) => new MapsEventListener.fromJsProxy(jsProxy, () => callback.dispose());
    return new jsw.IsJsProxy.fromJsProxy(maps.event).$.addListener(instance, eventName, callback).map(instanciator).value;
  }
  MapsEventListener addListenerOnce(jsw.IsJsProxy instance, String eventName, Function handler) {
    final callback = new jsw.Callback.once(handler);
    final instanciator = (js.Proxy jsProxy) => new MapsEventListener.fromJsProxy(jsProxy);
    return new jsw.IsJsProxy.fromJsProxy(maps.event).$.addListenerOnce(instance, eventName, callback).map(instanciator).value;
  }
  void clearInstanceListeners(jsw.IsJsProxy instance) { new jsw.IsJsProxy.fromJsProxy(maps.event).$.clearInstanceListeners(instance); }
  void clearListeners(jsw.IsJsProxy instance, String eventName) { new jsw.IsJsProxy.fromJsProxy(maps.event).$.clearListeners(instance, eventName); }
  void removeListener(MapsEventListener listener) {
    if (listener.onRelease != null) {
      listener.onRelease();
    }
    new jsw.IsJsProxy.fromJsProxy(maps.event).$.removeListener(listener);
  }
  void trigger(jsw.IsJsProxy instance, String eventName, List<Object> args) {
    final parameters = new List<Object>();
    parameters.add(instance);
    parameters.add(eventName);
    parameters.addAll(args);
    new jsw.IsJsProxy.fromJsProxy(maps.event).$.trigger(parameters);
  }
}