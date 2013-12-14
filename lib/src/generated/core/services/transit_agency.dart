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

class TransitAgency extends jsw.TypedJsObject {
  static TransitAgency $wrap(js.JsObject jsObject) => jsObject == null ? null : new TransitAgency.fromJsObject(jsObject);
  TransitAgency.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  TransitAgency();

  set name(String name) => $unsafe['name'] = name;
  String get name => $unsafe['name'];
  set phone(String phone) => $unsafe['phone'] = phone;
  String get phone => $unsafe['phone'];
  set url(String url) => $unsafe['url'] = url;
  String get url => $unsafe['url'];
}
