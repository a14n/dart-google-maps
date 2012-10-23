library optional;

final NONE = new None._();

asOption(value) => value == null ? NONE : new Some._(value);

abstract class Option<T> {
  abstract Option map(Object transform(T e));
  abstract T get value;
}

class None<T> extends Option<T> {
  None._();

  Option map(Object transform(T e)) => NONE;
  T get value => null;
}

class Some<T> extends Option<T> {
  final T _value;

  Some._(T this._value);

  Option map(Object transform(T e)) => asOption(transform(_value));
  T get value => _value;
}