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

class ScaleControlStyle extends IsEnum<String> {
  static final DEFAULT = new ScaleControlStyle._(maps.ScaleControlStyle.DEFAULT);

  static final _INSTANCES = [DEFAULT];

  static ScaleControlStyle find(Object o) => findIn(_INSTANCES, o);

  ScaleControlStyle._(String value) : super(value);

  bool operator ==(Object other) => value == (other is ScaleControlStyle ? (other as ScaleControlStyle).value : other);
}