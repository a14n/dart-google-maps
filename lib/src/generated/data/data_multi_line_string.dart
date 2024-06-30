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

part of '../data.dart';

@JS('google.maps.Data.MultiLineString')
extension type DataMultiLineString._(DataGeometry _) implements DataGeometry {
  external DataMultiLineString(
    JSArray<JSAny /*Data.LineString|Array<LatLng|LatLngLiteral>*/ > elements,
  );
  @JS('getArray')
  external JSArray<DataLineString> _getArray();
  JSArray<DataLineString> get array => _getArray();
  external DataLineString getAt(
    num n,
  );
  @JS('getLength')
  external num _getLength();
  num get length => _getLength();
}
