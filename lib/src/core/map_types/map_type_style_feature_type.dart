// Copyright (c) 2015, Alexandre Ardhuin
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

final mapTypeStyleFeatureTypeCodec =
    new BiMapCodec<MapTypeStyleFeatureType, dynamic>({
  MapTypeStyleFeatureType.ADMINISTRATIVE: 'administrative',
  MapTypeStyleFeatureType.ADMINISTRATIVE_COUNTRY: 'administrative.country',
  MapTypeStyleFeatureType.ADMINISTRATIVE_LAND_PARCEL:
      'administrative.land_parcel',
  MapTypeStyleFeatureType.ADMINISTRATIVE_LOCALITY: 'administrative.locality',
  MapTypeStyleFeatureType.ADMINISTRATIVE_NEIGHBORHOOD:
      'administrative.neighborhood',
  MapTypeStyleFeatureType.ADMINISTRATIVE_PROVINCE: 'administrative.province',
  MapTypeStyleFeatureType.ALL: 'all',
  MapTypeStyleFeatureType.LANDSCAPE: 'landscape',
  MapTypeStyleFeatureType.LANDSCAPE_MAN_MADE: 'landscape.man_made',
  MapTypeStyleFeatureType.LANDSCAPE_NATURAL: 'landscape.natural',
  MapTypeStyleFeatureType.LANDSCAPE_NATURAL_LANDCOVER:
      'landscape.natural.landcover',
  MapTypeStyleFeatureType.LANDSCAPE_NATURAL_TERRAIN:
      'landscape.natural.terrain',
  MapTypeStyleFeatureType.POI: 'poi',
  MapTypeStyleFeatureType.POI_ATTRACTION: 'poi.attraction',
  MapTypeStyleFeatureType.POI_BUSINESS: 'poi.business',
  MapTypeStyleFeatureType.POI_GOVERNMENT: 'poi.government',
  MapTypeStyleFeatureType.POI_MEDICAL: 'poi.medical',
  MapTypeStyleFeatureType.POI_PARK: 'poi.park',
  MapTypeStyleFeatureType.POI_PLACE_OF_WORSHIP: 'poi.place_of_worship',
  MapTypeStyleFeatureType.POI_SCHOOL: 'poi.school',
  MapTypeStyleFeatureType.POI_SPORTS_COMPLEX: 'poi.sports_complex',
  MapTypeStyleFeatureType.ROAD: 'road',
  MapTypeStyleFeatureType.ROAD_ARTERIAL: 'road.arterial',
  MapTypeStyleFeatureType.ROAD_HIGHWAY: 'road.highway',
  MapTypeStyleFeatureType.ROAD_HIGHWAY_CONTROLLED_ACCESS:
      'road.highway.controlled_access',
  MapTypeStyleFeatureType.ROAD_LOCAL: 'road.local',
  MapTypeStyleFeatureType.TRANSIT: 'transit',
  MapTypeStyleFeatureType.TRANSIT_LINE: 'transit.line',
  MapTypeStyleFeatureType.TRANSIT_STATION: 'transit.station',
  MapTypeStyleFeatureType.TRANSIT_STATION_AIRPORT: 'transit.station.airport',
  MapTypeStyleFeatureType.TRANSIT_STATION_BUS: 'transit.station.bus',
  MapTypeStyleFeatureType.TRANSIT_STATION_RAIL: 'transit.station.rail',
  MapTypeStyleFeatureType.WATER: 'water',
});
@JsCodec(#mapTypeStyleFeatureTypeCodec)
enum MapTypeStyleFeatureType {
  ADMINISTRATIVE,
  ADMINISTRATIVE_COUNTRY,
  ADMINISTRATIVE_LAND_PARCEL,
  ADMINISTRATIVE_LOCALITY,
  ADMINISTRATIVE_NEIGHBORHOOD,
  ADMINISTRATIVE_PROVINCE,
  ALL,
  LANDSCAPE,
  LANDSCAPE_MAN_MADE,
  LANDSCAPE_NATURAL,
  LANDSCAPE_NATURAL_LANDCOVER,
  LANDSCAPE_NATURAL_TERRAIN,
  POI,
  POI_ATTRACTION,
  POI_BUSINESS,
  POI_GOVERNMENT,
  POI_MEDICAL,
  POI_PARK,
  POI_PLACE_OF_WORSHIP,
  POI_SCHOOL,
  POI_SPORTS_COMPLEX,
  ROAD,
  ROAD_ARTERIAL,
  ROAD_HIGHWAY,
  ROAD_HIGHWAY_CONTROLLED_ACCESS,
  ROAD_LOCAL,
  TRANSIT,
  TRANSIT_LINE,
  TRANSIT_STATION,
  TRANSIT_STATION_AIRPORT,
  TRANSIT_STATION_BUS,
  TRANSIT_STATION_RAIL,
  WATER
}
