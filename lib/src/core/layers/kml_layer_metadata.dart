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

class KmlLayerMetadata extends jsw.TypedProxy {
  static KmlLayerMetadata cast(js.Proxy proxy) => proxy == null ? null : new KmlLayerMetadata.fromProxy(proxy);

  KmlLayerMetadata() : super();
  KmlLayerMetadata.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  KmlAuthor get author => KmlAuthor.cast($unsafe['author']);
  String get description => $unsafe['description'];
  String get name => $unsafe['name'];
  String get snippet => $unsafe['snippet'];
  set author(KmlAuthor author) => $unsafe['author'] = author;
  set description(String description) => $unsafe['description'] = description;
  set name(String name) => $unsafe['name'] = name;
  set snippet(String snippet) => $unsafe['snippet'] = snippet;
}