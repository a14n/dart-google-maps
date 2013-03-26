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

class StreetViewLink extends jsw.TypedProxy {
  static StreetViewLink cast(js.Proxy proxy) => proxy == null ? null : new StreetViewLink.fromProxy(proxy);

  StreetViewLink() : super();
  StreetViewLink.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get description => $unsafe.description;
  num get heading => $unsafe.heading;
  String get pano => $unsafe.pano;
  set description(String description) => $unsafe.description = description;
  set heading(num heading) => $unsafe.heading = heading;
  set pano(String pano) => $unsafe.pano = pano;
}