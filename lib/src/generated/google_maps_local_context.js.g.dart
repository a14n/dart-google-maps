// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

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

@JS()
library google_maps.local_context;

import 'dart:async' show StreamController;
import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';
import 'package:web/web.dart' show Element;

@JS('google.maps.localContext.LocalContextMapView')
class LocalContextMapView implements LocalContextMapViewOptions {
  external LocalContextMapView(LocalContextMapViewOptions? options);

  external Object? /*MapDirectionsOptions?|MapDirectionsOptionsLiteral?*/
      get directionsOptions;

  external set directionsOptions(
      Object? /*MapDirectionsOptions?|MapDirectionsOptionsLiteral?*/ value);

  external Element? get element;

  external set element(Element? value);

  external bool? get isTransitioningMapBounds;

  external set isTransitioningMapBounds(bool? value);

  external Object? /*LatLng?|LatLngBounds?|Circle?|String?*/ get locationBias;

  external set locationBias(
      Object? /*LatLng?|LatLngBounds?|Circle?|String?*/ value);

  external LatLngBounds? get locationRestriction;

  external set locationRestriction(LatLngBounds? value);

  external num? get maxPlaceCount;

  external set maxPlaceCount(num? value);

  external GMap? get map;

  external set map(GMap? value);

  external Object? /*PinOptions? Function((bool? isSelected,bool? isHighlighted)?)?|PinOptions?*/
      get pinOptionsSetup;

  external set pinOptionsSetup(
      Object? /*PinOptions? Function((bool? isSelected,bool? isHighlighted)?)?|PinOptions?*/
          value);

  external Object? /*PlaceChooserViewSetupOptions? Function((PlaceChooserLayoutMode? defaultLayoutMode,PlaceChooserPosition? defaultPosition)?)?|PlaceChooserViewSetupOptions?*/
      get placeChooserViewSetup;

  external set placeChooserViewSetup(
      Object? /*PlaceChooserViewSetupOptions? Function((PlaceChooserLayoutMode? defaultLayoutMode,PlaceChooserPosition? defaultPosition)?)?|PlaceChooserViewSetupOptions?*/
          value);

  external Object? /*PlaceDetailsViewSetupOptions? Function((PlaceDetailsLayoutMode? defaultLayoutMode,PlaceDetailsPosition? defaultPosition)?)?|PlaceDetailsViewSetupOptions?*/
      get placeDetailsViewSetup;

  external set placeDetailsViewSetup(
      Object? /*PlaceDetailsViewSetupOptions? Function((PlaceDetailsLayoutMode? defaultLayoutMode,PlaceDetailsPosition? defaultPosition)?)?|PlaceDetailsViewSetupOptions?*/
          value);

  external void hidePlaceDetailsView();

  external void search();
}

extension LocalContextMapView$Ext on LocalContextMapView {
  List<PlaceTypePreference?>? get placeTypePreferences =>
      getProperty(this, 'placeTypePreferences')?.cast<PlaceTypePreference?>();

  set placeTypePreferences(List<PlaceTypePreference?>? value) {
    setProperty(this, 'placeTypePreferences', value);
  }

