// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../street_view_service.dart';

extension type StreetViewPanoramaData._(JSObject _) implements JSObject {
  external StreetViewPanoramaData({
    StreetViewTileData tiles,
    String? copyright,
    String? imageDate,
    JSArray<StreetViewLink>? links,
    StreetViewLocation? location,
  });
  external StreetViewTileData tiles;
  external String? copyright;
  external String? imageDate;
  @JS('links')
  external JSArray<StreetViewLink>? _links;
  List<StreetViewLink>? get links => _links?.toDart;
  set links(List<StreetViewLink>? value) => _links = value?.toJS;
  external StreetViewLocation? location;
}
