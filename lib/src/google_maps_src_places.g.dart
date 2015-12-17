// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:04.659Z

part of google_maps.src.places;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Autocomplete
// **************************************************************************

@JsName('google.maps.places.Autocomplete')
class Autocomplete extends MVCObject implements _Autocomplete {
  Autocomplete.created(JsObject o) : super.created(o);
  Autocomplete(InputElement inputField, [AutocompleteOptions opts])
      : this.created(new JsObject(
          context['google']['maps']['places']['Autocomplete'], [
        inputField,
        __codec432.encode(opts)
      ]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec433.decode(asJsObject(this).callMethod('getBounds'));
  PlaceResult get place => _getPlace();
  PlaceResult _getPlace() =>
      __codec434.decode(asJsObject(this).callMethod('getPlace'));
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec433.encode(bounds)]);
  }
  void set componentRestrictions(ComponentRestrictions restrictions) =>
      _setComponentRestrictions(restrictions);
  void _setComponentRestrictions(ComponentRestrictions restrictions) {
    asJsObject(this).callMethod(
        'setComponentRestrictions', [__codec435.encode(restrictions)]);
  }
  void set types(List<String> types) => _setTypes(types);
  void _setTypes(List<String> types) {
    asJsObject(this).callMethod('setTypes', [__codec436.encode(types)]);
  }

  Stream get onPlaceChanged =>
      getStream(this, #onPlaceChanged, "place_changed");
}
/// codec for google_maps.src.places.AutocompleteOptions
final __codec432 = new JsInterfaceCodec<AutocompleteOptions>(
    (o) => new AutocompleteOptions.created(o));

/// codec for google_maps.src.LatLngBounds
final __codec433 =
    new JsInterfaceCodec<LatLngBounds>((o) => new LatLngBounds.created(o));

/// codec for google_maps.src.places.PlaceResult
final __codec434 =
    new JsInterfaceCodec<PlaceResult>((o) => new PlaceResult.created(o));

/// codec for google_maps.src.places.ComponentRestrictions
final __codec435 = new JsInterfaceCodec<ComponentRestrictions>(
    (o) => new ComponentRestrictions.created(o));

/// codec for dart.core.List<String>
final __codec436 = new JsListCodec<String>(null);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AutocompleteOptions
// **************************************************************************

@anonymous
class AutocompleteOptions extends JsInterface implements _AutocompleteOptions {
  AutocompleteOptions.created(JsObject o) : super.created(o);
  AutocompleteOptions() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
  void set componentRestrictions(ComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec435.encode(_componentRestrictions);
  }
  ComponentRestrictions get componentRestrictions =>
      __codec435.decode(asJsObject(this)['componentRestrictions']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AutocompletePrediction
// **************************************************************************

@anonymous
class AutocompletePrediction extends JsInterface
    implements _AutocompletePrediction {
  AutocompletePrediction.created(JsObject o) : super.created(o);
  AutocompletePrediction() : this.created(new JsObject(context['Object']));

  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set _matched_substrings(List<PredictionSubstring> __matched_substrings) {
    asJsObject(this)['matched_substrings'] =
        __codec438.encode(__matched_substrings);
  }
  List<PredictionSubstring> get _matched_substrings =>
      __codec438.decode(asJsObject(this)['matched_substrings']);
  List<PredictionSubstring> get matchedSubstrings => _matched_substrings;
  void set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) {
    _matched_substrings = matchedSubstrings;
  }
  void set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }
  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  void set terms(List<PredictionTerm> _terms) {
    asJsObject(this)['terms'] = __codec440.encode(_terms);
  }
  List<PredictionTerm> get terms =>
      __codec440.decode(asJsObject(this)['terms']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
}
/// codec for google_maps.src.places.PredictionSubstring
final __codec437 = new JsInterfaceCodec<PredictionSubstring>(
    (o) => new PredictionSubstring.created(o));

/// codec for dart.core.List<PredictionSubstring>
final __codec438 = new JsListCodec<PredictionSubstring>(__codec437);

/// codec for google_maps.src.places.PredictionTerm
final __codec439 =
    new JsInterfaceCodec<PredictionTerm>((o) => new PredictionTerm.created(o));

/// codec for dart.core.List<PredictionTerm>
final __codec440 = new JsListCodec<PredictionTerm>(__codec439);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PredictionTerm
// **************************************************************************

@anonymous
class PredictionTerm extends JsInterface implements _PredictionTerm {
  PredictionTerm.created(JsObject o) : super.created(o);
  PredictionTerm() : this.created(new JsObject(context['Object']));

