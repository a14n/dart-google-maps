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

part of '../kml.dart';

@JS('google.maps.KmlLayerStatus')
extension type KmlLayerStatus._(JSAny _) implements JSAny {
  external static KmlLayerStatus get DOCUMENT_NOT_FOUND;
  external static KmlLayerStatus get DOCUMENT_TOO_LARGE;
  external static KmlLayerStatus get FETCH_ERROR;
  external static KmlLayerStatus get INVALID_DOCUMENT;
  external static KmlLayerStatus get INVALID_REQUEST;
  external static KmlLayerStatus get LIMITS_EXCEEDED;
  external static KmlLayerStatus get OK;
  external static KmlLayerStatus get TIMED_OUT;
  external static KmlLayerStatus get UNKNOWN;
}
