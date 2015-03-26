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

class TrafficLayer extends MVCObject {
  static TrafficLayer $wrap(js.JsObject jsObject) => jsObject == null ? null : new TrafficLayer.fromJsObject(jsObject);
  TrafficLayer.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  TrafficLayer()
      : super(maps['TrafficLayer'], []);

  set map(GMap map) => $unsafe.callMethod('setMap', [map == null ? null : map.$unsafe]);
  GMap get map => GMap.$wrap($unsafe.callMethod('getMap'));
}
