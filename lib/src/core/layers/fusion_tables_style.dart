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

class FusionTablesStyle extends jsw.TypedProxy {
  static FusionTablesStyle cast(js.Proxy proxy) => proxy == null ? null : new FusionTablesStyle.fromProxy(proxy);

  FusionTablesStyle() : super();
  FusionTablesStyle.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  FusionTablesMarkerOptions get markerOptions => FusionTablesMarkerOptions.cast($unsafe.markerOptions);
  FusionTablesPolygonOptions get polygonOptions => FusionTablesPolygonOptions.cast($unsafe.polygonOptions);
  FusionTablesPolylineOptions get polylineOptions => FusionTablesPolylineOptions.cast($unsafe.polylineOptions);
  String get where => $unsafe.where;
  set markerOptions(FusionTablesMarkerOptions markerOptions) => $unsafe.markerOptions = markerOptions;
  set polygonOptions(FusionTablesPolygonOptions polygonOptions) => $unsafe.polygonOptions = polygonOptions;
  set polylineOptions(FusionTablesPolylineOptions polylineOptions) => $unsafe.polylineOptions = polylineOptions;
  set where(String where) => $unsafe.where = where;
}