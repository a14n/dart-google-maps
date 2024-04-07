// Copyright (c) 2015, Alexandre Ardhuin
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

part of '../distance_matrix.dart';

@JS('google.maps.DistanceMatrixStatus')
extension type DistanceMatrixStatus._(JSAny _) implements JSAny {
  external static DistanceMatrixStatus get INVALID_REQUEST;
  external static DistanceMatrixStatus get MAX_DIMENSIONS_EXCEEDED;
  external static DistanceMatrixStatus get MAX_ELEMENTS_EXCEEDED;
  external static DistanceMatrixStatus get OK;
  external static DistanceMatrixStatus get OVER_QUERY_LIMIT;
  external static DistanceMatrixStatus get REQUEST_DENIED;
  external static DistanceMatrixStatus get UNKNOWN_ERROR;
}
