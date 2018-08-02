library google_maps.util.async;

import 'dart:async';

import 'package:js_wrapping/js_wrapping.dart' show asJsObject, JsInterface;
import 'package:js_wrapping/util/async.dart' show SubscribeStreamProvider;
import 'package:js_wrapping/util/state.dart';

import 'package:google_maps/google_maps.dart' show event, MapsEventListener;

const _undefined = _Undefined();

class _Undefined {
  const _Undefined();
}

SubscribeStreamProvider<T> getStreamProviderFor<T>(
    dynamic instance, String eventName,
    [Function transformArguments]) {
  MapsEventListener mapsEventListener;
  return SubscribeStreamProvider(subscribe: (eventSink) {
    mapsEventListener = event.addListener(instance, eventName, (
        [p1 = _undefined,
        p2 = _undefined,
        p3 = _undefined,
        p4 = _undefined,
        p5 = _undefined]) {
      final args = [p1, p2, p3, p4, p5]
          .takeWhile((e) => e != _undefined)
          .toList(growable: false);
      final value = args.isEmpty ? null : args.length == 1 ? args.first : args;
      eventSink.add(transformArguments == null
          ? value
          : Function.apply(transformArguments, args));
    });
  }, unsubscribe: (eventSink) {
    event.removeListener(mapsEventListener);
  });
}

Stream<T> getStream<T>(JsInterface o, String eventName,
        [Function transformArguments]) =>
    getState(o)
        .putIfAbsent(
            eventName,
            () => getStreamProviderFor<T>(
                asJsObject(o), eventName, transformArguments))
        .stream as Stream<T>;
