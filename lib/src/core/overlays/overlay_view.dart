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
  OverlayView() : super.newInstance(maps.OverlayView);
  OverlayView.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  void draw() { $.draw(); }
  GMap get map => $.getMap().map(GMap.INSTANCIATOR).value;
  MapPanes get panes => $.getPanes().map(MapPanes.INSTANCIATOR).value;
  MapCanvasProjection get projection => $.getProjection().map(MapCanvasProjection.INSTANCIATOR).value;
  void onAdd() { $.onAdd(); }
  void onRemove() { $.onRemove(); }
  set map(Object map) {
    if (map == null || map is GMap || map is StreetViewPanorama) {
      $.setMap(map);
    } else {
      throw new UnsupportedError("Parameter must be of type GMap or StreetViewPanorama");
    }
  }

  void set_onAdd(onAdd()) { $.onAdd = new jsw.Callback.many(onAdd); }
  void set_onRemove(onRemove()) { $.onRemove = new jsw.Callback.many(onRemove); }
  void set_draw(draw()) { $.draw = new jsw.Callback.many(draw); }
}