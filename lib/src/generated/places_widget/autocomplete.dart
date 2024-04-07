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

part of '../places_widget.dart';

@JS('google.maps.places.Autocomplete')
extension type Autocomplete._(MVCObject _) implements MVCObject {
  external Autocomplete(
    HTMLInputElement inputField, [
    AutocompleteOptions? opts,
  ]);
  @JS('getBounds')
  external LatLngBounds? _getBounds();
  LatLngBounds? get bounds => _getBounds();
  @JS('getFields')
  external JSArray<JSString>? _getFields();
  JSArray<JSString>? get fields => _getFields();
  @JS('getPlace')
  external PlaceResult _getPlace();
  PlaceResult get place => _getPlace();
  @JS('setBounds')
  external void _setBounds(LatLngBoundsOrLatLngBoundsLiteral? bounds);
  void set bounds(LatLngBoundsOrLatLngBoundsLiteral? bounds) =>
      _setBounds(bounds);
  @JS('setComponentRestrictions')
  external void _setComponentRestrictions(ComponentRestrictions? restrictions);
  void set componentRestrictions(ComponentRestrictions? restrictions) =>
      _setComponentRestrictions(restrictions);
  @JS('setFields')
  external void _setFields(JSArray<JSString>? fields);
  void set fields(JSArray<JSString>? fields) => _setFields(fields);
  @JS('setOptions')
  external void _setOptions(AutocompleteOptions? options);
  void set options(AutocompleteOptions? options) => _setOptions(options);
  @JS('setTypes')
  external void _setTypes(JSArray<JSString>? types);
  void set types(JSArray<JSString>? types) => _setTypes(types);
  Stream<void> get onPlaceChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'place_changed',
          (() => sc.add(null)).toJS,
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
