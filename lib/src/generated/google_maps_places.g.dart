// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.places;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_Autocomplete)
@JS('google.maps.places.Autocomplete')
class Autocomplete extends MVCObject {
  external Autocomplete(
    InputElement inputField, [
    AutocompleteOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_Autocomplete)
extension Autocomplete$Ext on Autocomplete {
  LatLngBounds get bounds => _getBounds();
  List<String> get fields => _getFields();
  PlaceResult get place => _getPlace();
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  set componentRestrictions(ComponentRestrictions componentRestrictions) =>
      _setComponentRestrictions(componentRestrictions);
  set fields(List<String> fields) => _setFields(fields);
  set options(AutocompleteOptions options) => _setOptions(options);
  set types(List<String> types) => _setTypes(types);
  Stream<void> get onPlaceChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'place_changed',
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

  LatLngBounds _getBounds() => callMethod(this, 'getBounds', []);

  List<String> _getFields() =>
      callMethod(this, 'getFields', [])?.cast<String>();

  PlaceResult _getPlace() => callMethod(this, 'getPlace', []);

  void _setBounds(LatLngBounds bounds) {
    callMethod(this, 'setBounds', [bounds]);
  }

  void _setComponentRestrictions(ComponentRestrictions restrictions) {
    callMethod(this, 'setComponentRestrictions', [restrictions]);
  }

  void _setFields(List<String> fields) {
    callMethod(this, 'setFields', [fields]);
  }

  void _setOptions(AutocompleteOptions options) {
    callMethod(this, 'setOptions', [options]);
  }

  void _setTypes(List<String> types) {
    callMethod(this, 'setTypes', [types]);
  }
}

@GeneratedFrom(_AutocompleteOptions)
@JS()
@anonymous
class AutocompleteOptions {
  external factory AutocompleteOptions();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external ComponentRestrictions get componentRestrictions;

  external set componentRestrictions(ComponentRestrictions value);

  external bool get placeIdOnly;

  external set placeIdOnly(bool value);

  external bool get strictBounds;

  external set strictBounds(bool value);
}

@GeneratedFrom(_AutocompleteOptions)
extension AutocompleteOptions$Ext on AutocompleteOptions {
  List<String> get fields => getProperty(this, 'fields')?.cast<String>();

  set fields(List<String> value) {
    setProperty(this, 'fields', value);
  }

  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }
}

@GeneratedFrom(_SearchBox)
@JS('google.maps.places.SearchBox')
class SearchBox extends MVCObject {
  external SearchBox(
    InputElement inputField, [
    SearchBoxOptions opts, // ignore: unused_element
  ]);
}

@GeneratedFrom(_SearchBox)
extension SearchBox$Ext on SearchBox {
  LatLngBounds get bounds => _getBounds();
  List<PlaceResult> get places => _getPlaces();
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  Stream<void> get onPlacesChanged {
    StreamController<void> sc; // ignore: close_sinks
    MapsEventListener mapsEventListener;
    void start() => mapsEventListener = Event.addListener(
          this,
          'places_changed',
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

  LatLngBounds _getBounds() => callMethod(this, 'getBounds', []);

  List<PlaceResult> _getPlaces() =>
      callMethod(this, 'getPlaces', [])?.cast<PlaceResult>();

  void _setBounds(LatLngBounds bounds) {
    callMethod(this, 'setBounds', [bounds]);
  }
}

@GeneratedFrom(_SearchBoxOptions)
@JS()
@anonymous
class SearchBoxOptions {
  external factory SearchBoxOptions();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);
}

@GeneratedFrom(_PlacesService)
@JS('google.maps.places.PlacesService')
class PlacesService {
  external PlacesService(Object /*DivElement|GMap*/ attrContainer);
}

@GeneratedFrom(_PlacesService)
extension PlacesService$Ext on PlacesService {
  void findPlaceFromPhoneNumber(
    FindPlaceFromPhoneNumberRequest request, [
    void Function(List<PlaceResult> p1, PlacesServiceStatus p2) callback,
  ]) {
    callMethod(
        this, 'findPlaceFromPhoneNumber', [request, allowInterop(callback)]);
  }

