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

class DistanceMatrixStatus extends IsEnum<String> {
  static final INVALID_REQUEST = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.INVALID_REQUEST);
  static final MAX_DIMENSIONS_EXCEEDED = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.MAX_DIMENSIONS_EXCEEDED);
  static final MAX_ELEMENTS_EXCEEDED = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.MAX_ELEMENTS_EXCEEDED);
  static final OK = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.OK);
  static final OVER_QUERY_LIMIT = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.OVER_QUERY_LIMIT);
  static final REQUEST_DENIED = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.REQUEST_DENIED);
  static final UNKNOWN_ERROR = new DistanceMatrixStatus._(maps.DistanceMatrixStatus.UNKNOWN_ERROR);

  static final _INSTANCES = [INVALID_REQUEST, MAX_DIMENSIONS_EXCEEDED, MAX_ELEMENTS_EXCEEDED, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR];

  static DistanceMatrixStatus find(Object o) => findIn(_INSTANCES, o);

  DistanceMatrixStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is DistanceMatrixStatus ? (other as DistanceMatrixStatus).value : other);
}