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
import 'autocomplete_data.dart' show AutocompleteSessionToken;
import 'coordinates.dart'
    show LatLng, LatLngBoundsOrLatLngBoundsLiteral, LatLngOrLatLngLiteral;
import 'places_service.dart'
    show LocationBias, LocationRestriction, PlacesServiceStatus;
part 'places_autocomplete_service/autocomplete_prediction.dart';
part 'places_autocomplete_service/autocomplete_response.dart';
part 'places_autocomplete_service/autocomplete_service.dart';
part 'places_autocomplete_service/autocompletion_request.dart';
part 'places_autocomplete_service/component_restrictions.dart';
part 'places_autocomplete_service/prediction_substring.dart';
part 'places_autocomplete_service/prediction_term.dart';
part 'places_autocomplete_service/query_autocomplete_prediction.dart';
part 'places_autocomplete_service/query_autocompletion_request.dart';
part 'places_autocomplete_service/structured_formatting.dart';