  void findPlaceFromQuery(
    FindPlaceFromQueryRequest request, [
    void Function(List<PlaceResult> p1, PlacesServiceStatus p2) callback,
  ]) {
    callMethod(this, 'findPlaceFromQuery', [request, allowInterop(callback)]);
  }

  void getDetails(
    PlaceDetailsRequest request, [
    void Function(PlaceResult p1, PlacesServiceStatus p2) callback,
  ]) {
    callMethod(this, 'getDetails', [request, allowInterop(callback)]);
  }

  void nearbySearch(
    PlaceSearchRequest request, [
    void Function(List<PlaceResult> p1, PlacesServiceStatus p2,
            PlaceSearchPagination p3)
        callback,
  ]) {
    callMethod(this, 'nearbySearch', [request, allowInterop(callback)]);
  }

  void textSearch(
    TextSearchRequest request, [
    void Function(List<PlaceResult> p1, PlacesServiceStatus p2,
            PlaceSearchPagination p3)
        callback,
  ]) {
    callMethod(this, 'textSearch', [request, allowInterop(callback)]);
  }
}

@GeneratedFrom(_PlaceDetailsRequest)
@JS()
@anonymous
class PlaceDetailsRequest {
  external factory PlaceDetailsRequest();

  external String get placeId;

  external set placeId(String value);

  external AutocompleteSessionToken get sessionToken;

  external set sessionToken(AutocompleteSessionToken value);
}

@GeneratedFrom(_PlaceDetailsRequest)
extension PlaceDetailsRequest$Ext on PlaceDetailsRequest {
  List<String> get fields => getProperty(this, 'fields')?.cast<String>();

  set fields(List<String> value) {
    setProperty(this, 'fields', value);
  }
}

@GeneratedFrom(_FindPlaceFromPhoneNumberRequest)
@JS()
@anonymous
class FindPlaceFromPhoneNumberRequest {
  external factory FindPlaceFromPhoneNumberRequest();

  external String get phoneNumber;

  external set phoneNumber(String value);

  external Object get locationBias;

  external set locationBias(Object value);
}

@GeneratedFrom(_FindPlaceFromPhoneNumberRequest)
extension FindPlaceFromPhoneNumberRequest$Ext
    on FindPlaceFromPhoneNumberRequest {
  List<String> get fields => getProperty(this, 'fields')?.cast<String>();

  set fields(List<String> value) {
    setProperty(this, 'fields', value);
  }
}

@GeneratedFrom(_FindPlaceFromQueryRequest)
@JS()
@anonymous
class FindPlaceFromQueryRequest {
  external factory FindPlaceFromQueryRequest();

  external String get query;

  external set query(String value);

  external Object get locationBias;

  external set locationBias(Object value);
}

@GeneratedFrom(_FindPlaceFromQueryRequest)
extension FindPlaceFromQueryRequest$Ext on FindPlaceFromQueryRequest {
  List<String> get fields => getProperty(this, 'fields')?.cast<String>();

  set fields(List<String> value) {
    setProperty(this, 'fields', value);
  }
}

@GeneratedFrom(_PlaceSearchRequest)
@JS()
@anonymous
class PlaceSearchRequest {
  external factory PlaceSearchRequest();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external String get keyword;

  external set keyword(String value);

  external LatLng get location;

  external set location(LatLng value);

  external num get maxPriceLevel;

  external set maxPriceLevel(num value);

  external num get minPriceLevel;

  external set minPriceLevel(num value);

  external String get name;

  external set name(String value);

  external bool get openNow;

  external set openNow(bool value);

  external num get radius;

  external set radius(num value);

  external RankBy get rankBy;

  external set rankBy(RankBy value);

  external String get type;

  external set type(String value);
}

@GeneratedFrom(_TextSearchRequest)
@JS()
@anonymous
class TextSearchRequest {
  external factory TextSearchRequest();

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external LatLng get location;

  external set location(LatLng value);

  external String get query;

  external set query(String value);

  external num get radius;

  external set radius(num value);

  external String get type;

