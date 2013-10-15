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

class MarkerShape extends jsw.TypedJsObject {
  static MarkerShape cast(js.JsObject jsObject) => jsObject == null ? null : new MarkerShape.fromJsObject(jsObject);
  MarkerShape.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MarkerShape()
      : super();

  set coords(List<num> coords) => $unsafe['coords'] = coords == null ? null : coords is js.Serializable ? coords : js.jsify(coords);
  List<num> get coords => jsw.TypedJsArray.cast($unsafe['coords']);
  set type(MarkerShapeType type) => $unsafe['type'] = type;
  MarkerShapeType get type => MarkerShapeType.find($unsafe['type']);
}

class MarkerShapeType extends jsw.IsEnum<String> {
  static final CIRCLE = new MarkerShapeType._("circle");
  static final POLY = new MarkerShapeType._("poly");
  static final RECT = new MarkerShapeType._("rect");

  static final _FINDER = new jsw.EnumFinder<String, MarkerShapeType>([CIRCLE, POLY, RECT]);

  static MarkerShapeType find(o) => _FINDER.find(o);

  MarkerShapeType._(String value)
      : super(value);
}
