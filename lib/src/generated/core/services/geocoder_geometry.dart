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

class GeocoderGeometry extends jsw.TypedJsObject {
  static GeocoderGeometry cast(js.JsObject jsObject) => jsObject == null ? null : new GeocoderGeometry.fromJsObject(jsObject);
  GeocoderGeometry.fromJsObject(js.JsObject jsObject) : super.fromJsObject(jsObject);
  GeocoderGeometry() : super();

  set bounds(LatLngBounds bounds) => $unsafe['bounds'] = bounds;
LatLngBounds get bounds => LatLngBounds.cast($unsafe['bounds']);
set location(LatLng location) => $unsafe['location'] = location;
LatLng get location => LatLng.cast($unsafe['location']);
GeocoderLocationType get locationType => GeocoderLocationType.find($unsafe['location_type']);
  set locationType(GeocoderLocationType locationType) => $unsafe['location_type'] = locationType;
  set viewport(LatLngBounds viewport) => $unsafe['viewport'] = viewport;
LatLngBounds get viewport => LatLngBounds.cast($unsafe['viewport']);
}