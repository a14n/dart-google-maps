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

class MapTypeStyle extends jsw.TypedJsObject {
  static MapTypeStyle cast(js.JsObject jsObject) => jsObject == null ? null : new MapTypeStyle.fromJsObject(jsObject);
  MapTypeStyle.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  MapTypeStyle()
      : super();

  set elementType(MapTypeStyleElementType elementType) => $unsafe['elementType'] = elementType;
  MapTypeStyleElementType get elementType => MapTypeStyleElementType.find($unsafe['elementType']);
  set featureType(MapTypeStyleFeatureType featureType) => $unsafe['featureType'] = featureType;
  MapTypeStyleFeatureType get featureType => MapTypeStyleFeatureType.find($unsafe['featureType']);
  set stylers(List<MapTypeStyler> stylers) => $unsafe['stylers'] = stylers == null ? null : stylers is js.Serializable ? stylers : js.jsify(stylers);
  List<MapTypeStyler> get stylers => jsw.TypedJsArray.castListOfSerializables($unsafe['stylers'], MapTypeStyler.cast);
}
