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

class PanoramioFeature extends jsw.TypedJsObject {
  static PanoramioFeature $wrap(js.JsObject jsObject) => jsObject == null ? null : new PanoramioFeature.fromJsObject(jsObject);
  PanoramioFeature.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PanoramioFeature()
      : super();

  set author(String author) => $unsafe['author'] = author;
  String get author => $unsafe['author'];
  set photoId(String photoId) => $unsafe['photoId'] = photoId;
  String get photoId => $unsafe['photoId'];
  set title(String title) => $unsafe['title'] = title;
  String get title => $unsafe['title'];
  set url(String url) => $unsafe['url'] = url;
  String get url => $unsafe['url'];
  set userId(String userId) => $unsafe['userId'] = userId;
  String get userId => $unsafe['userId'];
}
