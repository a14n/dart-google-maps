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

part of google_maps_drawing;

class DrawingControlOptions extends jsw.TypedJsObject {
  static DrawingControlOptions $wrap(js.JsObject jsObject) => jsObject == null ? null : new DrawingControlOptions.fromJsObject(jsObject);
  DrawingControlOptions.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  DrawingControlOptions()
      : super();

  List<OverlayType> get drawingModes => jsw.TypedJsArray.$wrapSerializables($unsafe['drawingModes'], OverlayType.$wrap);
  set drawingModes(List drawingModes) => $unsafe['drawingModes'] = jsw.jsify(drawingModes);
  set position(ControlPosition position) => $unsafe['position'] = position == null ? null : position.$unsafe;
  ControlPosition get position => ControlPosition.$wrap($unsafe['position']);
}
