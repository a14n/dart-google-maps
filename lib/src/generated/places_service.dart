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

import 'dart:js_interop';
import '/src/js/date.dart' show Date;
import 'autocomplete_data.dart' show AutocompleteSessionToken;
import 'coordinates.dart'
    show
        LatLng,
        LatLngBounds,
        LatLngBoundsOrLatLngBoundsLiteral,
        LatLngOrLatLngLiteral;
import 'geocoder.dart' show GeocoderAddressComponent;
part 'places_service/business_status.dart';
part 'places_service/find_place_from_phone_number_request.dart';
part 'places_service/find_place_from_query_request.dart';
part 'places_service/location_bias.dart';
part 'places_service/location_restriction.dart';
part 'places_service/photo_options.dart';
part 'places_service/place_aspect_rating.dart';
part 'places_service/place_details_request.dart';
part 'places_service/place_geometry.dart';
part 'places_service/place_opening_hours.dart';
part 'places_service/place_opening_hours_period.dart';
part 'places_service/place_opening_hours_time.dart';
part 'places_service/place_photo.dart';
part 'places_service/place_plus_code.dart';
part 'places_service/place_result.dart';
part 'places_service/place_review.dart';
part 'places_service/place_search_pagination.dart';
part 'places_service/place_search_request.dart';
part 'places_service/places_service.dart';
part 'places_service/places_service_status.dart';
part 'places_service/rank_by.dart';
part 'places_service/text_search_request.dart';
