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

part of '../places_widget.dart';

@JS('google.maps.places.SearchBox')
extension type SearchBox._(MVCObject _) implements MVCObject {
  external SearchBox(
    HTMLInputElement inputField, [
    SearchBoxOptions? opts,
  ]);
  @JS('getBounds')
  external LatLngBounds? _getBounds();
  LatLngBounds? get bounds => _getBounds();
  @JS('getPlaces')
  external JSArray<PlaceResult>? _getPlaces();
  JSArray<PlaceResult>? get places => _getPlaces();
  @JS('setBounds')
  external void _setBounds(LatLngBoundsOrLatLngBoundsLiteral? bounds);
  set bounds(LatLngBoundsOrLatLngBoundsLiteral? bounds) => _setBounds(bounds);
  Stream<void> get onPlacesChanged {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'places_changed',
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
