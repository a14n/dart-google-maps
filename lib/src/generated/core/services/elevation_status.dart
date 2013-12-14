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

class ElevationStatus extends jsw.IsEnum<String> {
  static final _FINDER = new jsw.EnumFinder<String, ElevationStatus>([INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR]);
  static ElevationStatus $wrap(String jsValue) => _FINDER.find(jsValue);

  static final INVALID_REQUEST = new ElevationStatus._(maps['ElevationStatus']['INVALID_REQUEST']);
  static final OK = new ElevationStatus._(maps['ElevationStatus']['OK']);
  static final OVER_QUERY_LIMIT = new ElevationStatus._(maps['ElevationStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new ElevationStatus._(maps['ElevationStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new ElevationStatus._(maps['ElevationStatus']['UNKNOWN_ERROR']);

  ElevationStatus._(String value)
      : super(value);
}
