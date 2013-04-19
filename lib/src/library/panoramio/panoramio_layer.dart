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

part of google_maps_panoramio;

class PanoramioLayer extends MVCObject {
  static PanoramioLayer cast(js.Proxy proxy) => proxy == null ? null : new PanoramioLayer.fromProxy(proxy);

  Stream<PanoramioMouseEvent> _onClick;

  PanoramioLayer([PanoramioLayerOptions opts]) : super(maps.panoramio.PanoramioLayer, [opts]) { _initStreams(); }
  PanoramioLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamFor(this, "click", PanoramioMouseEvent.cast);
  }

  Stream<PanoramioMouseEvent> get onClick => _onClick;

  GMap get map => GMap.cast($unsafe.getMap());
  String get tag => $unsafe.getTag();
  String get userId => $unsafe.getUserId();
  set map(GMap map) => $unsafe.setMap(map);
  set options(PanoramioLayerOptions options) => $unsafe.setOptions(options);
  set tag(String tag) => $unsafe.setTag(tag);
  set userId(String userId) => $unsafe.setUserId(userId);

  /// deprecated : use onXxx stream.
  @deprecated PanoramioLayerEvents get on => new PanoramioLayerEvents._(this);
}

@deprecated
class PanoramioLayerEvents {
  static final CLICK = "click";

  final PanoramioLayer _panoramioLayer;

  PanoramioLayerEvents._(this._panoramioLayer);

  PanoramioMouseEventListenerAdder get click => new PanoramioMouseEventListenerAdder(_panoramioLayer, CLICK);
}