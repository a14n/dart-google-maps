// Copyright (c) 2013, Alexandre Ardhuin
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

class PlacePhoto extends jsw.TypedProxy {
  static PlacePhoto cast(js.Proxy proxy) => proxy == null ? null : new PlacePhoto.fromProxy(proxy);

  PlacePhoto() : super();
  PlacePhoto.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  num get height => $unsafe['height'];
  List<String> get htmlAttributions => jsw.JsArrayToListAdapter.cast($unsafe['html_attributions']);
  num get width => $unsafe['width'];
  set height(num height) => $unsafe['height'] = height;
  set htmlAttributions(List<String> htmlAttributions) => $unsafe['html_attributions'] = jsifyList(htmlAttributions);
  set width(num width) => $unsafe['width'] = width;
}