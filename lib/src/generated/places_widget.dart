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
import 'coordinates.dart' show LatLngBounds, LatLngBoundsOrLatLngBoundsLiteral;
import 'dart:async' show Stream, StreamController;
import 'event.dart' show MVCObject, MapsEventListener, event;
import 'package:web/web.dart' show Event, HTMLElement, HTMLInputElement;
import 'place.dart' show Place;
import 'places_autocomplete_service.dart' show ComponentRestrictions;
import 'places_service.dart'
    show LocationBias, LocationRestriction, PlaceResult;
part 'places_widget/autocomplete.dart';
part 'places_widget/autocomplete_options.dart';
part 'places_widget/place_autocomplete_element.dart';
part 'places_widget/place_autocomplete_element_options.dart';
part 'places_widget/place_autocomplete_place_select_event.dart';
part 'places_widget/place_autocomplete_request_error_event.dart';
part 'places_widget/search_box.dart';
part 'places_widget/search_box_options.dart';
