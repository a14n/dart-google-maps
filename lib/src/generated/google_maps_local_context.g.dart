// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.local_context;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_LocalContextMapView)
@JS('google.maps.localContext.LocalContextMapView')
class LocalContextMapView implements LocalContextMapViewOptions {
  external LocalContextMapView(LocalContextMapViewOptions options);

  external Object /*MapDirectionsOptions|MapDirectionsOptionsLiteral*/ get directionsOptions;

  external set directionsOptions(
      Object /*MapDirectionsOptions|MapDirectionsOptionsLiteral*/ value);

  external Element get element;

  external set element(Element value);

  external bool get isTransitioningMapBounds;

  external set isTransitioningMapBounds(bool value);

  external Object /*LatLng|LatLngBounds|Circle|String*/ get locationBias;

  external set locationBias(Object /*LatLng|LatLngBounds|Circle|String*/ value);

  external LatLngBounds get locationRestriction;

  external set locationRestriction(LatLngBounds value);

  external num get maxPlaceCount;

  external set maxPlaceCount(num value);

  external GMap get map;

  external set map(GMap value);

  external Object /*PinOptions Function((bool isSelected, bool isHighlighted) p1)|PinOptions*/ get pinOptionsSetup;

  external set pinOptionsSetup(
      Object /*PinOptions Function((bool isSelected, bool isHighlighted) p1)|PinOptions*/ value);

  external Object /*PlaceChooserViewSetupOptions Function((PlaceChooserLayoutMode defaultLayoutMode, PlaceChooserPosition defaultPosition) p1)|PlaceChooserViewSetupOptions*/ get placeChooserViewSetup;

  external set placeChooserViewSetup(
      Object /*PlaceChooserViewSetupOptions Function((PlaceChooserLayoutMode defaultLayoutMode, PlaceChooserPosition defaultPosition) p1)|PlaceChooserViewSetupOptions*/ value);

  external Object /*PlaceDetailsViewSetupOptions Function((PlaceDetailsLayoutMode defaultLayoutMode, PlaceDetailsPosition defaultPosition) p1)|PlaceDetailsViewSetupOptions*/ get placeDetailsViewSetup;

  external set placeDetailsViewSetup(
      Object /*PlaceDetailsViewSetupOptions Function((PlaceDetailsLayoutMode defaultLayoutMode, PlaceDetailsPosition defaultPosition) p1)|PlaceDetailsViewSetupOptions*/ value);

  external MapsEventListener addListener(String eventName, Function handler);

  external void hidePlaceDetailsView();

  external void search();
}

@GeneratedFrom(_LocalContextMapView)
extension LocalContextMapView$Ext on LocalContextMapView {
  List<PlaceTypePreference> get placeTypePreferences =>
      getProperty(this, 'placeTypePreferences')?.cast<PlaceTypePreference>();

  set placeTypePreferences(List<PlaceTypePreference> value) {
    setProperty(this, 'placeTypePreferences', value);
  }

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
}

@GeneratedFrom(_LocalContextMapViewOptions)
@JS()
@anonymous
class LocalContextMapViewOptions {
  external factory LocalContextMapViewOptions();

  external num get maxPlaceCount;

  external set maxPlaceCount(num value);

  external Object /*MapDirectionsOptions|MapDirectionsOptionsLiteral*/ get directionsOptions;

  external set directionsOptions(
      Object /*MapDirectionsOptions|MapDirectionsOptionsLiteral*/ value);

  external Element get element;

  external set element(Element value);

  external Object /*LatLng|LatLngBounds|Circle|String*/ get locationBias;

  external set locationBias(Object /*LatLng|LatLngBounds|Circle|String*/ value);

  external LatLngBounds get locationRestriction;

  external set locationRestriction(LatLngBounds value);

  external GMap get map;

  external set map(GMap value);

  external Object /*PinOptions Function((bool isSelected, bool isHighlighted) p1)|PinOptions*/ get pinOptionsSetup;

  external set pinOptionsSetup(
      Object /*PinOptions Function((bool isSelected, bool isHighlighted) p1)|PinOptions*/ value);

  external Object /*PlaceChooserViewSetupOptions Function((PlaceChooserLayoutMode defaultLayoutMode, PlaceChooserPosition defaultPosition) p1)|PlaceChooserViewSetupOptions*/ get placeChooserViewSetup;

