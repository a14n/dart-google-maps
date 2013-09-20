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

class FusionTablesStyle extends jsw.TypedJsObject {
  static FusionTablesStyle cast(js.JsObject jsObject) => jsObject == null ? null : new FusionTablesStyle.fromJsObject(jsObject);
  FusionTablesStyle.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  FusionTablesStyle() : super();

  set markerOptions(FusionTablesMarkerOptions markerOptions) => $unsafe['markerOptions'] = markerOptions;
FusionTablesMarkerOptions get markerOptions => FusionTablesMarkerOptions.cast($unsafe['markerOptions']);
set polygonOptions(FusionTablesPolygonOptions polygonOptions) => $unsafe['polygonOptions'] = polygonOptions;
FusionTablesPolygonOptions get polygonOptions => FusionTablesPolygonOptions.cast($unsafe['polygonOptions']);
set polylineOptions(FusionTablesPolylineOptions polylineOptions) => $unsafe['polylineOptions'] = polylineOptions;
FusionTablesPolylineOptions get polylineOptions => FusionTablesPolylineOptions.cast($unsafe['polylineOptions']);
set where(String where) => $unsafe['where'] = where;
String get where => $unsafe['where'];
}
