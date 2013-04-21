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

class DrawingControlOptions extends jsw.TypedProxy {
  static DrawingControlOptions cast(js.Proxy proxy) => proxy == null ? null : new DrawingControlOptions.fromProxy(proxy);

  DrawingControlOptions() : super();
  DrawingControlOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  List<OverlayType> get drawingModes => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe['drawingModes'], OverlayType.find);
  ControlPosition get position => ControlPosition.find($unsafe['position']);
  set drawingModes(List<OverlayType> drawingModes) => $unsafe['drawingModes'] = jsifyList(drawingModes);
  set position(ControlPosition position) => $unsafe['position'] = position;
}