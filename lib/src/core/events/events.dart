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

GEvent get event => new GEvent();

@deprecated class Events {
  static MapsEventListener addDomListener(Object instance, String eventName, Function handler, [bool capture]) => event.addDomListener(instance, eventName, handler, capture);
  static MapsEventListener addDomListenerOnce(Object instance, String eventName, Function handler, [bool capture]) => event.addDomListenerOnce(instance, eventName, handler, capture);
  static MapsEventListener addListener(jsw.TypedProxy instance, String eventName, Function handler) => event.addListener(instance, eventName, handler);
  static MapsEventListener addListenerOnce(jsw.TypedProxy instance, String eventName, Function handler) => event.addListenerOnce(instance, eventName, handler);
  static void clearInstanceListeners(jsw.TypedProxy instance) { event.clearInstanceListeners(instance); }
  static void clearListeners(jsw.TypedProxy instance, String eventName) { event.clearListeners(instance, eventName); }
  static void removeListener(MapsEventListener listener) { event.removeListener(listener); }
  static void trigger(jsw.TypedProxy instance, String eventName, List<Object> args) { event.trigger(instance, eventName, args); }
}

class GEvent extends jsw.TypedProxy {
  GEvent() : super.fromProxy(maps.event);

  MapsEventListener addDomListener(dynamic instance, String eventName, Function handler, [bool capture]) {
    final callback = new js.Callback.many(handler);
    final js.Proxy proxy = $unsafe.addDomListener(instance, eventName, callback, capture);
    return proxy == null ? null : new MapsEventListener.fromProxy(proxy, () => callback.dispose());
  }
  MapsEventListener addDomListenerOnce(dynamic instance, String eventName, Function handler, [bool capture]) {
    final callback = new js.Callback.once(handler);
    final js.Proxy proxy = $unsafe.addDomListenerOnce(instance, eventName, callback, capture);
    return proxy == null ? null : new MapsEventListener.fromProxy(proxy);
  }
  MapsEventListener addListener(dynamic instance, String eventName, Function handler) {
    final callback = new js.Callback.many(handler);
    final js.Proxy proxy = $unsafe.addListener(instance, eventName, callback);
    return proxy == null ? null : new MapsEventListener.fromProxy(proxy, () => callback.dispose());
  }
  MapsEventListener addListenerOnce(dynamic instance, String eventName, Function handler) {
    final callback = new js.Callback.once(handler);
    final js.Proxy proxy = $unsafe.addListenerOnce(instance, eventName, callback);
    return proxy == null ? null : new MapsEventListener.fromProxy(proxy);
  }
  void clearInstanceListeners(dynamic instance) { $unsafe.clearInstanceListeners(instance); }
  void clearListeners(dynamic instance, String eventName) { $unsafe.clearListeners(instance, eventName); }
  void removeListener(MapsEventListener listener) {
    if (listener.onRelease != null) {
      listener.onRelease();
    }
    $unsafe.removeListener(listener);
  }
  void trigger(dynamic instance, String eventName, List<dynamic> args) {
    final parameters = new List();
    parameters.add(instance);
    parameters.add(eventName);
    parameters.addAll(args);
    $unsafe.trigger(parameters);
  }

  Stream getStreamFor(dynamic instance, String eventName, [Function transformArguments]) {
    StreamController streamController;
    MapsEventListener mapsEventListener = null;
    final listener = () {
      if (!streamController.hasListener || streamController.isPaused || streamController.isClosed) {
        if (mapsEventListener != null) {
          removeListener(mapsEventListener);
          mapsEventListener = null;
        }
      } else {
        if (mapsEventListener == null) {
          mapsEventListener = addListener(instance, eventName, ([
              p1 = _undefined,
              p2 = _undefined,
              p3 = _undefined,
              p4 = _undefined,
              p5 = _undefined]) {
            var args = [p1, p2, p3, p4, p5].where((e) => e != _undefined).toList(growable: false);
            var value =
                args.length == 0 ? null :
                args.length == 1 ? args.first :
                args;
            streamController.add(transformArguments == null ? value : Function.apply(transformArguments, args));
          });
        }
      }
    };
    streamController = new StreamController(onListen: listener, onPause: listener, onResume: listener, onCancel: listener);
    return streamController.stream.asBroadcastStream();
  }
}