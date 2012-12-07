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

class MapPanes extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new MapPanes.fromJsProxy(jsProxy);

  MapPanes.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  html.Node get floatPane => $.floatPane.value;
  set floatPane(html.Node floatPane) => $.floatPane = floatPane;
  html.Node get floatShadow => $.floatShadow.value;
  set floatShadow(html.Node floatShadow) => $.floatShadow = floatShadow;
  html.Node get mapPane => $.mapPane.value;
  set mapPane(html.Node mapPane) => $.mapPane = mapPane;
  html.Node get overlayImage => $.overlayImage.value;
  set overlayImage(html.Node overlayImage) => $.overlayImage = overlayImage;
  html.Node get overlayLayer => $.overlayLayer.value;
  set overlayLayer(html.Node overlayLayer) => $.overlayLayer = overlayLayer;
  html.Node get overlayMouseTarget => $.overlayMouseTarget.value;
  set overlayMouseTarget(html.Node overlayMouseTarget) => $.overlayMouseTarget = overlayMouseTarget;
  html.Node get overlayShadow => $.overlayShadow.value;
  set overlayShadow(html.Node overlayShadow) => $.overlayShadow = overlayShadow;
}