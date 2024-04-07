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

extension type DistanceMatrixResponseElement._(JSObject _) implements JSObject {
  external DistanceMatrixResponseElement({
    Distance distance,
    Duration duration,
    Duration duration_in_traffic,
    TransitFare fare,
    DistanceMatrixElementStatus status,
  });
  external Distance distance;
  external Duration duration;
  @JS('duration_in_traffic')
  external Duration _durationInTraffic;
  Duration get durationInTraffic => _durationInTraffic;
  set durationInTraffic(Duration value) => _durationInTraffic = value;
  external TransitFare fare;
  external DistanceMatrixElementStatus status;
}
