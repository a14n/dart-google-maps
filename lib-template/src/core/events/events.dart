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

final GEvent event = new GEvent();

@wrapper @skipWrap @skipConstructor class GEvent extends jsw.TypedJsObject {
  GEvent() : super.fromJsObject(maps['event']);

  @generate MapsEventListener addDomListener(dynamic instance, String eventName, Function handler, [bool capture]) => null;
  @generate MapsEventListener addDomListenerOnce(dynamic instance, String eventName, Function handler, [bool capture]) => null;
  @generate MapsEventListener addListener(dynamic instance, String eventName, Function handler) => null;
  @generate MapsEventListener addListenerOnce(dynamic instance, String eventName, Function handler) => null;
  @generate void clearInstanceListeners(dynamic instance) {}
  @generate void clearListeners(dynamic instance, String eventName) {}
  @generate void removeListener(MapsEventListener listener) {}
  void trigger(dynamic instance, String eventName, List<dynamic> args) { $unsafe.callMethod('trigger', [jsw.mayUnwrap(instance), eventName]..addAll(args.map(jsw.mayUnwrap))); }

  jsw.SubscribeStreamProvider getStreamProviderFor(dynamic instance, String eventName, [Function transformArguments]) {
    MapsEventListener mapsEventListener = null;
    return new jsw.SubscribeStreamProvider(
        subscribe: (EventSink eventSink) {
          mapsEventListener = addListener(instance, eventName, ([
              p1 = _undefined,
              p2 = _undefined,
              p3 = _undefined,
              p4 = _undefined,
              p5 = _undefined]) {
            var args = [p1, p2, p3, p4, p5].takeWhile((e) => e != _undefined).toList(growable: false);
            var value =
                args.length == 0 ? null :
                args.length == 1 ? args.first :
                args;
            eventSink.add(transformArguments == null ? value : Function.apply(transformArguments, args));
          });
        },
        unsubscribe: (EventSink eventSink) {
          removeListener(mapsEventListener);
        }
    );
  }
}
