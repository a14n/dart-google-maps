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

class DistanceMatrixResponse extends jsw.TypedProxy {
  static DistanceMatrixResponse cast(js.Proxy proxy) => proxy == null ? null : new DistanceMatrixResponse.fromProxy(proxy);

  DistanceMatrixResponse() : super();
  DistanceMatrixResponse.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  List<String> get destinationAddresses => jsw.JsArrayToListAdapter.cast($unsafe.destinationAddresses);
  List<String> get originAddresses => jsw.JsArrayToListAdapter.cast($unsafe.originAddresses);
  List<DistanceMatrixResponseRow> get rows => jsw.JsArrayToListAdapter.castListOfSerializables($unsafe.rows, DistanceMatrixResponseRow.cast);
  set destinationAddresses(List<String> destinationAddresses) => $unsafe.destinationAddresses = jsifyList(destinationAddresses);
  set originAddresses(List<String> originAddresses) => $unsafe.originAddresses = jsifyList(originAddresses);
  set rows(List<DistanceMatrixResponseRow> rows) => $unsafe.rows = jsifyList(rows);
}