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

library optional;

final NONE = new None._();

asOption(value) => value == null ? NONE : new Some._(value);

abstract class Option<T> {
  Option map(Object transform(T e));
  T get value;
}

class None<T> extends Option<T> {
  None._();

  Option map(Object transform(T e)) => NONE;
  T get value => null;
}

class Some<T> extends Option<T> {
  final T _value;

  Some._(this._value);

  Option map(Object transform(T e)) => asOption(transform(_value));
  T get value => _value;
}