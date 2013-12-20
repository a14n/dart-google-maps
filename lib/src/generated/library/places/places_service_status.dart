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

part of google_maps_places;

class PlacesServiceStatus extends jsw.IsEnum<String> {
  static final _FINDER = new jsw.EnumFinder<String, PlacesServiceStatus>([INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]);
  static PlacesServiceStatus $wrap(String jsValue) => _FINDER.find(jsValue);

  static final INVALID_REQUEST = new PlacesServiceStatus._(maps['places']['PlacesServiceStatus']['INVALID_REQUEST']);
  static final OK = new PlacesServiceStatus._(maps['places']['PlacesServiceStatus']['OK']);
  static final OVER_QUERY_LIMIT = new PlacesServiceStatus._(maps['places']['PlacesServiceStatus']['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new PlacesServiceStatus._(maps['places']['PlacesServiceStatus']['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new PlacesServiceStatus._(maps['places']['PlacesServiceStatus']['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = new PlacesServiceStatus._(maps['places']['PlacesServiceStatus']['ZERO_RESULTS']);

  PlacesServiceStatus._(String value)
      : super(value);
}
