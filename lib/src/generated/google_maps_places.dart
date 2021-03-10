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

@JS()
library google_maps.places;

import 'dart:async' show StreamController;
import 'dart:html' show InputElement;
import 'package:js_wrapping/js_wrapping.dart';
import 'package:google_maps/google_maps.dart';

part 'places/autocomplete.dart';
part 'places/autocomplete_options.dart';
part 'places/search_box.dart';
part 'places/search_box_options.dart';
part 'places/places_service.dart';
part 'places/place_details_request.dart';
part 'places/find_place_from_phone_number_request.dart';
part 'places/find_place_from_query_request.dart';
part 'places/place_search_request.dart';
part 'places/text_search_request.dart';
part 'places/rank_by.dart';
part 'places/places_service_status.dart';
part 'places/place_search_pagination.dart';
part 'places/place_result.dart';
part 'places/place_aspect_rating.dart';
part 'places/business_status.dart';
part 'places/place_geometry.dart';
part 'places/place_opening_hours.dart';
part 'places/place_opening_hours_period.dart';
part 'places/place_opening_hours_time.dart';
part 'places/place_plus_code.dart';
part 'places/place_photo.dart';
part 'places/photo_options.dart';
part 'places/place_review.dart';
part 'places/autocomplete_service.dart';
part 'places/autocompletion_request.dart';
part 'places/autocomplete_response.dart';
part 'places/query_autocompletion_request.dart';
part 'places/autocomplete_session_token.dart';
part 'places/component_restrictions.dart';
part 'places/autocomplete_prediction.dart';
part 'places/query_autocomplete_prediction.dart';
part 'places/prediction_term.dart';
part 'places/prediction_substring.dart';
part 'places/structured_formatting.dart';