  external set type(String value);
}

@GeneratedFrom(_RankBy)
@JS('google.maps.places.RankBy')
class RankBy {
  external static RankBy get DISTANCE;
  external static RankBy get PROMINENCE;
}

@GeneratedFrom(_PlacesServiceStatus)
@JS('google.maps.places.PlacesServiceStatus')
class PlacesServiceStatus {
  external static PlacesServiceStatus get INVALID_REQUEST;
  external static PlacesServiceStatus get NOT_FOUND;
  external static PlacesServiceStatus get OK;
  external static PlacesServiceStatus get OVER_QUERY_LIMIT;
  external static PlacesServiceStatus get REQUEST_DENIED;
  external static PlacesServiceStatus get UNKNOWN_ERROR;
  external static PlacesServiceStatus get ZERO_RESULTS;
}

@GeneratedFrom(_PlaceSearchPagination)
@JS()
@anonymous
class PlaceSearchPagination {
  external factory PlaceSearchPagination();

  external bool get hasNextPage;

  external set hasNextPage(bool value);

  external void nextPage();
}

@GeneratedFrom(_PlaceResult)
@JS()
@anonymous
class PlaceResult {
  external factory PlaceResult();

  external PlaceGeometry get geometry;

  external set geometry(PlaceGeometry value);

  external String get icon;

  external set icon(String value);

  external String get name;

  external set name(String value);

  external num get rating;

  external set rating(num value);

  external String get url;

  external set url(String value);

  external String get vicinity;

  external set vicinity(String value);

  external String get website;

  external set website(String value);
}

@GeneratedFrom(_PlaceResult)
extension PlaceResult$Ext on PlaceResult {
  List<GeocoderAddressComponent> get addressComponents =>
      getProperty(this, 'address_components')?.cast<GeocoderAddressComponent>();

  set addressComponents(List<GeocoderAddressComponent> value) {
    setProperty(this, 'address_components', value);
  }

  String get adrAddress => getProperty(this, 'adr_address');

  set adrAddress(String value) {
    setProperty(this, 'adr_address', value);
  }

  List<PlaceAspectRating> get aspects =>
      getProperty(this, 'aspects')?.cast<PlaceAspectRating>();

  set aspects(List<PlaceAspectRating> value) {
    setProperty(this, 'aspects', value);
  }

  BusinessStatus get businessStatus => getProperty(this, 'business_status');

  set businessStatus(BusinessStatus value) {
    setProperty(this, 'business_status', value);
  }

  String get formattedAddress => getProperty(this, 'formatted_address');

  set formattedAddress(String value) {
    setProperty(this, 'formatted_address', value);
  }

  String get formattedPhoneNumber =>
      getProperty(this, 'formatted_phone_number');

  set formattedPhoneNumber(String value) {
    setProperty(this, 'formatted_phone_number', value);
  }

  List<String> get htmlAttributions =>
      getProperty(this, 'html_attributions')?.cast<String>();

  set htmlAttributions(List<String> value) {
    setProperty(this, 'html_attributions', value);
  }

  String get internationalPhoneNumber =>
      getProperty(this, 'international_phone_number');

  set internationalPhoneNumber(String value) {
    setProperty(this, 'international_phone_number', value);
  }

  PlaceOpeningHours get openingHours => getProperty(this, 'opening_hours');

  set openingHours(PlaceOpeningHours value) {
    setProperty(this, 'opening_hours', value);
  }

  bool get permanentlyClosed => getProperty(this, 'permanently_closed');

  set permanentlyClosed(bool value) {
    setProperty(this, 'permanently_closed', value);
  }

  List<PlacePhoto> get photos =>
      getProperty(this, 'photos')?.cast<PlacePhoto>();

  set photos(List<PlacePhoto> value) {
    setProperty(this, 'photos', value);
  }

  String get placeId => getProperty(this, 'place_id');

  set placeId(String value) {
    setProperty(this, 'place_id', value);
  }

  PlacePlusCode get plusCode => getProperty(this, 'plus_code');

  set plusCode(PlacePlusCode value) {
    setProperty(this, 'plus_code', value);
  }

  num get priceLevel => getProperty(this, 'price_level');

