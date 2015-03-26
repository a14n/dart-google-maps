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

@anonymous
abstract class _MapTypeControlOptions implements JsInterface {
  external factory _MapTypeControlOptions();

  // List<String|MapTypeId> mapTypeIds
  JsArray<String> _mapTypeIds;
  List<dynamic/*String|MapTypeId*/> get mapTypeIds =>
     new JsList.created(_mapTypeIds, mapTypeIdOrStringCodec);
  void set mapTypeIds(List<dynamic/*String|MapTypeId*/> mapTypeIds) {
    _mapTypeIds = new JsArray.from(mapTypeIds.map(mapTypeIdOrStringCodec.encoder));
  }
  // ControlPosition position;
  int _position;
  ControlPosition get position => controlPositionCodec.decode(_position);
  void set position(ControlPosition position) {
    _position = controlPositionCodec.encode(position);
  }
  // MapTypeControlStyle style;
  int _style;
  MapTypeControlStyle get style => mapTypeControlStyleCodec.decode(_style);
  void set style(MapTypeControlStyle style) {
    _style = mapTypeControlStyleCodec.encode(style);
  }
}
