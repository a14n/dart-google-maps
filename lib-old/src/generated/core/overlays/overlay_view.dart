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

class OverlayView extends MVCObject {
  static OverlayView $wrap(js.JsObject jsObject) => jsObject == null ? null : new OverlayView.fromJsObject(jsObject);
  OverlayView.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  OverlayView()
      : super(maps['OverlayView'], []);

  void draw() {
    $unsafe.callMethod('draw');
  }
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
  MapPanes get panes => MapPanes.$wrap($unsafe.callMethod('getPanes'));
  MapCanvasProjection get projection => MapCanvasProjection.$wrap($unsafe.callMethod('getProjection'));
  void onAdd() {
    $unsafe.callMethod('onAdd');
  }
  void onRemove() {
    $unsafe.callMethod('onRemove');
  }
  set map(dynamic map) => $unsafe.callMethod('setMap', [map is GMap ? map.$unsafe : map is StreetViewPanorama ? map.$unsafe : map == null ? null : throw "bad type"]);

  void set_onAdd(onAdd()) {
    $unsafe['onAdd'] = onAdd;
  }
  void set_onRemove(onRemove()) {
    $unsafe['onRemove'] = onRemove;
  }
  void set_draw(draw()) {
    $unsafe['draw'] = draw;
  }
}
