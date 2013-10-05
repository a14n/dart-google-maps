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

library google_maps_places;

import 'dart:async';
import 'dart:html' as html;
import 'dart:js' as js;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart' as jsw;

part 'src/generated/library/places/autocomplete.dart';
part 'src/generated/library/places/autocomplete_options.dart';
part 'src/generated/library/places/autocomplete_prediction.dart';
part 'src/generated/library/places/prediction_term.dart';
part 'src/generated/library/places/prediction_substring.dart';
part 'src/generated/library/places/autocomplete_service.dart';
part 'src/generated/library/places/autocompletion_request.dart';
part 'src/generated/library/places/component_restrictions.dart';
part 'src/generated/library/places/place_aspect_rating.dart';
part 'src/generated/library/places/place_details_request.dart';
part 'src/generated/library/places/place_geometry.dart';
part 'src/generated/library/places/place_photo.dart';
part 'src/generated/library/places/photo_options.dart';
part 'src/generated/library/places/place_result.dart';
part 'src/generated/library/places/place_review.dart';
part 'src/generated/library/places/place_search_request.dart';
part 'src/generated/library/places/place_search_pagination.dart';
part 'src/generated/library/places/places_service.dart';
part 'src/generated/library/places/places_service_status.dart';
part 'src/generated/library/places/query_autocomplete_prediction.dart';
part 'src/generated/library/places/query_autocompletion_request.dart';
part 'src/generated/library/places/radar_search_request.dart';
part 'src/generated/library/places/rank_by.dart';
part 'src/generated/library/places/search_box.dart';
part 'src/generated/library/places/search_box_options.dart';
part 'src/generated/library/places/text_search_request.dart';
