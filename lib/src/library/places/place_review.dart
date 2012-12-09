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

class PlaceReview extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceReview.fromJsProxy(jsProxy);

  PlaceReview() : super();
  PlaceReview.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  List<PlaceAspectRating> get aspects => $.aspects.map((js.Proxy jsProxy) => new jsw.JsList<PlaceAspectRating>.fromJsProxy(jsProxy, PlaceAspectRating.INSTANCIATOR)).value;
  String get authorName => $.author_name.value;
  String get authorUrl => $.author_url.value;
  String get text => $.text.value;
  set aspects(List<PlaceAspectRating> aspects) => $.aspects = aspects;
  set authorName(String authorName) => $.author_name = authorName;
  set authorUrl(String authorUrl) => $.author_url = authorUrl;
  set text(String text) => $.text = text;
}