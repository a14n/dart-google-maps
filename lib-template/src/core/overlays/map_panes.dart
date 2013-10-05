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

@wrapper abstract class MapPanes extends jsw.TypedJsObject {
  html.Node get floatPane => jsw.convertElementToDart($unsafe['floatPane']);
  html.Node get floatShadow => jsw.convertElementToDart($unsafe['floatShadow']);
  html.Node get mapPane => jsw.convertElementToDart($unsafe['mapPane']);
  html.Node get overlayImage => jsw.convertElementToDart($unsafe['overlayImage']);
  html.Node get overlayLayer => jsw.convertElementToDart($unsafe['overlayLayer']);
  html.Node get overlayMouseTarget => jsw.convertElementToDart($unsafe['overlayMouseTarget']);
  html.Node get overlayShadow => jsw.convertElementToDart($unsafe['overlayShadow']);
  set floatPane(html.Node floatPane) => $unsafe['floatPane'] = jsw.convertElementToJs(floatPane);
  set floatShadow(html.Node floatShadow) => $unsafe['floatShadow'] = jsw.convertElementToJs(floatShadow);
  set mapPane(html.Node mapPane) => $unsafe['mapPane'] = jsw.convertElementToJs(mapPane);
  set overlayImage(html.Node overlayImage) => $unsafe['overlayImage'] = jsw.convertElementToJs(overlayImage);
  set overlayLayer(html.Node overlayLayer) => $unsafe['overlayLayer'] = jsw.convertElementToJs(overlayLayer);
  set overlayMouseTarget(html.Node overlayMouseTarget) => $unsafe['overlayMouseTarget'] = jsw.convertElementToJs(overlayMouseTarget);
  set overlayShadow(html.Node overlayShadow) => $unsafe['overlayShadow'] = jsw.convertElementToJs(overlayShadow);
}