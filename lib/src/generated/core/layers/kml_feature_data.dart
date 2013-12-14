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

class KmlFeatureData extends jsw.TypedJsObject {
  static KmlFeatureData $wrap(js.JsObject jsObject) => jsObject == null ? null : new KmlFeatureData.fromJsObject(jsObject);
  KmlFeatureData.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  KmlFeatureData();

  set author(KmlAuthor author) => $unsafe['author'] = author == null ? null : author.$unsafe;
  KmlAuthor get author => KmlAuthor.$wrap($unsafe['author']);
  set description(String description) => $unsafe['description'] = description;
  String get description => $unsafe['description'];
  set id(String id) => $unsafe['id'] = id;
  String get id => $unsafe['id'];
  set infoWindowHtml(String infoWindowHtml) => $unsafe['infoWindowHtml'] = infoWindowHtml;
  String get infoWindowHtml => $unsafe['infoWindowHtml'];
  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set snippet(String snippet) => $unsafe['snippet'] = snippet;
  String get snippet => $unsafe['snippet'];
}