  external set placeChooserViewSetup(
      Object /*PlaceChooserViewSetupOptions Function((PlaceChooserLayoutMode defaultLayoutMode, PlaceChooserPosition defaultPosition) p1)|PlaceChooserViewSetupOptions*/ value);

  external Object /*PlaceDetailsViewSetupOptions Function((PlaceDetailsLayoutMode defaultLayoutMode, PlaceDetailsPosition defaultPosition) p1)|PlaceDetailsViewSetupOptions*/ get placeDetailsViewSetup;

  external set placeDetailsViewSetup(
      Object /*PlaceDetailsViewSetupOptions Function((PlaceDetailsLayoutMode defaultLayoutMode, PlaceDetailsPosition defaultPosition) p1)|PlaceDetailsViewSetupOptions*/ value);
}

@GeneratedFrom(_LocalContextMapViewOptions)
extension LocalContextMapViewOptions$Ext on LocalContextMapViewOptions {
  List<PlaceTypePreference> get placeTypePreferences =>
      getProperty(this, 'placeTypePreferences')?.cast<PlaceTypePreference>();

  set placeTypePreferences(List<PlaceTypePreference> value) {
    setProperty(this, 'placeTypePreferences', value);
  }
}

@GeneratedFrom(_PlaceTypePreference)
@JS()
@anonymous
class PlaceTypePreference {
  external factory PlaceTypePreference();

  external String get type;

  external set type(String value);

  external num get weight;

  external set weight(num value);
}

@GeneratedFrom(_MapDirectionsOptions)
@JS('google.maps.localContext.MapDirectionsOptions')
class MapDirectionsOptions implements MapDirectionsOptionsLiteral {
  external LatLng get origin;

  external set origin(LatLng value);

  external MapsEventListener addListener(String eventName, Function handler);
}

@GeneratedFrom(_MapDirectionsOptionsLiteral)
@JS()
@anonymous
class MapDirectionsOptionsLiteral {
  external factory MapDirectionsOptionsLiteral();

  external LatLng get origin;

  external set origin(LatLng value);
}

@GeneratedFrom(_PinOptions)
@JS()
@anonymous
class PinOptions {
  external factory PinOptions();

  external String get background;

  external set background(String value);

  external String get glyphColor;

  external set glyphColor(String value);

  external num get scale;

  external set scale(num value);
}

@GeneratedFrom(_PlaceChooserViewSetupOptions)
@JS()
@anonymous
class PlaceChooserViewSetupOptions {
  external factory PlaceChooserViewSetupOptions();

  external PlaceChooserLayoutMode get layoutMode;

  external set layoutMode(PlaceChooserLayoutMode value);

  external PlaceChooserPosition get position;

  external set position(PlaceChooserPosition value);
}

@GeneratedFrom(_PlaceChooserLayoutMode)
@JS('google.maps.localContext.PlaceChooserLayoutMode')
class PlaceChooserLayoutMode {
  external static PlaceChooserLayoutMode get HIDDEN;
  external static PlaceChooserLayoutMode get SHEET;
}

@GeneratedFrom(_PlaceChooserPosition)
@JS('google.maps.localContext.PlaceChooserPosition')
class PlaceChooserPosition {
  external static PlaceChooserPosition get BLOCK_END;
  external static PlaceChooserPosition get INLINE_END;
  external static PlaceChooserPosition get INLINE_START;
}

@GeneratedFrom(_PlaceDetailsViewSetupOptions)
@JS()
@anonymous
class PlaceDetailsViewSetupOptions {
  external factory PlaceDetailsViewSetupOptions();

  external bool get hidesOnMapClick;

  external set hidesOnMapClick(bool value);

  external PlaceDetailsLayoutMode get layoutMode;

  external set layoutMode(PlaceDetailsLayoutMode value);

  external PlaceDetailsPosition get position;

  external set position(PlaceDetailsPosition value);
}

@GeneratedFrom(_PlaceDetailsLayoutMode)
@JS('google.maps.localContext.PlaceDetailsLayoutMode')
class PlaceDetailsLayoutMode {
  external static PlaceDetailsLayoutMode get INFO_WINDOW;
  external static PlaceDetailsLayoutMode get SHEET;
}

@GeneratedFrom(_PlaceDetailsPosition)
@JS('google.maps.localContext.PlaceDetailsPosition')
class PlaceDetailsPosition {
  external static PlaceDetailsPosition get INLINE_END;
  external static PlaceDetailsPosition get INLINE_START;
}
