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

part of google_maps.src;

@jsEnum
class MapTypeStyleFeatureType extends JsEnum {
  MapTypeStyleFeatureType._(o) : super.created(o);

  static final values = <MapTypeStyleFeatureType>[
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
  ];
  static final ADMINISTRATIVE = MapTypeStyleFeatureType._('administrative');
  static final ADMINISTRATIVE_COUNTRY =
      MapTypeStyleFeatureType._('administrative.country');
  static final ADMINISTRATIVE_LAND_PARCEL =
      MapTypeStyleFeatureType._('administrative.land_parcel');
  static final ADMINISTRATIVE_LOCALITY =
      MapTypeStyleFeatureType._('administrative.locality');
  static final ADMINISTRATIVE_NEIGHBORHOOD =
      MapTypeStyleFeatureType._('administrative.neighborhood');
  static final ADMINISTRATIVE_PROVINCE =
      MapTypeStyleFeatureType._('administrative.province');
  static final ALL = MapTypeStyleFeatureType._('all');
  static final LANDSCAPE = MapTypeStyleFeatureType._('landscape');
  static final LANDSCAPE_MAN_MADE =
      MapTypeStyleFeatureType._('landscape.man_made');
  static final LANDSCAPE_NATURAL =
      MapTypeStyleFeatureType._('landscape.natural');
  static final LANDSCAPE_NATURAL_LANDCOVER =
      MapTypeStyleFeatureType._('landscape.natural.landcover');
  static final LANDSCAPE_NATURAL_TERRAIN =
      MapTypeStyleFeatureType._('landscape.natural.terrain');
  static final POI = MapTypeStyleFeatureType._('poi');
  static final POI_ATTRACTION = MapTypeStyleFeatureType._('poi.attraction');
  static final POI_BUSINESS = MapTypeStyleFeatureType._('poi.business');
  static final POI_GOVERNMENT = MapTypeStyleFeatureType._('poi.government');
  static final POI_MEDICAL = MapTypeStyleFeatureType._('poi.medical');
  static final POI_PARK = MapTypeStyleFeatureType._('poi.park');
  static final POI_PLACE_OF_WORSHIP =
      MapTypeStyleFeatureType._('poi.place_of_worship');
  static final POI_SCHOOL = MapTypeStyleFeatureType._('poi.school');
  static final POI_SPORTS_COMPLEX =
      MapTypeStyleFeatureType._('poi.sports_complex');
  static final ROAD = MapTypeStyleFeatureType._('road');
  static final ROAD_ARTERIAL = MapTypeStyleFeatureType._('road.arterial');
  static final ROAD_HIGHWAY = MapTypeStyleFeatureType._('road.highway');
  static final ROAD_HIGHWAY_CONTROLLED_ACCESS =
      MapTypeStyleFeatureType._('road.highway.controlled_access');
  static final ROAD_LOCAL = MapTypeStyleFeatureType._('road.local');
  static final TRANSIT = MapTypeStyleFeatureType._('transit');
  static final TRANSIT_LINE = MapTypeStyleFeatureType._('transit.line');
  static final TRANSIT_STATION = MapTypeStyleFeatureType._('transit.station');
  static final TRANSIT_STATION_AIRPORT =
      MapTypeStyleFeatureType._('transit.station.airport');
  static final TRANSIT_STATION_BUS =
      MapTypeStyleFeatureType._('transit.station.bus');
  static final TRANSIT_STATION_RAIL =
      MapTypeStyleFeatureType._('transit.station.rail');
  static final WATER = MapTypeStyleFeatureType._('water');
}
