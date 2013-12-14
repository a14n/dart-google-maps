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

class MapPanes extends jsw.TypedJsObject {
  static MapPanes $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapPanes.fromJsObject(jsObject);
  MapPanes.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  set floatPane(html.Node floatPane) => $unsafe['floatPane'] = floatPane;
  html.Node get floatPane => $unsafe['floatPane'];
  set floatShadow(html.Node floatShadow) => $unsafe['floatShadow'] = floatShadow;
  html.Node get floatShadow => $unsafe['floatShadow'];
  set mapPane(html.Node mapPane) => $unsafe['mapPane'] = mapPane;
  html.Node get mapPane => $unsafe['mapPane'];
  set overlayImage(html.Node overlayImage) => $unsafe['overlayImage'] = overlayImage;
  html.Node get overlayImage => $unsafe['overlayImage'];
  set overlayLayer(html.Node overlayLayer) => $unsafe['overlayLayer'] = overlayLayer;
  html.Node get overlayLayer => $unsafe['overlayLayer'];
  set overlayMouseTarget(html.Node overlayMouseTarget) => $unsafe['overlayMouseTarget'] = overlayMouseTarget;
  html.Node get overlayMouseTarget => $unsafe['overlayMouseTarget'];
  set overlayShadow(html.Node overlayShadow) => $unsafe['overlayShadow'] = overlayShadow;
  html.Node get overlayShadow => $unsafe['overlayShadow'];
}
