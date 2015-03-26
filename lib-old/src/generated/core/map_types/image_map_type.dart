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

// TODO extends MVCObject mixin MapType
class ImageMapType extends MapType {
  static ImageMapType $wrap(js.JsObject jsObject) => jsObject == null ? null : new ImageMapType.fromJsObject(jsObject);
  jsw.SubscribeStreamProvider _onTilesloaded;

  ImageMapType(ImageMapTypeOptions opts)
      : super(maps['ImageMapType'], [opts == null ? null : opts.$unsafe]) {
    _initStreams();
  }
  ImageMapType.fromJsObject(js.JsObject proxy)
      : super.fromJsObject(proxy) {
    _initStreams();
  }

  void _initStreams() {
    _onTilesloaded = event.getStreamProviderFor(this, "tilesloaded");
  }

  Stream get onTilesloaded => _onTilesloaded.stream;

  set opacity(num opacity) => $unsafe.callMethod('setOpacity', [opacity]);
  num get opacity => $unsafe.callMethod('getOpacity');
}