  Stream<ErrorEvent> get onError {
    late StreamController<ErrorEvent> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'error',
          (ErrorEvent event) => sc.add(event),
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
    void start() => mapsEventListener = Event.addListener(
          this,
          'placedetailsviewhidestart',
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

  Stream<void> get onPlacedetailsviewshowstart {
    late StreamController<void> sc; // ignore: close_sinks
    late MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'placedetailsviewshowstart',
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

  MapsEventListener? addListener(String? eventName, Function? handler) =>
      callMethod(this, 'addListener',
          [eventName, handler == null ? null : allowInterop(handler)]);
}

@JS()
@anonymous
class LocalContextMapViewOptions {
  external factory LocalContextMapViewOptions();

  external num? get maxPlaceCount;

  external set maxPlaceCount(num? value);

  external Object? /*MapDirectionsOptions?|MapDirectionsOptionsLiteral?*/
      get directionsOptions;

  external set directionsOptions(
      Object? /*MapDirectionsOptions?|MapDirectionsOptionsLiteral?*/ value);

  external Element? get element;

  external set element(Element? value);

  external Object? /*LatLng?|LatLngBounds?|Circle?|String?*/ get locationBias;

  external set locationBias(
      Object? /*LatLng?|LatLngBounds?|Circle?|String?*/ value);

  external LatLngBounds? get locationRestriction;

  external set locationRestriction(LatLngBounds? value);

  external GMap? get map;

  external set map(GMap? value);

  external Object? /*PinOptions? Function((bool? isSelected,bool? isHighlighted)?)?|PinOptions?*/
      get pinOptionsSetup;

  external set pinOptionsSetup(
      Object? /*PinOptions? Function((bool? isSelected,bool? isHighlighted)?)?|PinOptions?*/
          value);

  external Object? /*PlaceChooserViewSetupOptions? Function((PlaceChooserLayoutMode? defaultLayoutMode,PlaceChooserPosition? defaultPosition)?)?|PlaceChooserViewSetupOptions?*/
      get placeChooserViewSetup;

  external set placeChooserViewSetup(
      Object? /*PlaceChooserViewSetupOptions? Function((PlaceChooserLayoutMode? defaultLayoutMode,PlaceChooserPosition? defaultPosition)?)?|PlaceChooserViewSetupOptions?*/
          value);

  external Object? /*PlaceDetailsViewSetupOptions? Function((PlaceDetailsLayoutMode? defaultLayoutMode,PlaceDetailsPosition? defaultPosition)?)?|PlaceDetailsViewSetupOptions?*/
      get placeDetailsViewSetup;

  external set placeDetailsViewSetup(
      Object? /*PlaceDetailsViewSetupOptions? Function((PlaceDetailsLayoutMode? defaultLayoutMode,PlaceDetailsPosition? defaultPosition)?)?|PlaceDetailsViewSetupOptions?*/
          value);
}

extension LocalContextMapViewOptions$Ext on LocalContextMapViewOptions {
  List<PlaceTypePreference?>? get placeTypePreferences =>
      getProperty(this, 'placeTypePreferences')?.cast<PlaceTypePreference?>();

  set placeTypePreferences(List<PlaceTypePreference?>? value) {
    setProperty(this, 'placeTypePreferences', value);
  }
}

@JS()
@anonymous
class PlaceTypePreference {
  external factory PlaceTypePreference();

  external String? get type;

  external set type(String? value);

  external num? get weight;

  external set weight(num? value);
}

@JS('google.maps.localContext.MapDirectionsOptions')
class MapDirectionsOptions implements MapDirectionsOptionsLiteral {
  external LatLng? get origin;

  external set origin(LatLng? value);
}

extension MapDirectionsOptions$Ext on MapDirectionsOptions {
  MapsEventListener? addListener(String? eventName, Function? handler) =>
      callMethod(this, 'addListener',
          [eventName, handler == null ? null : allowInterop(handler)]);
}

@JS()
@anonymous
class MapDirectionsOptionsLiteral {
  external factory MapDirectionsOptionsLiteral();

  external LatLng? get origin;

  external set origin(LatLng? value);
}

@JS()
@anonymous
class PinOptions {
  external factory PinOptions();

  external String? get background;

  external set background(String? value);

  external String? get glyphColor;

  external set glyphColor(String? value);

  external num? get scale;

  external set scale(num? value);
}

@JS()
@anonymous
class PlaceChooserViewSetupOptions {
  external factory PlaceChooserViewSetupOptions();

  external PlaceChooserLayoutMode? get layoutMode;

  external set layoutMode(PlaceChooserLayoutMode? value);

  external PlaceChooserPosition? get position;

  external set position(PlaceChooserPosition? value);
}

@JS('google.maps.localContext.PlaceChooserLayoutMode')
class PlaceChooserLayoutMode {
  external static PlaceChooserLayoutMode get HIDDEN;
  external static PlaceChooserLayoutMode get SHEET;
}

PlaceChooserLayoutMode? PlaceChooserLayoutMode$cast(value) {
  if (value == PlaceChooserLayoutMode.HIDDEN)
    return PlaceChooserLayoutMode.HIDDEN;
  if (value == PlaceChooserLayoutMode.SHEET)
    return PlaceChooserLayoutMode.SHEET;
  return null;
}

@JS('google.maps.localContext.PlaceChooserPosition')
class PlaceChooserPosition {
  external static PlaceChooserPosition get BLOCK_END;
  external static PlaceChooserPosition get INLINE_END;
  external static PlaceChooserPosition get INLINE_START;
}

PlaceChooserPosition? PlaceChooserPosition$cast(value) {
  if (value == PlaceChooserPosition.BLOCK_END)
    return PlaceChooserPosition.BLOCK_END;
  if (value == PlaceChooserPosition.INLINE_END)
    return PlaceChooserPosition.INLINE_END;
  if (value == PlaceChooserPosition.INLINE_START)
    return PlaceChooserPosition.INLINE_START;
  return null;
}

@JS()
@anonymous
class PlaceDetailsViewSetupOptions {
  external factory PlaceDetailsViewSetupOptions();

  external bool? get hidesOnMapClick;

  external set hidesOnMapClick(bool? value);

  external PlaceDetailsLayoutMode? get layoutMode;

  external set layoutMode(PlaceDetailsLayoutMode? value);

  external PlaceDetailsPosition? get position;

  external set position(PlaceDetailsPosition? value);
}

@JS('google.maps.localContext.PlaceDetailsLayoutMode')
class PlaceDetailsLayoutMode {
  external static PlaceDetailsLayoutMode get INFO_WINDOW;
  external static PlaceDetailsLayoutMode get SHEET;
}

PlaceDetailsLayoutMode? PlaceDetailsLayoutMode$cast(value) {
  if (value == PlaceDetailsLayoutMode.INFO_WINDOW)
    return PlaceDetailsLayoutMode.INFO_WINDOW;
  if (value == PlaceDetailsLayoutMode.SHEET)
    return PlaceDetailsLayoutMode.SHEET;
  return null;
}

@JS('google.maps.localContext.PlaceDetailsPosition')
class PlaceDetailsPosition {
  external static PlaceDetailsPosition get INLINE_END;
  external static PlaceDetailsPosition get INLINE_START;
}

PlaceDetailsPosition? PlaceDetailsPosition$cast(value) {
  if (value == PlaceDetailsPosition.INLINE_END)
    return PlaceDetailsPosition.INLINE_END;
  if (value == PlaceDetailsPosition.INLINE_START)
    return PlaceDetailsPosition.INLINE_START;
  return null;
}
