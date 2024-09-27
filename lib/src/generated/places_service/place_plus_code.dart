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

part of '../places_service.dart';

extension type PlacePlusCode._(JSObject _) implements JSObject {
  external PlacePlusCode({
    String global_code,
    String? compound_code,
  });
  @JS('global_code')
  external String _globalCode;
  String get globalCode => _globalCode;
  set globalCode(String value) => _globalCode = value;
  @JS('compound_code')
  external String? _compoundCode;
  String? get compoundCode => _compoundCode;
  set compoundCode(String? value) => _compoundCode = value;
}
