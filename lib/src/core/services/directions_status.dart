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

class DirectionsStatus extends IsEnum<String> {
  static final INVALID_REQUEST = new DirectionsStatus._(maps.DirectionsStatus.INVALID_REQUEST);
  static final MAX_WAYPOINTS_EXCEEDED = new DirectionsStatus._(maps.DirectionsStatus.MAX_WAYPOINTS_EXCEEDED);
  static final NOT_FOUND = new DirectionsStatus._(maps.DirectionsStatus.NOT_FOUND);
  static final OK = new DirectionsStatus._(maps.DirectionsStatus.OK);
  static final OVER_QUERY_LIMIT = new DirectionsStatus._(maps.DirectionsStatus.OVER_QUERY_LIMIT);
  static final REQUEST_DENIED = new DirectionsStatus._(maps.DirectionsStatus.REQUEST_DENIED);
  static final UNKNOWN_ERROR = new DirectionsStatus._(maps.DirectionsStatus.UNKNOWN_ERROR);
  static final ZERO_RESULTS = new DirectionsStatus._(maps.DirectionsStatus.ZERO_RESULTS);

  static final _INSTANCES = [INVALID_REQUEST, MAX_WAYPOINTS_EXCEEDED, NOT_FOUND, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS];

  static DirectionsStatus find(Object o) => findIn(_INSTANCES, o);

  DirectionsStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is DirectionsStatus ? (other as DirectionsStatus).value : other);
}