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

part of google_maps_places;

class PlaceReview extends jsw.TypedJsObject {
  static PlaceReview $wrap(js.JsObject jsObject) => jsObject == null ? null : new PlaceReview.fromJsObject(jsObject);
  PlaceReview.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  PlaceReview()
      : super();

  set aspects(List<PlaceAspectRating> aspects) => $unsafe['aspects'] = jsw.jsify(aspects);
  List<PlaceAspectRating> get aspects => jsw.TypedJsArray.$wrapSerializables($unsafe['aspects'], PlaceAspectRating.$wrap);
  set authorName(String authorName) => $unsafe['author_name'] = authorName;
  String get authorName => $unsafe['author_name'];
  set authorUrl(String authorUrl) => $unsafe['author_url'] = authorUrl;
  String get authorUrl => $unsafe['author_url'];
  set text(String text) => $unsafe['text'] = text;
  String get text => $unsafe['text'];
}
