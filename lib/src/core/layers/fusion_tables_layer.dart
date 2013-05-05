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

class FusionTablesLayer extends MVCObject {
  static FusionTablesLayer cast(js.Proxy proxy) => proxy == null ? null : new FusionTablesLayer.fromProxy(proxy);

  SubscribeStreamProvider<FusionTablesMouseEvent> _onClick;

  FusionTablesLayer(FusionTablesLayerOptions options) : super(maps.FusionTablesLayer, [options]) { _initStreams(); }
  FusionTablesLayer.fromProxy(js.Proxy proxy) : super.fromProxy(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", FusionTablesMouseEvent.cast);
  }

  Stream<FusionTablesMouseEvent> get onClick => _onClick.stream;

  GMap get map => GMap.cast($unsafe.getMap());
  set map(GMap map) => $unsafe.setMap(map);
  set options(FusionTablesLayerOptions options) => $unsafe.setOptions(options);

  /// deprecated : use onXxx stream.
  @deprecated FusionTablesLayerEvents get on => new FusionTablesLayerEvents._(this);
}

@deprecated
class FusionTablesLayerEvents {
  static final CLICK = "click";

  final FusionTablesLayer _fusionTablesLayer;

  FusionTablesLayerEvents._(this._fusionTablesLayer);

  FusionTablesMouseEventListenerAdder get click => new FusionTablesMouseEventListenerAdder(_fusionTablesLayer, CLICK);
}