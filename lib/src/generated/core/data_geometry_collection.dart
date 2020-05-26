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

part of '../google_maps_core.dart';

@JsName('google.maps.Data.GeometryCollection')
abstract class _DataGeometryCollection implements DataGeometry {
  factory _DataGeometryCollection(
          List<Object /*DataGeometry|LatLng*/ > elements) =>
      $js;
  void forEachLatLng(void Function(LatLng p1) callback);

  // synthetic getter for getArray
  List<DataGeometry> get array => _getArray();
  @JsName('getArray')
  List<DataGeometry> _getArray();

  DataGeometry getAt(num n);

  // synthetic getter for getLength
  num get length => _getLength();
  @JsName('getLength')
  num _getLength();

  // synthetic getter for getType
  String get type => _getType();
  @JsName('getType')
  String _getType();
}
