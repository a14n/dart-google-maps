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

part of '../top_level.dart';

@JS('google.maps')
external _maps get maps;
extension type _maps._(JSObject _) implements JSObject {
  external static String get version;
  @JS('importLibrary')
  external JSPromise<
          JSAny /*CoreLibrary|MapsLibrary|Maps3DLibrary|PlacesLibrary|GeocodingLibrary|RoutesLibrary|MarkerLibrary|GeometryLibrary|ElevationLibrary|StreetViewLibrary|JourneySharingLibrary|DrawingLibrary|VisualizationLibrary*/ >
      _importLibrary(
    String libraryName,
  );
  Future<JSAny /*CoreLibrary|MapsLibrary|Maps3DLibrary|PlacesLibrary|GeocodingLibrary|RoutesLibrary|MarkerLibrary|GeometryLibrary|ElevationLibrary|StreetViewLibrary|JourneySharingLibrary|DrawingLibrary|VisualizationLibrary*/ >
      importLibrary(
    String libraryName,
  ) =>
          _importLibrary(libraryName).toDart;
}
