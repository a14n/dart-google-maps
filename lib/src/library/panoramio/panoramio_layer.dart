// Copyright (c) 2015, Alexandre Ardhuin
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

part of google_maps.src.panoramio;

@JsName('google.maps.panoramio.PanoramioLayer')
abstract class _PanoramioLayer extends MVCObject {
  external factory _PanoramioLayer([PanoramioLayerOptions opts]);

  GMap get map => _getMap();
  GMap _getMap();
  String get tag => _getTag();
  String _getTag();
  String get userId => _getUserId();
  String _getUserId();
  void set map(GMap map) => _setMap(map);
  void _setMap(GMap map);
  void set options(PanoramioLayerOptions options) => _setOptions(options);
  void _setOptions(PanoramioLayerOptions options);
  void set tag(String tag) => _setTag(tag);
  void _setTag(String tag);
  void set userId(String userId) => _setUserId(userId);
  void _setUserId(String userId);

  Stream<PanoramioMouseEvent> get onClick => getStream(this, #onClick, "click",
      (JsObject o) => new PanoramioMouseEvent.created(o));
}
