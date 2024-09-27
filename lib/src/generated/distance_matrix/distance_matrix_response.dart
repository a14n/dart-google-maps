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

part of '../distance_matrix.dart';

extension type DistanceMatrixResponse._(JSObject _) implements JSObject {
  external DistanceMatrixResponse({
    JSArray<JSString> destinationAddresses,
    JSArray<JSString> originAddresses,
    JSArray<DistanceMatrixResponseRow> rows,
  });
  @JS('destinationAddresses')
  external JSArray<JSString> _destinationAddresses;
  List<String> get destinationAddresses =>
      _destinationAddresses.toDart.map((type) => type.toDart).toList();
  set destinationAddresses(List<String> value) =>
      _destinationAddresses = value.jsify() as JSArray<JSString>;
  @JS('originAddresses')
  external JSArray<JSString> _originAddresses;
  List<String> get originAddresses =>
      _originAddresses.toDart.map((type) => type.toDart).toList();
  set originAddresses(List<String> value) =>
      _originAddresses = value.jsify() as JSArray<JSString>;
  @JS('rows')
  external JSArray<DistanceMatrixResponseRow> _rows;
  List<DistanceMatrixResponseRow> get rows => _rows.toDart;
  set rows(List<DistanceMatrixResponseRow> value) => _rows = value.toJS;
}