  void set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  num get offset => asJsObject(this)['offset'];
  void set value(String _value) {
    asJsObject(this)['value'] = _value;
  }
  String get value => asJsObject(this)['value'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PredictionSubstring
// **************************************************************************

@anonymous
class PredictionSubstring extends JsInterface implements _PredictionSubstring {
  PredictionSubstring.created(JsObject o) : super.created(o);
  PredictionSubstring() : this.created(new JsObject(context['Object']));

  void set length(num _length) {
    asJsObject(this)['length'] = _length;
  }
  num get length => asJsObject(this)['length'];
  void set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  num get offset => asJsObject(this)['offset'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AutocompleteService
// **************************************************************************

@JsName('google.maps.places.AutocompleteService')
class AutocompleteService extends JsInterface implements _AutocompleteService {
  AutocompleteService.created(JsObject o) : super.created(o);
  AutocompleteService() : this.created(new JsObject(
          context['google']['maps']['places']['AutocompleteService']));

  void getPlacePredictions(AutocompletionRequest request,
      callback(List<AutocompletePrediction> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getPlacePredictions', [
      __codec441.encode(request),
      __codec445.encode(callback)
    ]);
  }
  void getQueryPredictions(QueryAutocompletionRequest request,
      callback(List<QueryAutocompletePrediction> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getQueryPredictions', [
      __codec446.encode(request),
      __codec449.encode(callback)
    ]);
  }
}
/// codec for google_maps.src.places.AutocompletionRequest
final __codec441 = new JsInterfaceCodec<AutocompletionRequest>(
    (o) => new AutocompletionRequest.created(o));

/// codec for google_maps.src.places.AutocompletePrediction
final __codec442 = new JsInterfaceCodec<AutocompletePrediction>(
    (o) => new AutocompletePrediction.created(o));

/// codec for dart.core.List<AutocompletePrediction>
final __codec443 = new JsListCodec<AutocompletePrediction>(__codec442);

/// codec for google_maps.src.places.PlacesServiceStatus
final __codec444 = new BiMapCodec<PlacesServiceStatus, dynamic>(
    new Map<PlacesServiceStatus, dynamic>.fromIterable(
        PlacesServiceStatus.values, value: asJs));

/// codec for google_maps.src.places.(List<AutocompletePrediction>, PlacesServiceStatus) → dynamic
final __codec445 =
    new FunctionCodec /*<(List<AutocompletePrediction>, PlacesServiceStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec443.decode(p_p1);
  p_p2 = __codec444.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec443.encode(p_p1);
  p_p2 = __codec444.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

/// codec for google_maps.src.places.QueryAutocompletionRequest
final __codec446 = new JsInterfaceCodec<QueryAutocompletionRequest>(
    (o) => new QueryAutocompletionRequest.created(o));

/// codec for google_maps.src.places.QueryAutocompletePrediction
final __codec447 = new JsInterfaceCodec<QueryAutocompletePrediction>(
    (o) => new QueryAutocompletePrediction.created(o));

/// codec for dart.core.List<QueryAutocompletePrediction>
final __codec448 = new JsListCodec<QueryAutocompletePrediction>(__codec447);

/// codec for google_maps.src.places.(List<QueryAutocompletePrediction>, PlacesServiceStatus) → dynamic
final __codec449 =
    new FunctionCodec /*<(List<QueryAutocompletePrediction>, PlacesServiceStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec448.decode(p_p1);
  p_p2 = __codec444.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec448.encode(p_p1);
  p_p2 = __codec444.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AutocompletionRequest
// **************************************************************************

@anonymous
class AutocompletionRequest extends JsInterface
    implements _AutocompletionRequest {
  AutocompletionRequest.created(JsObject o) : super.created(o);
  AutocompletionRequest() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
  void set componentRestrictions(ComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec435.encode(_componentRestrictions);
  }
  ComponentRestrictions get componentRestrictions =>
      __codec435.decode(asJsObject(this)['componentRestrictions']);
  void set input(String _input) {
    asJsObject(this)['input'] = _input;
  }
  String get input => asJsObject(this)['input'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec450.encode(_location);
  }
  LatLng get location => __codec450.decode(asJsObject(this)['location']);
  void set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  num get offset => asJsObject(this)['offset'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
}
/// codec for google_maps.src.LatLng
final __codec450 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _ComponentRestrictions
// **************************************************************************

@anonymous
class ComponentRestrictions extends JsInterface
    implements _ComponentRestrictions {
  ComponentRestrictions.created(JsObject o) : super.created(o);
  ComponentRestrictions() : this.created(new JsObject(context['Object']));

  void set country(String _country) {
    asJsObject(this)['country'] = _country;
  }
  String get country => asJsObject(this)['country'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceAspectRating
// **************************************************************************

@anonymous
class PlaceAspectRating extends JsInterface implements _PlaceAspectRating {
  PlaceAspectRating.created(JsObject o) : super.created(o);
  PlaceAspectRating() : this.created(new JsObject(context['Object']));

  void set rating(num _rating) {
    asJsObject(this)['rating'] = _rating;
  }
  num get rating => asJsObject(this)['rating'];
  void set type(String _type) {
    asJsObject(this)['type'] = _type;
  }
  String get type => asJsObject(this)['type'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceDetailsRequest
// **************************************************************************

@anonymous
class PlaceDetailsRequest extends JsInterface implements _PlaceDetailsRequest {
  PlaceDetailsRequest.created(JsObject o) : super.created(o);
  PlaceDetailsRequest() : this.created(new JsObject(context['Object']));

  void set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }
  String get placeId => asJsObject(this)['placeId'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceGeometry
// **************************************************************************

@anonymous
class PlaceGeometry extends JsInterface implements _PlaceGeometry {
  PlaceGeometry.created(JsObject o) : super.created(o);
  PlaceGeometry() : this.created(new JsObject(context['Object']));

  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec450.encode(_location);
  }
  LatLng get location => __codec450.decode(asJsObject(this)['location']);
  void set viewport(LatLngBounds _viewport) {
    asJsObject(this)['viewport'] = __codec433.encode(_viewport);
  }
  LatLngBounds get viewport => __codec433.decode(asJsObject(this)['viewport']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlacePhoto
// **************************************************************************

@anonymous
class PlacePhoto extends JsInterface implements _PlacePhoto {
  PlacePhoto.created(JsObject o) : super.created(o);
  PlacePhoto() : this.created(new JsObject(context['Object']));

  String getUrl(PhotoOptions opts) =>
      asJsObject(this).callMethod('getUrl', [__codec451.encode(opts)]);

  void set height(num _height) {
    asJsObject(this)['height'] = _height;
  }
  num get height => asJsObject(this)['height'];
  void set _html_attributions(List<String> __html_attributions) {
    asJsObject(this)['html_attributions'] =
        __codec436.encode(__html_attributions);
  }
  List<String> get _html_attributions =>
      __codec436.decode(asJsObject(this)['html_attributions']);
  List<String> get htmlAttributions => _html_attributions;
  void set htmlAttributions(List<String> htmlAttributions) {
    _html_attributions = htmlAttributions;
  }
  void set width(num _width) {
    asJsObject(this)['width'] = _width;
  }
  num get width => asJsObject(this)['width'];
}
/// codec for google_maps.src.places.PhotoOptions
final __codec451 =
    new JsInterfaceCodec<PhotoOptions>((o) => new PhotoOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PhotoOptions
// **************************************************************************

@anonymous
class PhotoOptions extends JsInterface implements _PhotoOptions {
  PhotoOptions.created(JsObject o) : super.created(o);
  PhotoOptions() : this.created(new JsObject(context['Object']));

  void set maxHeight(num _maxHeight) {
    asJsObject(this)['maxHeight'] = _maxHeight;
  }
  num get maxHeight => asJsObject(this)['maxHeight'];
  void set maxWidth(num _maxWidth) {
    asJsObject(this)['maxWidth'] = _maxWidth;
  }
  num get maxWidth => asJsObject(this)['maxWidth'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceResult
// **************************************************************************

@anonymous
class PlaceResult extends JsInterface implements _PlaceResult {
  PlaceResult.created(JsObject o) : super.created(o);
  PlaceResult() : this.created(new JsObject(context['Object']));

  void set _address_components(
      List<GeocoderAddressComponent> __address_components) {
    asJsObject(this)['address_components'] =
        __codec453.encode(__address_components);
  }
  List<GeocoderAddressComponent> get _address_components =>
      __codec453.decode(asJsObject(this)['address_components']);
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  void set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }
  void set aspects(List<PlaceAspectRating> _aspects) {
    asJsObject(this)['aspects'] = __codec455.encode(_aspects);
  }
  List<PlaceAspectRating> get aspects =>
      __codec455.decode(asJsObject(this)['aspects']);
  void set _formatted_address(String __formatted_address) {
    asJsObject(this)['formatted_address'] = __formatted_address;
  }
  String get _formatted_address => asJsObject(this)['formatted_address'];
  String get formattedAddress => _formatted_address;
  void set formattedAddress(String formattedAddress) {
    _formatted_address = formattedAddress;
  }
  void set _formatted_phone_number(String __formatted_phone_number) {
    asJsObject(this)['formatted_phone_number'] = __formatted_phone_number;
  }
  String get _formatted_phone_number =>
      asJsObject(this)['formatted_phone_number'];
  String get formattedPhoneNumber => _formatted_phone_number;
  void set formattedPhoneNumber(String formattedPhoneNumber) {
    _formatted_phone_number = formattedPhoneNumber;
  }
  void set geometry(PlaceGeometry _geometry) {
    asJsObject(this)['geometry'] = __codec456.encode(_geometry);
  }
  PlaceGeometry get geometry => __codec456.decode(asJsObject(this)['geometry']);
  void set _html_attributions(List<String> __html_attributions) {
    asJsObject(this)['html_attributions'] =
        __codec436.encode(__html_attributions);
  }
  List<String> get _html_attributions =>
      __codec436.decode(asJsObject(this)['html_attributions']);
  List<String> get htmlAttributions => _html_attributions;
  void set htmlAttributions(List<String> htmlAttributions) {
    _html_attributions = htmlAttributions;
  }
  void set icon(String _icon) {
    asJsObject(this)['icon'] = _icon;
  }
  String get icon => asJsObject(this)['icon'];
  void set _international_phone_number(String __international_phone_number) {
    asJsObject(this)['international_phone_number'] =
        __international_phone_number;
  }
  String get _international_phone_number =>
      asJsObject(this)['international_phone_number'];
  String get internationalPhoneNumber => _international_phone_number;
  void set internationalPhoneNumber(String internationalPhoneNumber) {
    _international_phone_number = internationalPhoneNumber;
  }
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set _permanently_closed(bool __permanently_closed) {
    asJsObject(this)['permanently_closed'] = __permanently_closed;
  }
  bool get _permanently_closed => asJsObject(this)['permanently_closed'];
  bool get permanentlyClosed => _permanently_closed;
  void set permanentlyClosed(bool permanentlyClosed) {
    _permanently_closed = permanentlyClosed;
  }
  void set photos(List<PlacePhoto> _photos) {
    asJsObject(this)['photos'] = __codec458.encode(_photos);
  }
  List<PlacePhoto> get photos => __codec458.decode(asJsObject(this)['photos']);
  void set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }
  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  void set _price_level(num __price_level) {
    asJsObject(this)['price_level'] = __price_level;
  }
  num get _price_level => asJsObject(this)['price_level'];
  num get priceLevel => _price_level;
  void set priceLevel(num priceLevel) {
    _price_level = priceLevel;
  }
  void set rating(num _rating) {
    asJsObject(this)['rating'] = _rating;
  }
  num get rating => asJsObject(this)['rating'];
  void set reviews(List<PlaceReview> _reviews) {
    asJsObject(this)['reviews'] = __codec460.encode(_reviews);
  }
  List<PlaceReview> get reviews =>
      __codec460.decode(asJsObject(this)['reviews']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
  void set _utc_offset(num __utc_offset) {
    asJsObject(this)['utc_offset'] = __utc_offset;
  }
  num get _utc_offset => asJsObject(this)['utc_offset'];
  num get utcOffset => _utc_offset;
  void set utcOffset(num utcOffset) {
    _utc_offset = utcOffset;
  }
  void set vicinity(String _vicinity) {
    asJsObject(this)['vicinity'] = _vicinity;
  }
  String get vicinity => asJsObject(this)['vicinity'];
  void set website(String _website) {
    asJsObject(this)['website'] = _website;
  }
  String get website => asJsObject(this)['website'];
}
/// codec for google_maps.src.GeocoderAddressComponent
final __codec452 = new JsInterfaceCodec<GeocoderAddressComponent>(
    (o) => new GeocoderAddressComponent.created(o));

/// codec for dart.core.List<GeocoderAddressComponent>
final __codec453 = new JsListCodec<GeocoderAddressComponent>(__codec452);

/// codec for google_maps.src.places.PlaceAspectRating
final __codec454 = new JsInterfaceCodec<PlaceAspectRating>(
    (o) => new PlaceAspectRating.created(o));

/// codec for dart.core.List<PlaceAspectRating>
final __codec455 = new JsListCodec<PlaceAspectRating>(__codec454);

/// codec for google_maps.src.places.PlaceGeometry
final __codec456 =
    new JsInterfaceCodec<PlaceGeometry>((o) => new PlaceGeometry.created(o));

/// codec for google_maps.src.places.PlacePhoto
final __codec457 =
    new JsInterfaceCodec<PlacePhoto>((o) => new PlacePhoto.created(o));

/// codec for dart.core.List<PlacePhoto>
final __codec458 = new JsListCodec<PlacePhoto>(__codec457);

/// codec for google_maps.src.places.PlaceReview
final __codec459 =
    new JsInterfaceCodec<PlaceReview>((o) => new PlaceReview.created(o));

/// codec for dart.core.List<PlaceReview>
final __codec460 = new JsListCodec<PlaceReview>(__codec459);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceReview
// **************************************************************************

@anonymous
class PlaceReview extends JsInterface implements _PlaceReview {
  PlaceReview.created(JsObject o) : super.created(o);
  PlaceReview() : this.created(new JsObject(context['Object']));

  void set aspects(List<PlaceAspectRating> _aspects) {
    asJsObject(this)['aspects'] = __codec455.encode(_aspects);
  }
  List<PlaceAspectRating> get aspects =>
      __codec455.decode(asJsObject(this)['aspects']);
  void set _author_name(String __author_name) {
    asJsObject(this)['author_name'] = __author_name;
  }
  String get _author_name => asJsObject(this)['author_name'];
  String get authorName => _author_name;
  void set authorName(String authorName) {
    _author_name = authorName;
  }
  void set _author_url(String __author_url) {
    asJsObject(this)['author_url'] = __author_url;
  }
  String get _author_url => asJsObject(this)['author_url'];
  String get authorUrl => _author_url;
  void set authorUrl(String authorUrl) {
    _author_url = authorUrl;
  }
  void set language(String _language) {
    asJsObject(this)['language'] = _language;
  }
  String get language => asJsObject(this)['language'];
  void set text(String _text) {
    asJsObject(this)['text'] = _text;
  }
  String get text => asJsObject(this)['text'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceSearchPagination
// **************************************************************************

@anonymous
class PlaceSearchPagination extends JsInterface
    implements _PlaceSearchPagination {
  PlaceSearchPagination.created(JsObject o) : super.created(o);
  PlaceSearchPagination() : this.created(new JsObject(context['Object']));

  void nextPage() {
    asJsObject(this).callMethod('nextPage');
  }

  void set hasNextPage(bool _hasNextPage) {
    asJsObject(this)['hasNextPage'] = _hasNextPage;
  }
  bool get hasNextPage => asJsObject(this)['hasNextPage'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceSearchRequest
// **************************************************************************

@anonymous
class PlaceSearchRequest extends JsInterface implements _PlaceSearchRequest {
  PlaceSearchRequest.created(JsObject o) : super.created(o);
  PlaceSearchRequest() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
  void set keyword(String _keyword) {
    asJsObject(this)['keyword'] = _keyword;
  }
  String get keyword => asJsObject(this)['keyword'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec450.encode(_location);
  }
  LatLng get location => __codec450.decode(asJsObject(this)['location']);
  void set maxPriceLevel(num _maxPriceLevel) {
    asJsObject(this)['maxPriceLevel'] = _maxPriceLevel;
  }
  num get maxPriceLevel => asJsObject(this)['maxPriceLevel'];
  void set minPriceLevel(num _minPriceLevel) {
    asJsObject(this)['minPriceLevel'] = _minPriceLevel;
  }
  num get minPriceLevel => asJsObject(this)['minPriceLevel'];
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set openNow(bool _openNow) {
    asJsObject(this)['openNow'] = _openNow;
  }
  bool get openNow => asJsObject(this)['openNow'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set rankBy(RankBy _rankBy) {
    asJsObject(this)['rankBy'] = __codec461.encode(_rankBy);
  }
  RankBy get rankBy => __codec461.decode(asJsObject(this)['rankBy']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
}
/// codec for google_maps.src.places.RankBy
final __codec461 = new BiMapCodec<RankBy, dynamic>(
    new Map<RankBy, dynamic>.fromIterable(RankBy.values, value: asJs));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlacesService
// **************************************************************************

@JsName('google.maps.places.PlacesService')
class PlacesService extends JsInterface implements _PlacesService {
  PlacesService.created(JsObject o) : super.created(o);
  PlacesService(dynamic /*DivElement|GMap*/ attrContainer) : this.created(
          new JsObject(context['google']['maps']['places']['PlacesService'], [
        (new ChainedCodec()
          ..add(new IdentityCodec<DivElement>())
          ..add(new JsInterfaceCodec<GMap>((o) => new GMap.created(o), (o) =>
                  o != null && o.instanceof(context['google']['maps']['Map']))))
            .encode(attrContainer)
      ]));
  void getDetails(PlaceDetailsRequest request,
      callback(PlaceResult p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getDetails', [
      __codec462.encode(request),
      __codec463.encode(callback)
    ]);
  }
  void nearbySearch(PlaceSearchRequest request, callback(
      List<PlaceResult> p1, PlacesServiceStatus p2, PlaceSearchPagination p3)) {
    asJsObject(this).callMethod('nearbySearch', [
      __codec464.encode(request),
      __codec467.encode(callback)
    ]);
  }
  void _radarSearch(RadarSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2, [_])) {
    asJsObject(this).callMethod('radarSearch', [
      __codec468.encode(request),
      __codec469.encode(callback)
    ]);
  }
  void radarSearch(RadarSearchRequest request,
          callback(List<PlaceResult> p1, PlacesServiceStatus p2)) =>
      _radarSearch(request, (p1, p2, [_]) => callback(p1, p2));

  void textSearch(TextSearchRequest request, callback(
      List<PlaceResult> p1, PlacesServiceStatus p2, PlaceSearchPagination p3)) {
    asJsObject(this).callMethod('textSearch', [
      __codec470.encode(request),
      __codec467.encode(callback)
    ]);
  }
}
/// codec for google_maps.src.places.PlaceDetailsRequest
final __codec462 = new JsInterfaceCodec<PlaceDetailsRequest>(
    (o) => new PlaceDetailsRequest.created(o));