  set priceLevel(num value) {
    setProperty(this, 'price_level', value);
  }

  List<PlaceReview> get reviews =>
      getProperty(this, 'reviews')?.cast<PlaceReview>();

  set reviews(List<PlaceReview> value) {
    setProperty(this, 'reviews', value);
  }

  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }

  num get userRatingsTotal => getProperty(this, 'user_ratings_total');

  set userRatingsTotal(num value) {
    setProperty(this, 'user_ratings_total', value);
  }

  num get utcOffset => getProperty(this, 'utc_offset');

  set utcOffset(num value) {
    setProperty(this, 'utc_offset', value);
  }

  num get utcOffsetMinutes => getProperty(this, 'utc_offset_minutes');

  set utcOffsetMinutes(num value) {
    setProperty(this, 'utc_offset_minutes', value);
  }
}

@GeneratedFrom(_PlaceAspectRating)
@JS()
@anonymous
class PlaceAspectRating {
  external factory PlaceAspectRating();

  external num get rating;

  external set rating(num value);

  external String get type;

  external set type(String value);
}

@GeneratedFrom(_BusinessStatus)
@JS('google.maps.places.BusinessStatus')
class BusinessStatus {
  external static BusinessStatus get CLOSED_PERMANENTLY;
  external static BusinessStatus get CLOSED_TEMPORARILY;
  external static BusinessStatus get OPERATIONAL;
}

@GeneratedFrom(_PlaceGeometry)
@JS()
@anonymous
class PlaceGeometry {
  external factory PlaceGeometry();

  external LatLng get location;

  external set location(LatLng value);

  external LatLngBounds get viewport;

  external set viewport(LatLngBounds value);
}

@GeneratedFrom(_PlaceOpeningHours)
@JS()
@anonymous
class PlaceOpeningHours {
  external factory PlaceOpeningHours();

  external bool isOpen([
    DateTime date,
  ]);
}

@GeneratedFrom(_PlaceOpeningHours)
extension PlaceOpeningHours$Ext on PlaceOpeningHours {
  bool get openNow => getProperty(this, 'open_now');

  set openNow(bool value) {
    setProperty(this, 'open_now', value);
  }

  List<PlaceOpeningHoursPeriod> get periods =>
      getProperty(this, 'periods')?.cast<PlaceOpeningHoursPeriod>();

  set periods(List<PlaceOpeningHoursPeriod> value) {
    setProperty(this, 'periods', value);
  }

  List<String> get weekdayText =>
      getProperty(this, 'weekday_text')?.cast<String>();

  set weekdayText(List<String> value) {
    setProperty(this, 'weekday_text', value);
  }
}

@GeneratedFrom(_PlaceOpeningHoursPeriod)
@JS()
@anonymous
class PlaceOpeningHoursPeriod {
  external factory PlaceOpeningHoursPeriod();

  external PlaceOpeningHoursTime get open;

  external set open(PlaceOpeningHoursTime value);

  external PlaceOpeningHoursTime get close;

  external set close(PlaceOpeningHoursTime value);
}

@GeneratedFrom(_PlaceOpeningHoursTime)
@JS()
@anonymous
class PlaceOpeningHoursTime {
  external factory PlaceOpeningHoursTime();

  external num get day;

  external set day(num value);

  external num get hours;

  external set hours(num value);

  external num get minutes;

  external set minutes(num value);

  external String get time;

  external set time(String value);

  external num get nextDate;

  external set nextDate(num value);
}

@GeneratedFrom(_PlacePlusCode)
@JS()
@anonymous
class PlacePlusCode {
  external factory PlacePlusCode();
}

@GeneratedFrom(_PlacePlusCode)
extension PlacePlusCode$Ext on PlacePlusCode {
  String get globalCode => getProperty(this, 'global_code');

  set globalCode(String value) {
    setProperty(this, 'global_code', value);
  }

  String get compoundCode => getProperty(this, 'compound_code');

  set compoundCode(String value) {
    setProperty(this, 'compound_code', value);
  }
}

@GeneratedFrom(_PlacePhoto)
@JS()
@anonymous
class PlacePhoto {
  external factory PlacePhoto();

