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
  static OverlayView cast(js.Proxy proxy) => proxy == null ? null : new OverlayView.fromProxy(proxy);

  OverlayView() : super(maps.OverlayView);
  OverlayView.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  void draw() { $unsafe.draw(); }
  GMap get map => GMap.cast($unsafe.getMap());
  MapPanes get panes => MapPanes.cast($unsafe.getPanes());
  MapCanvasProjection get projection => MapCanvasProjection.cast($unsafe.getProjection());
  void onAdd() { $unsafe.onAdd(); }
  void onRemove() { $unsafe.onRemove(); }
  set map(dynamic/*Map|StreetViewPanorama*/ map) => $unsafe.setMap(map);

  void set_onAdd(onAdd()) { $unsafe.onAdd = new js.Callback.many(onAdd); }
  void set_onRemove(onRemove()) { $unsafe.onRemove = new js.Callback.many(onRemove); }
  void set_draw(draw()) { $unsafe.draw = new js.Callback.many(draw); }
}