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
import 'autocomplete_data.dart' show PlacePrediction;
import 'coordinates.dart'
    show
        CircleLiteral,
        LatLng,
        LatLngAltitude,
        LatLngAltitudeLiteral,
        LatLngBounds,
        LatLngBoundsLiteral,
        LatLngBoundsOrLatLngBoundsLiteral,
        LatLngLiteral;
import 'dart:async' show Stream, StreamController;
import 'directions.dart' show UnitSystem;
import 'event.dart' show MVCObject, MapsEventListener, event;
import 'package:web/web.dart' show Event, HTMLElement, HTMLInputElement;
import 'place.dart'
    show
        EVConnectorType,
        Place,
        PriceLevel,
        SearchByTextRankPreference,
        SearchNearbyRankPreference;
import 'places_autocomplete_service.dart' show ComponentRestrictions;
import 'places_service.dart'
    show LocationBias, LocationRestriction, PlaceResult;
part 'places_widget/autocomplete.dart';
part 'places_widget/autocomplete_options.dart';
part 'places_widget/basic_place_autocomplete_element.dart';
part 'places_widget/basic_place_autocomplete_element_options.dart';
part 'places_widget/place_autocomplete_element.dart';
part 'places_widget/place_autocomplete_element_options.dart';
part 'places_widget/place_details_compact_element.dart';
part 'places_widget/place_details_compact_element_options.dart';
part 'places_widget/place_details_element.dart';
part 'places_widget/place_details_element_options.dart';
part 'places_widget/place_details_location_request_element.dart';
part 'places_widget/place_details_location_request_element_options.dart';
part 'places_widget/place_details_orientation.dart';
part 'places_widget/place_details_place_request_element.dart';
part 'places_widget/place_details_place_request_element_options.dart';
part 'places_widget/place_nearby_search_request_element.dart';
part 'places_widget/place_nearby_search_request_element_options.dart';
part 'places_widget/place_prediction_select_event.dart';
part 'places_widget/place_search_attribution_position.dart';
part 'places_widget/place_search_element.dart';
part 'places_widget/place_search_element_options.dart';
part 'places_widget/place_search_orientation.dart';
part 'places_widget/place_select_event.dart';
part 'places_widget/place_text_search_request_element.dart';
part 'places_widget/place_text_search_request_element_options.dart';
part 'places_widget/search_box.dart';
part 'places_widget/search_box_options.dart';
