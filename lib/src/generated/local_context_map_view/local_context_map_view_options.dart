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

part of '../local_context_map_view.dart';

extension type LocalContextMapViewOptions._(JSObject _) implements JSObject {
  external LocalContextMapViewOptions({
    num maxPlaceCount,
    JSArray<PlaceTypePreference> placeTypePreferences,
    JSAny? /*(MapDirectionsOptions|MapDirectionsOptionsLiteral)?*/
        directionsOptions,
    JSAny? /*(HTMLElement|SVGElement)?*/ element,
    LocationBias? locationBias,
    LocationRestriction? locationRestriction,
    Map? map,
    JSAny? /*UNPARSED:(function({  isSelected:boolean,  isHighlighted:boolean}): (PinOptions optional))|PinOptions optional*/
        pinOptionsSetup,
    JSAny? /*UNPARSED:(function({  defaultLayoutMode:PlaceChooserLayoutMode,  defaultPosition:PlaceChooserPosition optional}): (PlaceChooserViewSetupOptions optional))|PlaceChooserViewSetupOptions optional*/
        placeChooserViewSetup,
    JSAny? /*UNPARSED:(function({  defaultLayoutMode:PlaceDetailsLayoutMode,  defaultPosition:PlaceDetailsPosition optional}): (PlaceDetailsViewSetupOptions optional))|PlaceDetailsViewSetupOptions optional*/
        placeDetailsViewSetup,
  });
  external num maxPlaceCount;
  @JS('placeTypePreferences')
  external JSArray<PlaceTypePreference> _placeTypePreferences;
  List<PlaceTypePreference> get placeTypePreferences =>
      _placeTypePreferences.toDart;
  set placeTypePreferences(List<PlaceTypePreference> value) =>
      _placeTypePreferences = value.toJS;
  external JSAny? /*(MapDirectionsOptions|MapDirectionsOptionsLiteral)?*/
      directionsOptions;
  external JSAny? /*(HTMLElement|SVGElement)?*/ element;
  external LocationBias? locationBias;
  external LocationRestriction? locationRestriction;
  external Map? map;
  external JSAny? /*UNPARSED:(function({  isSelected:boolean,  isHighlighted:boolean}): (PinOptions optional))|PinOptions optional*/
      pinOptionsSetup;
  external JSAny? /*UNPARSED:(function({  defaultLayoutMode:PlaceChooserLayoutMode,  defaultPosition:PlaceChooserPosition optional}): (PlaceChooserViewSetupOptions optional))|PlaceChooserViewSetupOptions optional*/
      placeChooserViewSetup;
  external JSAny? /*UNPARSED:(function({  defaultLayoutMode:PlaceDetailsLayoutMode,  defaultPosition:PlaceDetailsPosition optional}): (PlaceDetailsViewSetupOptions optional))|PlaceDetailsViewSetupOptions optional*/
      placeDetailsViewSetup;
}
