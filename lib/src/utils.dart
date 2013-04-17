// Copyright (c) 2013, Alexandre Ardhuin
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

library utils;

import 'package:js/js.dart' as js;
import 'package:js/js_wrapping.dart' as jsw;
import 'package:meta/meta.dart';

/// metadata to indicate that an wrapped method has been renamed or customized in a darty way
const dartified = const _Dartified();
class _Dartified {
  const _Dartified();
}

// utility to get js.Proxy even if out of scope
dynamic findIn(List elements, Object o) => elements.where((e) => e == o).fold(null, (previousValue, e) => (previousValue != null ? previousValue : e));

dynamic firstNotNull(List elements) {
  for (final e in elements) {
    if (e != null) return e;
  }
  return null;
}

class IsEnum<E> implements js.Serializable<E> {
  E value;

  IsEnum(this.value);

  @override E toJs() => value;
}

js.Serializable<js.Proxy> jsifyList(List list) => (list is js.Serializable<js.Proxy>) ? list : js.array(list);
js.Serializable<js.Proxy> jsifyDateTime(DateTime dateTime) => (dateTime is js.Serializable<js.Proxy>) ? (dateTime as js.Serializable<js.Proxy>) : new jsw.JsDateToDateTimeAdapter(dateTime);

