// Copyright (c) 2013, Alexandre Ardhuin
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

part of google_maps_visualization;

class MapsEngineMouseEvent extends jsw.TypedProxy {
  static MapsEngineMouseEvent cast(js.Proxy proxy) => proxy == null ? null : new MapsEngineMouseEvent.fromProxy(proxy);

  MapsEngineMouseEvent() : super();
  MapsEngineMouseEvent.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get featureId => $unsafe.featureId;
  String get infoWindowHtml => $unsafe.infoWindowHtml;
  LatLng get latLng => LatLng.cast($unsafe.latLng);
  Size get pixelOffset => Size.cast($unsafe.pixelOffset);
  set featureId(String featureId) => $unsafe.featureId = featureId;
  set infoWindowHtml(String infoWindowHtml) => $unsafe.infoWindowHtml = infoWindowHtml;
  set latLng(LatLng latLng) => $unsafe.latLng = latLng;
  set pixelOffset(Size pixelOffset) => $unsafe.pixelOffset = pixelOffset;
}