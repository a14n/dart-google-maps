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

library google_maps.src.places;

import 'dart:async' show Stream;
import 'dart:html' show DivElement, InputElement;

import 'package:js_wrapping/js_wrapping.dart';

import 'package:google_maps/util/async.dart';
import 'package:google_maps/google_maps.dart';

part 'google_maps_src_places.g.dart';

part 'library/places/autocomplete.dart';
part 'library/places/autocomplete_options.dart';
part 'library/places/autocomplete_prediction.dart';
part 'library/places/prediction_term.dart';
part 'library/places/prediction_substring.dart';
part 'library/places/autocomplete_service.dart';
part 'library/places/autocompletion_request.dart';
part 'library/places/component_restrictions.dart';
part 'library/places/place_aspect_rating.dart';
part 'library/places/place_details_request.dart';
part 'library/places/place_geometry.dart';
part 'library/places/place_photo.dart';
part 'library/places/photo_options.dart';
part 'library/places/place_result.dart';
part 'library/places/place_review.dart';
part 'library/places/place_search_pagination.dart';
part 'library/places/place_search_request.dart';
part 'library/places/places_service.dart';
part 'library/places/places_service_status.dart';
part 'library/places/query_autocomplete_prediction.dart';
part 'library/places/query_autocompletion_request.dart';
part 'library/places/radar_search_request.dart';
part 'library/places/rank_by.dart';
part 'library/places/search_box.dart';
part 'library/places/search_box_options.dart';
part 'library/places/text_search_request.dart';