/// codec for google_maps.src.places.(PlaceResult, PlacesServiceStatus) → dynamic
final __codec463 =
    new FunctionCodec /*<(PlaceResult, PlacesServiceStatus) → dynamic>*/ (
        (f) => (p_p1, p_p2) {
  p_p1 = __codec434.decode(p_p1);
  p_p2 = __codec444.decode(p_p2);
  return f(p_p1, p_p2);
}, (JsFunction f) => (p_p1, p_p2) {
  p_p1 = __codec434.encode(p_p1);
  p_p2 = __codec444.encode(p_p2);
  return f.apply([p_p1, p_p2]);
});

/// codec for google_maps.src.places.PlaceSearchRequest
final __codec464 = new JsInterfaceCodec<PlaceSearchRequest>(
    (o) => new PlaceSearchRequest.created(o));

/// codec for dart.core.List<PlaceResult>
final __codec465 = new JsListCodec<PlaceResult>(__codec434);

/// codec for google_maps.src.places.PlaceSearchPagination
final __codec466 = new JsInterfaceCodec<PlaceSearchPagination>(
    (o) => new PlaceSearchPagination.created(o));

/// codec for google_maps.src.places.(List<PlaceResult>, PlacesServiceStatus, PlaceSearchPagination) → dynamic
final __codec467 =
    new FunctionCodec /*<(List<PlaceResult>, PlacesServiceStatus, PlaceSearchPagination) → dynamic>*/ (
        (f) => (p_p1, p_p2, p_p3) {
  p_p1 = __codec465.decode(p_p1);
  p_p2 = __codec444.decode(p_p2);
  p_p3 = __codec466.decode(p_p3);
  return f(p_p1, p_p2, p_p3);
}, (JsFunction f) => (p_p1, p_p2, p_p3) {
  p_p1 = __codec465.encode(p_p1);
  p_p2 = __codec444.encode(p_p2);
  p_p3 = __codec466.encode(p_p3);
  return f.apply([p_p1, p_p2, p_p3]);
});

