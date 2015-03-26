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
class StyledMapType extends MapType {
  static StyledMapType $wrap(js.JsObject jsObject) => jsObject == null ? null : new StyledMapType.fromJsObject(jsObject);
  StyledMapType.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  StyledMapType(List<MapTypeStyle> styles, [StyledMapTypeOptions options])
      : super(maps['StyledMapType'], [jsw.jsify(styles), options == null ? null : options.$unsafe]);
}
