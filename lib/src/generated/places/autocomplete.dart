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

part of '../google_maps_places.dart';

@JsName('google.maps.places.Autocomplete')
abstract class Autocomplete extends MVCObject {
  factory Autocomplete(
    InputElement? inputField, [
    AutocompleteOptions? opts, // ignore: unused_element
  ]) =>
      $js();

  // synthetic getter for getBounds
  LatLngBounds? get bounds => _getBounds();
  @JsName('getBounds')
  LatLngBounds? _getBounds();

  // synthetic getter for getFields
  List<String?>? get fields => _getFields();
  @JsName('getFields')
  List<String?>? _getFields();

  // synthetic getter for getPlace
  PlaceResult? get place => _getPlace();
  @JsName('getPlace')
  PlaceResult? _getPlace();

  // synthetic setter for setBounds
  set bounds(LatLngBounds? bounds) => _setBounds(bounds);
  @JsName('setBounds')
  void _setBounds(LatLngBounds? bounds);

  // synthetic setter for setComponentRestrictions
  set componentRestrictions(ComponentRestrictions? componentRestrictions) =>
      _setComponentRestrictions(componentRestrictions);
  @JsName('setComponentRestrictions')
  void _setComponentRestrictions(ComponentRestrictions? restrictions);

  // synthetic setter for setFields
  set fields(List<String?>? fields) => _setFields(fields);
  @JsName('setFields')
  void _setFields(List<String?>? fields);

  // synthetic setter for setOptions
  set options(AutocompleteOptions? options) => _setOptions(options);
  @JsName('setOptions')
  void _setOptions(AutocompleteOptions? options);

  // synthetic setter for setTypes
  set types(List<String?>? types) => _setTypes(types);
  @JsName('setTypes')
  void _setTypes(List<String?>? types);

  Stream<void> get onPlaceChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'place_changed',
          () => sc.add(null),
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<void>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }
}
