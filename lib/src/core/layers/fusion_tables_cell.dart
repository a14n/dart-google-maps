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

class FusionTablesCell extends jsw.TypedProxy {
  static FusionTablesCell cast(js.Proxy proxy) => proxy == null ? null : new FusionTablesCell.fromProxy(proxy);

  FusionTablesCell() : super();
  FusionTablesCell.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get columnName => $unsafe.columnName;
  String get value => $unsafe.value;
  set columnName(String columnName) => $unsafe.columnName = columnName;
  set value(String value) => $unsafe.value = value;
}