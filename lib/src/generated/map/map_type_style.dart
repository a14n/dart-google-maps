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

part of '../map.dart';

extension type MapTypeStyle._(JSObject _) implements JSObject {
  external MapTypeStyle({
    JSArray<JSObject /*Object<null>*/ > stylers,
    String? elementType,
    String? featureType,
  });
  @JS('stylers')
  external JSArray<JSObject /*Object<null>*/ > _stylers;
  List<JSObject /*Object<null>*/ > get stylers => _stylers.toDart;
  set stylers(List<JSObject /*Object<null>*/ > value) => _stylers = value.toJS;
  external String? elementType;
  external String? featureType;
}
