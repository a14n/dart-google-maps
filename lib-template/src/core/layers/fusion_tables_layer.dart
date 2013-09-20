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

@wrapper @skipConstructor abstract class FusionTablesLayer extends MVCObject {
  SubscribeStreamProvider<FusionTablesMouseEvent> _onClick;

  FusionTablesLayer(FusionTablesLayerOptions options) : super(maps['FusionTablesLayer'], [options]) { _initStreams(); }
  FusionTablesLayer.fromJsObject(js.JsObject proxy) : super.fromJsObject(proxy) { _initStreams(); }

  void _initStreams() {
    _onClick = event.getStreamProviderFor(this, "click", FusionTablesMouseEvent.cast);
  }

  Stream<FusionTablesMouseEvent> get onClick => _onClick.stream;

  @forMethods GMap get map;
  @forMethods set map(GMap map);
  @forMethods set options(FusionTablesLayerOptions options);
}
