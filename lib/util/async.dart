library google_maps.util.async;

import 'dart:async';

import 'package:js_wrapping/js_wrapping.dart' show asJsObject, JsInterface;
import 'package:js_wrapping/js_wrapping.dart';
import 'package:js_wrapping/util/async.dart' show SubscribeStreamProvider;
import 'package:js_wrapping/util/state.dart';

import 'package:google_maps/google_maps.dart' show event, MapsEventListener;

SubscribeStreamProvider<T> getStreamProviderFor<T>(
  dynamic instance,
  String eventName,
  Function transformArguments,
  int argsCount,
) {
  MapsEventListener mapsEventListener;
  return SubscribeStreamProvider(subscribe: (eventSink) {
    mapsEventListener =
        event.addListener(instance, eventName, ([p1, p2, p3, p4, p5]) {
      eventSink.add(transformArguments == null
          ? p1
          : Function.apply(
              transformArguments,
              [p1, p2, p3, p4, p5].take(argsCount).toList(growable: false),
            ));
    });
  }, unsubscribe: (eventSink) {
    event.removeListener(mapsEventListener);
  });
}

Stream<T> getStream<T>(
  JsInterface o,
  String eventName, [
  Function transformArguments,
  int args = 1,
]) =>
    getState(o)
        .putIfAbsent(
            Symbol(eventName),
            () => getStreamProviderFor<T>(
                asJsObject(o), eventName, transformArguments, args))
        .stream as Stream<T>;
