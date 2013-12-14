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

class KmlMouseEvent extends jsw.TypedJsObject {
  static KmlMouseEvent $wrap(js.JsObject jsObject) => jsObject == null ? null : new KmlMouseEvent.fromJsObject(jsObject);
  KmlMouseEvent.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  set featureData(KmlFeatureData featureData) => $unsafe['featureData'] = featureData == null ? null : featureData.$unsafe;
  KmlFeatureData get featureData => KmlFeatureData.$wrap($unsafe['featureData']);
  set latLng(LatLng latLng) => $unsafe['latLng'] = latLng == null ? null : latLng.$unsafe;
  LatLng get latLng => LatLng.$wrap($unsafe['latLng']);
  set pixelOffset(Size pixelOffset) => $unsafe['pixelOffset'] = pixelOffset == null ? null : pixelOffset.$unsafe;
  Size get pixelOffset => Size.$wrap($unsafe['pixelOffset']);
}
