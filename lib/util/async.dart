library google_maps.util.async;

import 'dart:async';

import 'package:google_maps/google_maps.dart' show event, MapsEventListener;
import 'package:js_wrapping/js_wrapping.dart' show asJsObject, JsInterface;
import 'package:js_wrapping/util/async.dart' show SubscribeStreamProvider;
import 'package:js_wrapping/util/state.dart';

const _undefined = const _Undefined();
class _Undefined {
  const _Undefined();
}

SubscribeStreamProvider getStreamProviderFor(dynamic instance, String eventName,
    [Function transformArguments]) {
  MapsEventListener mapsEventListener = null;
  return new SubscribeStreamProvider(subscribe: (EventSink eventSink) {
    mapsEventListener = event.addListener(instance, eventName,
        ([p1 = _undefined, p2 = _undefined, p3 = _undefined, p4 = _undefined,
            p5 = _undefined]) {
      var args = [
        p1,
        p2,
        p3,
        p4,
        p5
      ].takeWhile((e) => e != _undefined).toList(growable: false);
      var value =
          args.length == 0 ? null : args.length == 1 ? args.first : args;
      eventSink.add(transformArguments == null
          ? value
          : Function.apply(transformArguments, args));
    });
  }, unsubscribe: (EventSink eventSink) {
    event.removeListener(mapsEventListener);
  });
}

Stream getStream(JsInterface o, Symbol s, String eventName,
    [Function transformArguments]) => getState(o).putIfAbsent(s,
        () => getStreamProviderFor(
            asJsObject(o), eventName, transformArguments)).stream;