  external num get height;

  external set height(num value);

  external num get width;

  external set width(num value);
}

@GeneratedFrom(_PlacePhoto)
extension PlacePhoto$Ext on PlacePhoto {
  List<String> get htmlAttributions =>
      getProperty(this, 'html_attributions')?.cast<String>();

  set htmlAttributions(List<String> value) {
    setProperty(this, 'html_attributions', value);
  }

  String get url => _getUrl();

  String _getUrl() => callMethod(this, 'getUrl', []);
}

@GeneratedFrom(_PhotoOptions)
@JS()
@anonymous
class PhotoOptions {
  external factory PhotoOptions();

  external num get maxHeight;

  external set maxHeight(num value);

  external num get maxWidth;

  external set maxWidth(num value);
}

@GeneratedFrom(_PlaceReview)
@JS()
@anonymous
class PlaceReview {
  external factory PlaceReview();

  external String get language;

  external set language(String value);

  external String get text;

  external set text(String value);

  external num get time;

  external set time(num value);
}

@GeneratedFrom(_PlaceReview)
extension PlaceReview$Ext on PlaceReview {
  List<PlaceAspectRating> get aspects =>
      getProperty(this, 'aspects')?.cast<PlaceAspectRating>();

  set aspects(List<PlaceAspectRating> value) {
    setProperty(this, 'aspects', value);
  }

  String get authorName => getProperty(this, 'author_name');

  set authorName(String value) {
    setProperty(this, 'author_name', value);
  }

  String get profilePhotoUrl => getProperty(this, 'profile_photo_url');

  set profilePhotoUrl(String value) {
    setProperty(this, 'profile_photo_url', value);
  }

  String get relativeTimeDescription =>
      getProperty(this, 'relative_time_description');

  set relativeTimeDescription(String value) {
    setProperty(this, 'relative_time_description', value);
  }

  String get authorUrl => getProperty(this, 'author_url');

  set authorUrl(String value) {
    setProperty(this, 'author_url', value);
  }
}

@GeneratedFrom(_AutocompleteService)
@JS('google.maps.places.AutocompleteService')
class AutocompleteService {
  external AutocompleteService();
}

@GeneratedFrom(_AutocompleteService)
extension AutocompleteService$Ext on AutocompleteService {
  void getPlacePredictions(
      AutocompletionRequest request,
      void Function(List<AutocompletePrediction> p1, PlacesServiceStatus p2)
          callback) {
    callMethod(this, 'getPlacePredictions', [request, allowInterop(callback)]);
  }

  void getQueryPredictions(
      QueryAutocompletionRequest request,
      void Function(
              List<QueryAutocompletePrediction> p1, PlacesServiceStatus p2)
          callback) {
    callMethod(this, 'getQueryPredictions', [request, allowInterop(callback)]);
  }
}

@GeneratedFrom(_AutocompletionRequest)
@JS()
@anonymous
class AutocompletionRequest {
  external factory AutocompletionRequest();

  external String get input;

  external set input(String value);

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external ComponentRestrictions get componentRestrictions;

  external set componentRestrictions(ComponentRestrictions value);

  external LatLng get location;

  external set location(LatLng value);

  external num get offset;

  external set offset(num value);

  external LatLng get origin;

  external set origin(LatLng value);

  external num get radius;

  external set radius(num value);

  external AutocompleteSessionToken get sessionToken;

  external set sessionToken(AutocompleteSessionToken value);
}

@GeneratedFrom(_AutocompletionRequest)
extension AutocompletionRequest$Ext on AutocompletionRequest {
  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }
}

@GeneratedFrom(_QueryAutocompletionRequest)
@JS()
@anonymous
class QueryAutocompletionRequest {
  external factory QueryAutocompletionRequest();

  external String get input;

  external set input(String value);

  external LatLngBounds get bounds;

  external set bounds(LatLngBounds value);

  external LatLng get location;

  external set location(LatLng value);

  external num get offset;

  external set offset(num value);

  external num get radius;

  external set radius(num value);
}

