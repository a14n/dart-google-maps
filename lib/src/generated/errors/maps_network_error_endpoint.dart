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

part of '../errors.dart';

@JS('google.maps.MapsNetworkErrorEndpoint')
extension type MapsNetworkErrorEndpoint._(JSAny _) implements JSAny {
  external static MapsNetworkErrorEndpoint get DIRECTIONS_ROUTE;
  external static MapsNetworkErrorEndpoint get DISTANCE_MATRIX;
  external static MapsNetworkErrorEndpoint get ELEVATION_ALONG_PATH;
  external static MapsNetworkErrorEndpoint get ELEVATION_LOCATIONS;
  external static MapsNetworkErrorEndpoint
      get FLEET_ENGINE_GET_DELIVERY_VEHICLE;
  external static MapsNetworkErrorEndpoint get FLEET_ENGINE_GET_TRIP;
  external static MapsNetworkErrorEndpoint get FLEET_ENGINE_GET_VEHICLE;
  external static MapsNetworkErrorEndpoint
      get FLEET_ENGINE_LIST_DELIVERY_VEHICLES;
  external static MapsNetworkErrorEndpoint get FLEET_ENGINE_LIST_TASKS;
  external static MapsNetworkErrorEndpoint get FLEET_ENGINE_LIST_VEHICLES;
  external static MapsNetworkErrorEndpoint get FLEET_ENGINE_SEARCH_TASKS;
  external static MapsNetworkErrorEndpoint get GEOCODER_GEOCODE;
  external static MapsNetworkErrorEndpoint get MAPS_MAX_ZOOM;
  external static MapsNetworkErrorEndpoint get PLACES_AUTOCOMPLETE;
  external static MapsNetworkErrorEndpoint get PLACES_DETAILS;
  external static MapsNetworkErrorEndpoint
      get PLACES_FIND_PLACE_FROM_PHONE_NUMBER;
  external static MapsNetworkErrorEndpoint get PLACES_FIND_PLACE_FROM_QUERY;
  external static MapsNetworkErrorEndpoint get PLACES_GATEWAY;
  external static MapsNetworkErrorEndpoint get PLACES_GET_PLACE;
  external static MapsNetworkErrorEndpoint get PLACES_LOCAL_CONTEXT_SEARCH;
  external static MapsNetworkErrorEndpoint get PLACES_NEARBY_SEARCH;
  external static MapsNetworkErrorEndpoint get PLACES_SEARCH_TEXT;
  external static MapsNetworkErrorEndpoint get STREETVIEW_GET_PANORAMA;
}
