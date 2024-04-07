import 'dart:js_interop';

extension type JSIterable<T extends JSAny?>._(JSObject _) implements JSObject {
  external JSIterableNextResult<T> next();
}

extension type JSIterableNextResult<T extends JSAny?>._(JSObject _)
    implements JSObject {
  external bool get done;
  external T? get value;
}
