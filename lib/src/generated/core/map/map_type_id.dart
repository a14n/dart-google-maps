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

class MapTypeId extends IsEnum<String> {
  static final HYBRID = new MapTypeId._(maps['MapTypeId']['HYBRID']);
  static final ROADMAP = new MapTypeId._(maps['MapTypeId']['ROADMAP']);
  static final SATELLITE = new MapTypeId._(maps['MapTypeId']['SATELLITE']);
  static final TERRAIN = new MapTypeId._(maps['MapTypeId']['TERRAIN']);

  static final _FINDER = new EnumFinder<String, MapTypeId>([HYBRID, ROADMAP, SATELLITE, TERRAIN]);

  static MapTypeId find(o) => _FINDER.find(o);

  MapTypeId._(String value) : super(value);
}
