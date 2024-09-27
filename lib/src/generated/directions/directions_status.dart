// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../directions.dart';

@JS('google.maps.DirectionsStatus')
extension type DirectionsStatus._(JSAny _) implements JSAny {
  external static DirectionsStatus get INVALID_REQUEST;
  external static DirectionsStatus get MAX_WAYPOINTS_EXCEEDED;
  external static DirectionsStatus get NOT_FOUND;
  external static DirectionsStatus get OK;
  external static DirectionsStatus get OVER_QUERY_LIMIT;
  external static DirectionsStatus get REQUEST_DENIED;
  external static DirectionsStatus get UNKNOWN_ERROR;
  external static DirectionsStatus get ZERO_RESULTS;
}