/// codec for google_maps.src.places.RadarSearchRequest
final __codec468 = new JsInterfaceCodec<RadarSearchRequest>(
    (o) => new RadarSearchRequest.created(o));

/// codec for google_maps.src.places.(List<PlaceResult>, PlacesServiceStatus, [dynamic]) → dynamic
final __codec469 =
    new FunctionCodec /*<(List<PlaceResult>, PlacesServiceStatus, [dynamic]) → dynamic>*/ (
        (f) => (p_p1, p_p2, [p__]) {
  p_p1 = __codec465.decode(p_p1);
  p_p2 = __codec444.decode(p_p2);
  return f(p_p1, p_p2, p__);
}, (JsFunction f) => (p_p1, p_p2, [p__]) {
  p_p1 = __codec465.encode(p_p1);
  p_p2 = __codec444.encode(p_p2);
  return f.apply([p_p1, p_p2, p__]);
});

/// codec for google_maps.src.places.TextSearchRequest
final __codec470 = new JsInterfaceCodec<TextSearchRequest>(
    (o) => new TextSearchRequest.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _PlacesServiceStatus
// **************************************************************************

class PlacesServiceStatus extends JsEnum {
  static final values = <PlacesServiceStatus>[
    INVALID_REQUEST,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR,
    ZERO_RESULTS
  ];
  static final INVALID_REQUEST = new PlacesServiceStatus._('INVALID_REQUEST',
      context['google']['maps']['places']['PlacesServiceStatus'][
      'INVALID_REQUEST']);
  static final OK = new PlacesServiceStatus._(
      'OK', context['google']['maps']['places']['PlacesServiceStatus']['OK']);
  static final OVER_QUERY_LIMIT = new PlacesServiceStatus._('OVER_QUERY_LIMIT',
      context['google']['maps']['places']['PlacesServiceStatus'][
      'OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = new PlacesServiceStatus._('REQUEST_DENIED',
      context['google']['maps']['places']['PlacesServiceStatus'][
      'REQUEST_DENIED']);
  static final UNKNOWN_ERROR = new PlacesServiceStatus._('UNKNOWN_ERROR',
      context['google']['maps']['places']['PlacesServiceStatus'][
      'UNKNOWN_ERROR']);
  static final ZERO_RESULTS = new PlacesServiceStatus._('ZERO_RESULTS', context[
      'google']['maps']['places']['PlacesServiceStatus']['ZERO_RESULTS']);

  final String _name;
  PlacesServiceStatus._(this._name, o) : super.created(o);

  String toString() => 'PlacesServiceStatus.$_name';

  // dumb code to remove analyzer hint for unused _PlacesServiceStatus
  _PlacesServiceStatus _dumbMethod1() => _dumbMethod2();
  _PlacesServiceStatus _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _QueryAutocompletePrediction
// **************************************************************************

@anonymous
class QueryAutocompletePrediction extends JsInterface
    implements _QueryAutocompletePrediction {
  QueryAutocompletePrediction.created(JsObject o) : super.created(o);
  QueryAutocompletePrediction() : this.created(new JsObject(context['Object']));

  void set description(String _description) {
    asJsObject(this)['description'] = _description;
  }
  String get description => asJsObject(this)['description'];
  void set _matched_substrings(List<PredictionSubstring> __matched_substrings) {
    asJsObject(this)['matched_substrings'] =
        __codec438.encode(__matched_substrings);
  }
  List<PredictionSubstring> get _matched_substrings =>
      __codec438.decode(asJsObject(this)['matched_substrings']);
  List<PredictionSubstring> get matchedSubstrings => _matched_substrings;
  void set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) {
    _matched_substrings = matchedSubstrings;
  }
  void set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }
  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  void set placeId(String placeId) {
    _place_id = placeId;
  }
  void set terms(List<PredictionTerm> _terms) {
    asJsObject(this)['terms'] = __codec440.encode(_terms);
  }
  List<PredictionTerm> get terms =>
      __codec440.decode(asJsObject(this)['terms']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _QueryAutocompletionRequest
// **************************************************************************

@anonymous
class QueryAutocompletionRequest extends JsInterface
    implements _QueryAutocompletionRequest {
  QueryAutocompletionRequest.created(JsObject o) : super.created(o);
  QueryAutocompletionRequest() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
  void set input(String _input) {
    asJsObject(this)['input'] = _input;
  }
  String get input => asJsObject(this)['input'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec450.encode(_location);
  }
  LatLng get location => __codec450.decode(asJsObject(this)['location']);
  void set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  num get offset => asJsObject(this)['offset'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _RadarSearchRequest
// **************************************************************************

@anonymous
class RadarSearchRequest extends JsInterface implements _RadarSearchRequest {
  RadarSearchRequest.created(JsObject o) : super.created(o);
  RadarSearchRequest() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
  void set keyword(String _keyword) {
    asJsObject(this)['keyword'] = _keyword;
  }
  String get keyword => asJsObject(this)['keyword'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec450.encode(_location);
  }
  LatLng get location => __codec450.decode(asJsObject(this)['location']);
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: class _RankBy
// **************************************************************************

class RankBy extends JsEnum {
  static final values = <RankBy>[DISTANCE, PROMINENCE];
  static final DISTANCE = new RankBy._(
      'DISTANCE', context['google']['maps']['places']['RankBy']['DISTANCE']);
  static final PROMINENCE = new RankBy._('PROMINENCE',
      context['google']['maps']['places']['RankBy']['PROMINENCE']);

  final String _name;
  RankBy._(this._name, o) : super.created(o);

  String toString() => 'RankBy.$_name';

  // dumb code to remove analyzer hint for unused _RankBy
  _RankBy _dumbMethod1() => _dumbMethod2();
  _RankBy _dumbMethod2() => _dumbMethod1();
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _SearchBox
// **************************************************************************

@JsName('google.maps.places.SearchBox')
class SearchBox extends MVCObject implements _SearchBox {
  SearchBox.created(JsObject o) : super.created(o);
  SearchBox(InputElement inputField, [SearchBoxOptions opts]) : this.created(
          new JsObject(context['google']['maps']['places']['SearchBox'], [
        inputField,
        __codec471.encode(opts)
      ]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec433.decode(asJsObject(this).callMethod('getBounds'));
  List<PlaceResult> get places => _getPlaces();
  List<PlaceResult> _getPlaces() =>
      __codec465.decode(asJsObject(this).callMethod('getPlaces'));
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec433.encode(bounds)]);
  }

  Stream get onPlacesChanged =>
      getStream(this, #onPlacesChanged, "places_changed");
}
/// codec for google_maps.src.places.SearchBoxOptions
final __codec471 = new JsInterfaceCodec<SearchBoxOptions>(
    (o) => new SearchBoxOptions.created(o));

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _SearchBoxOptions
// **************************************************************************

@anonymous
class SearchBoxOptions extends JsInterface implements _SearchBoxOptions {
  SearchBoxOptions.created(JsObject o) : super.created(o);
  SearchBoxOptions() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _TextSearchRequest
// **************************************************************************

@anonymous
class TextSearchRequest extends JsInterface implements _TextSearchRequest {
  TextSearchRequest.created(JsObject o) : super.created(o);
  TextSearchRequest() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec433.encode(_bounds);
  }
  LatLngBounds get bounds => __codec433.decode(asJsObject(this)['bounds']);
  void set location(LatLng _location) {
    asJsObject(this)['location'] = __codec450.encode(_location);
  }
  LatLng get location => __codec450.decode(asJsObject(this)['location']);
  void set query(String _query) {
    asJsObject(this)['query'] = _query;
  }
  String get query => asJsObject(this)['query'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set types(List<String> _types) {
    asJsObject(this)['types'] = __codec436.encode(_types);
  }
  List<String> get types => __codec436.decode(asJsObject(this)['types']);
}
