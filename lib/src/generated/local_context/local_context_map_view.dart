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

part of '../google_maps_local_context.dart';

@JsName('google.maps.localContext.LocalContextMapView')
abstract class _LocalContextMapView implements LocalContextMapViewOptions {
  factory _LocalContextMapView(LocalContextMapViewOptions options) => $js;
  Object /*MapDirectionsOptions|MapDirectionsOptionsLiteral*/ directionsOptions;
  Element element;
  bool isTransitioningMapBounds;
  Object /*LatLng|LatLngBounds|Circle|String*/ locationBias;
  LatLngBounds locationRestriction;
  num maxPlaceCount;
  List<PlaceTypePreference> placeTypePreferences;
  MapsEventListener addListener(String eventName, Function handler);
  void hidePlaceDetailsView();
  void search();
  Stream<ErrorEvent> get onError {
    StreamController<ErrorEvent> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'error',
          allowInterop((ErrorEvent event) => sc.add(event)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'placedetailsviewhidestart',
          allowInterop(() => sc.add(null)),
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
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'placedetailsviewshowstart',
          allowInterop(() => sc.add(null)),
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

  GMap map;
  Object /*boolean,  isHighlighted:boolean}): (PinOptions) Function({  isSelected:boolean p1,isHighlighted:boolean} p2)|PinOptions*/ pinOptionsSetup;
  Object /*PlaceChooserLayoutMode,  defaultPosition:PlaceChooserPosition}): (PlaceChooserViewSetupOptions) Function({  defaultLayoutMode:PlaceChooserLayoutMode p1,defaultPosition:PlaceChooserPosition} p2)|PlaceChooserViewSetupOptions*/ placeChooserViewSetup;
  Object /*PlaceDetailsLayoutMode,  defaultPosition:PlaceDetailsPosition}): (PlaceDetailsViewSetupOptions) Function({  defaultLayoutMode:PlaceDetailsLayoutMode p1,defaultPosition:PlaceDetailsPosition} p2)|PlaceDetailsViewSetupOptions*/ placeDetailsViewSetup;
}
