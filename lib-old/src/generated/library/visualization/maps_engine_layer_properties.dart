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

class MapsEngineLayerProperties extends jsw.TypedJsObject {
  static MapsEngineLayerProperties $wrap(js.JsObject jsObject) => jsObject == null ? null : new MapsEngineLayerProperties.fromJsObject(jsObject);
  MapsEngineLayerProperties.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MapsEngineLayerProperties()
      : super();

  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
}
