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

class StreetViewStatus extends IsEnum<String> {
  static final OK = new StreetViewStatus._(maps.StreetViewStatus.OK);
  static final UNKNOWN_ERROR = new StreetViewStatus._(maps.StreetViewStatus.UNKNOWN_ERROR);
  static final ZERO_RESULTS = new StreetViewStatus._(maps.StreetViewStatus.ZERO_RESULTS);

  static final _INSTANCES = [OK, UNKNOWN_ERROR, ZERO_RESULTS];

  static StreetViewStatus find(Object o) => findIn(_INSTANCES, o);

  StreetViewStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is StreetViewStatus ? (other as StreetViewStatus).value : other);
}