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

class FusionTablesQuery extends jsw.TypedJsObject {
  static FusionTablesQuery $wrap(js.JsObject jsObject) => jsObject == null ? null : new FusionTablesQuery.fromJsObject(jsObject);
  FusionTablesQuery.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  FusionTablesQuery();

  set from(String from) => $unsafe['from'] = from;
  String get from => $unsafe['from'];
  set limit(num limit) => $unsafe['limit'] = limit;
  num get limit => $unsafe['limit'];
  set offset(num offset) => $unsafe['offset'] = offset;
  num get offset => $unsafe['offset'];
  set orderBy(String orderBy) => $unsafe['orderBy'] = orderBy;
  String get orderBy => $unsafe['orderBy'];
  set select(String select) => $unsafe['select'] = select;
  String get select => $unsafe['select'];
  set where(String where) => $unsafe['where'] = where;
  String get where => $unsafe['where'];
}