@GeneratedFrom(_AutocompleteSessionToken)
@JS('google.maps.places.AutocompleteSessionToken')
class AutocompleteSessionToken {
  external AutocompleteSessionToken();
}

@GeneratedFrom(_ComponentRestrictions)
@JS()
@anonymous
class ComponentRestrictions {
  external factory ComponentRestrictions();

  external Object get country;

  external set country(Object value);
}

@GeneratedFrom(_AutocompletePrediction)
@JS()
@anonymous
class AutocompletePrediction {
  external factory AutocompletePrediction();

  external String get description;

  external set description(String value);
}

@GeneratedFrom(_AutocompletePrediction)
extension AutocompletePrediction$Ext on AutocompletePrediction {
  List<PredictionSubstring> get matchedSubstrings =>
      getProperty(this, 'matched_substrings')?.cast<PredictionSubstring>();

  set matchedSubstrings(List<PredictionSubstring> value) {
    setProperty(this, 'matched_substrings', value);
  }

  String get placeId => getProperty(this, 'place_id');

  set placeId(String value) {
    setProperty(this, 'place_id', value);
  }

  StructuredFormatting get structuredFormatting =>
      getProperty(this, 'structured_formatting');

  set structuredFormatting(StructuredFormatting value) {
    setProperty(this, 'structured_formatting', value);
  }

  List<PredictionTerm> get terms =>
      getProperty(this, 'terms')?.cast<PredictionTerm>();

  set terms(List<PredictionTerm> value) {
    setProperty(this, 'terms', value);
  }

  List<String> get types => getProperty(this, 'types')?.cast<String>();

  set types(List<String> value) {
    setProperty(this, 'types', value);
  }

  num get distanceMeters => getProperty(this, 'distance_meters');

  set distanceMeters(num value) {
    setProperty(this, 'distance_meters', value);
  }
}

@GeneratedFrom(_QueryAutocompletePrediction)
@JS()
@anonymous
class QueryAutocompletePrediction {
  external factory QueryAutocompletePrediction();

  external String get description;

  external set description(String value);
}

@GeneratedFrom(_QueryAutocompletePrediction)
extension QueryAutocompletePrediction$Ext on QueryAutocompletePrediction {
  List<PredictionSubstring> get matchedSubstrings =>
      getProperty(this, 'matched_substrings')?.cast<PredictionSubstring>();

  set matchedSubstrings(List<PredictionSubstring> value) {
    setProperty(this, 'matched_substrings', value);
  }

  List<PredictionTerm> get terms =>
      getProperty(this, 'terms')?.cast<PredictionTerm>();

  set terms(List<PredictionTerm> value) {
    setProperty(this, 'terms', value);
  }

  String get placeId => getProperty(this, 'place_id');

  set placeId(String value) {
    setProperty(this, 'place_id', value);
  }
}

@GeneratedFrom(_PredictionTerm)
@JS()
@anonymous
class PredictionTerm {
  external factory PredictionTerm();

  external num get offset;

  external set offset(num value);

  external String get value;

  external set value(String value);
}

@GeneratedFrom(_PredictionSubstring)
@JS()
@anonymous
class PredictionSubstring {
  external factory PredictionSubstring();

  external num get length;

  external set length(num value);

  external num get offset;

  external set offset(num value);
}

@GeneratedFrom(_StructuredFormatting)
@JS()
@anonymous
class StructuredFormatting {
  external factory StructuredFormatting();
}

@GeneratedFrom(_StructuredFormatting)
extension StructuredFormatting$Ext on StructuredFormatting {
  String get mainText => getProperty(this, 'main_text');

  set mainText(String value) {
    setProperty(this, 'main_text', value);
  }

  List<PredictionSubstring> get mainTextMatchedSubstrings =>
      getProperty(this, 'main_text_matched_substrings')
          ?.cast<PredictionSubstring>();

  set mainTextMatchedSubstrings(List<PredictionSubstring> value) {
    setProperty(this, 'main_text_matched_substrings', value);
  }

  String get secondaryText => getProperty(this, 'secondary_text');

  set secondaryText(String value) {
    setProperty(this, 'secondary_text', value);
  }
}
