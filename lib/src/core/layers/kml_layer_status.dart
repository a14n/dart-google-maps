// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

class KmlLayerStatus extends IsEnum<String> {
  static final DOCUMENT_NOT_FOUND = new KmlLayerStatus._(maps.KmlLayerStatus.DOCUMENT_NOT_FOUND);
  static final DOCUMENT_TOO_LARGE = new KmlLayerStatus._(maps.KmlLayerStatus.DOCUMENT_TOO_LARGE);
  static final FETCH_ERROR = new KmlLayerStatus._(maps.KmlLayerStatus.FETCH_ERROR);
  static final INVALID_DOCUMENT = new KmlLayerStatus._(maps.KmlLayerStatus.INVALID_DOCUMENT);
  static final INVALID_REQUEST = new KmlLayerStatus._(maps.KmlLayerStatus.INVALID_REQUEST);
  static final LIMITS_EXCEEDED = new KmlLayerStatus._(maps.KmlLayerStatus.LIMITS_EXCEEDED);
  static final OK = new KmlLayerStatus._(maps.KmlLayerStatus.OK);
  static final TIMED_OUT = new KmlLayerStatus._(maps.KmlLayerStatus.TIMED_OUT);
  static final UNKNOWN = new KmlLayerStatus._(maps.KmlLayerStatus.UNKNOWN);

  static final _INSTANCES = [DOCUMENT_NOT_FOUND, DOCUMENT_TOO_LARGE, FETCH_ERROR, INVALID_DOCUMENT, INVALID_REQUEST, LIMITS_EXCEEDED, OK, TIMED_OUT, UNKNOWN];

  static KmlLayerStatus find(Object o) => findIn(_INSTANCES, o);

  KmlLayerStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is KmlLayerStatus ? (other as KmlLayerStatus).value : other);
}