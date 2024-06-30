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

part of '../local_context_map_view.dart';

@JS('google.maps.localContext.LocalContextMapView')
extension type LocalContextMapView._(LocalContextMapViewOptions _)
    implements LocalContextMapViewOptions {
  external LocalContextMapView(
    LocalContextMapViewOptions options,
  );
  external JSAny? /*(MapDirectionsOptions|MapDirectionsOptionsLiteral)?*/
      directionsOptions;
  external JSAny? /*(HTMLElement|SVGElement)?*/ element;
  external bool isTransitioningMapBounds;
  external LocationBias? locationBias;
  external LocationRestriction? locationRestriction;
  external num maxPlaceCount;
  @JS('placeTypePreferences')
  external JSArray<PlaceTypePreference> _placeTypePreferences;
  List<PlaceTypePreference> get placeTypePreferences =>
      _placeTypePreferences.toDart;
  set placeTypePreferences(List<PlaceTypePreference> value) =>
      _placeTypePreferences = value.toJS;
  external MapsEventListener addListener(
    String eventName,
    JSFunction handler,
  );
  external void hidePlaceDetailsView();
  external void search();
  Stream<ErrorEvent> get onError {
    late StreamController<ErrorEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'error',
          ((ErrorEvent e) => sc.add(e)).toJS,
        );
    void stop() => mapsEventListener.remove();
    sc = StreamController<ErrorEvent>(
      onListen: start,
      onCancel: stop,
      onResume: start,
      onPause: stop,
    );
    return sc.stream;
  }

  Stream<void> get onPlacedetailsviewhidestart {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'placedetailsviewhidestart',
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

  Stream<void> get onPlacedetailsviewshowstart {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = event.addListener(
          this,
          'placedetailsviewshowstart',
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
