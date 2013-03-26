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

class MapPanes extends jsw.TypedProxy {
  static MapPanes cast(js.Proxy proxy) => proxy == null ? null : new MapPanes.fromProxy(proxy);

  MapPanes.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  html.Node get floatPane => $unsafe.floatPane;
  html.Node get floatShadow => $unsafe.floatShadow;
  html.Node get mapPane => $unsafe.mapPane;
  html.Node get overlayImage => $unsafe.overlayImage;
  html.Node get overlayLayer => $unsafe.overlayLayer;
  html.Node get overlayMouseTarget => $unsafe.overlayMouseTarget;
  html.Node get overlayShadow => $unsafe.overlayShadow;
  set floatPane(html.Node floatPane) => $unsafe.floatPane = floatPane;
  set floatShadow(html.Node floatShadow) => $unsafe.floatShadow = floatShadow;
  set mapPane(html.Node mapPane) => $unsafe.mapPane = mapPane;
  set overlayImage(html.Node overlayImage) => $unsafe.overlayImage = overlayImage;
  set overlayLayer(html.Node overlayLayer) => $unsafe.overlayLayer = overlayLayer;
  set overlayMouseTarget(html.Node overlayMouseTarget) => $unsafe.overlayMouseTarget = overlayMouseTarget;
  set overlayShadow(html.Node overlayShadow) => $unsafe.overlayShadow = overlayShadow;
}