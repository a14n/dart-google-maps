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

part of '../data_driven_styling.dart';

@JS('google.maps.FeatureType')
extension type FeatureType._(JSAny _) implements JSAny {
  external static FeatureType get ADMINISTRATIVE_AREA_LEVEL_1;
  external static FeatureType get ADMINISTRATIVE_AREA_LEVEL_2;
  external static FeatureType get COUNTRY;
  external static FeatureType get DATASET;
  external static FeatureType get LOCALITY;
  external static FeatureType get POSTAL_CODE;
  external static FeatureType get SCHOOL_DISTRICT;
}
