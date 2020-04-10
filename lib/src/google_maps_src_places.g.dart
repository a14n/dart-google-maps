// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps.src.places;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_Autocomplete)
@JsName('google.maps.places.Autocomplete')
class Autocomplete extends MVCObject {
  Autocomplete(InputElement inputField, [AutocompleteOptions opts])
      : this.created(JsObject(
            context['google']['maps']['places']['Autocomplete'],
            [inputField, __codec0.encode(opts)]));
  Autocomplete.created(JsObject o) : super.created(o);

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec1.decode(asJsObject(this).callMethod('getBounds'));
  PlaceResult get place => _getPlace();
  PlaceResult _getPlace() =>
      __codec2.decode(asJsObject(this).callMethod('getPlace'));
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec1.encode(bounds)]);
  }

  set componentRestrictions(ComponentRestrictions restrictions) =>
      _setComponentRestrictions(restrictions);
  void _setComponentRestrictions(ComponentRestrictions restrictions) {
    asJsObject(this).callMethod(
        'setComponentRestrictions', [__codec3.encode(restrictions)]);
  }

  set types(List<String> types) => _setTypes(types);
  void _setTypes(List<String> types) {
    asJsObject(this).callMethod('setTypes', [__codec4.encode(types)]);
  }

  Stream get onPlaceChanged => getStream(this, 'place_changed');
}

@GeneratedFrom(_AutocompleteOptions)
@anonymous
class AutocompleteOptions extends JsInterface {
  AutocompleteOptions() : this.created(JsObject(context['Object']));
  AutocompleteOptions.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set componentRestrictions(ComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec3.encode(_componentRestrictions);
  }

  ComponentRestrictions get componentRestrictions =>
      __codec3.decode(asJsObject(this)['componentRestrictions']);
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
}

@GeneratedFrom(_AutocompletePrediction)
@anonymous
class AutocompletePrediction extends JsInterface {
  AutocompletePrediction() : this.created(JsObject(context['Object']));
  AutocompletePrediction.created(JsObject o) : super.created(o);

  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set _matched_substrings(List<PredictionSubstring> __matched_substrings) {
    asJsObject(this)['matched_substrings'] =
        __codec6.encode(__matched_substrings);
  }

  List<PredictionSubstring> get _matched_substrings =>
      __codec6.decode(asJsObject(this)['matched_substrings']);
  List<PredictionSubstring> get matchedSubstrings => _matched_substrings;
  set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) {
    _matched_substrings = matchedSubstrings;
  }

  set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }

  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  set placeId(String placeId) {
    _place_id = placeId;
  }

  set terms(List<PredictionTerm> _terms) {
    asJsObject(this)['terms'] = __codec8.encode(_terms);
  }

  List<PredictionTerm> get terms => __codec8.decode(asJsObject(this)['terms']);
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
}

@GeneratedFrom(_AutocompleteService)
@JsName('google.maps.places.AutocompleteService')
class AutocompleteService extends JsInterface {
  AutocompleteService()
      : this.created(JsObject(
            context['google']['maps']['places']['AutocompleteService']));
  AutocompleteService.created(JsObject o) : super.created(o);

  void getPlacePredictions(AutocompletionRequest request,
      callback(List<AutocompletePrediction> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getPlacePredictions',
        [__codec9.encode(request), __codec14.encode(callback)]);
  }

  void getQueryPredictions(QueryAutocompletionRequest request,
      callback(List<QueryAutocompletePrediction> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getQueryPredictions',
        [__codec15.encode(request), __codec18.encode(callback)]);
  }
}

@GeneratedFrom(_AutocompletionRequest)
@anonymous
class AutocompletionRequest extends JsInterface {
  AutocompletionRequest() : this.created(JsObject(context['Object']));
  AutocompletionRequest.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set componentRestrictions(ComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        __codec3.encode(_componentRestrictions);
  }

  ComponentRestrictions get componentRestrictions =>
      __codec3.decode(asJsObject(this)['componentRestrictions']);
  set input(String _input) {
    asJsObject(this)['input'] = _input;
  }

  String get input => asJsObject(this)['input'];
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec19.encode(_location);
  }

  LatLng get location => __codec19.decode(asJsObject(this)['location']);
  set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }

  num get offset => asJsObject(this)['offset'];
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
}

@GeneratedFrom(_ComponentRestrictions)
@anonymous
class ComponentRestrictions extends JsInterface {
  ComponentRestrictions() : this.created(JsObject(context['Object']));
  ComponentRestrictions.created(JsObject o) : super.created(o);

  set country(String _country) {
    asJsObject(this)['country'] = _country;
  }

  String get country => asJsObject(this)['country'];
}

@GeneratedFrom(_PhotoOptions)
@anonymous
class PhotoOptions extends JsInterface {
  PhotoOptions() : this.created(JsObject(context['Object']));
  PhotoOptions.created(JsObject o) : super.created(o);

  set maxHeight(num _maxHeight) {
    asJsObject(this)['maxHeight'] = _maxHeight;
  }

  num get maxHeight => asJsObject(this)['maxHeight'];
  set maxWidth(num _maxWidth) {
    asJsObject(this)['maxWidth'] = _maxWidth;
  }

  num get maxWidth => asJsObject(this)['maxWidth'];
}

@GeneratedFrom(_PlaceAspectRating)
@anonymous
class PlaceAspectRating extends JsInterface {
  PlaceAspectRating() : this.created(JsObject(context['Object']));
  PlaceAspectRating.created(JsObject o) : super.created(o);

  set rating(num _rating) {
    asJsObject(this)['rating'] = _rating;
  }

  num get rating => asJsObject(this)['rating'];
  set type(String _type) {
    asJsObject(this)['type'] = _type;
  }

  String get type => asJsObject(this)['type'];
}

@GeneratedFrom(_PlaceDetailsRequest)
@anonymous
class PlaceDetailsRequest extends JsInterface {
  PlaceDetailsRequest() : this.created(JsObject(context['Object']));
  PlaceDetailsRequest.created(JsObject o) : super.created(o);

  set placeId(String _placeId) {
    asJsObject(this)['placeId'] = _placeId;
  }

  String get placeId => asJsObject(this)['placeId'];
}

@GeneratedFrom(_PlaceGeometry)
@anonymous
class PlaceGeometry extends JsInterface {
  PlaceGeometry() : this.created(JsObject(context['Object']));
  PlaceGeometry.created(JsObject o) : super.created(o);

  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec19.encode(_location);
  }

  LatLng get location => __codec19.decode(asJsObject(this)['location']);
  set viewport(LatLngBounds _viewport) {
    asJsObject(this)['viewport'] = __codec1.encode(_viewport);
  }

  LatLngBounds get viewport => __codec1.decode(asJsObject(this)['viewport']);
}

@GeneratedFrom(_PlacePhoto)
@anonymous
class PlacePhoto extends JsInterface {
  PlacePhoto() : this.created(JsObject(context['Object']));
  PlacePhoto.created(JsObject o) : super.created(o);

  String getUrl(PhotoOptions opts) =>
      asJsObject(this).callMethod('getUrl', [__codec20.encode(opts)]);

  set height(num _height) {
    asJsObject(this)['height'] = _height;
  }

  num get height => asJsObject(this)['height'];
  set _html_attributions(List<String> __html_attributions) {
    asJsObject(this)['html_attributions'] =
        __codec4.encode(__html_attributions);
  }

  List<String> get _html_attributions =>
      __codec4.decode(asJsObject(this)['html_attributions']);
  List<String> get htmlAttributions => _html_attributions;
  set htmlAttributions(List<String> htmlAttributions) {
    _html_attributions = htmlAttributions;
  }

  set width(num _width) {
    asJsObject(this)['width'] = _width;
  }

  num get width => asJsObject(this)['width'];
}

@GeneratedFrom(_PlaceResult)
@anonymous
class PlaceResult extends JsInterface {
  PlaceResult() : this.created(JsObject(context['Object']));
  PlaceResult.created(JsObject o) : super.created(o);

  set _address_components(List<GeocoderAddressComponent> __address_components) {
    asJsObject(this)['address_components'] =
        __codec22.encode(__address_components);
  }

  List<GeocoderAddressComponent> get _address_components =>
      __codec22.decode(asJsObject(this)['address_components']);
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }

  set aspects(List<PlaceAspectRating> _aspects) {
    asJsObject(this)['aspects'] = __codec24.encode(_aspects);
  }

  List<PlaceAspectRating> get aspects =>
      __codec24.decode(asJsObject(this)['aspects']);
  set _formatted_address(String __formatted_address) {
    asJsObject(this)['formatted_address'] = __formatted_address;
  }

  String get _formatted_address => asJsObject(this)['formatted_address'];
  String get formattedAddress => _formatted_address;
  set formattedAddress(String formattedAddress) {
    _formatted_address = formattedAddress;
  }

  set _formatted_phone_number(String __formatted_phone_number) {
    asJsObject(this)['formatted_phone_number'] = __formatted_phone_number;
  }

  String get _formatted_phone_number =>
      asJsObject(this)['formatted_phone_number'];
  String get formattedPhoneNumber => _formatted_phone_number;
  set formattedPhoneNumber(String formattedPhoneNumber) {
    _formatted_phone_number = formattedPhoneNumber;
  }

  set geometry(PlaceGeometry _geometry) {
    asJsObject(this)['geometry'] = __codec25.encode(_geometry);
  }

  PlaceGeometry get geometry => __codec25.decode(asJsObject(this)['geometry']);
  set _html_attributions(List<String> __html_attributions) {
    asJsObject(this)['html_attributions'] =
        __codec4.encode(__html_attributions);
  }

  List<String> get _html_attributions =>
      __codec4.decode(asJsObject(this)['html_attributions']);
  List<String> get htmlAttributions => _html_attributions;
  set htmlAttributions(List<String> htmlAttributions) {
    _html_attributions = htmlAttributions;
  }

  set icon(String _icon) {
    asJsObject(this)['icon'] = _icon;
  }

  String get icon => asJsObject(this)['icon'];
  set _international_phone_number(String __international_phone_number) {
    asJsObject(this)['international_phone_number'] =
        __international_phone_number;
  }

  String get _international_phone_number =>
      asJsObject(this)['international_phone_number'];
  String get internationalPhoneNumber => _international_phone_number;
  set internationalPhoneNumber(String internationalPhoneNumber) {
    _international_phone_number = internationalPhoneNumber;
  }

  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set _permanently_closed(bool __permanently_closed) {
    asJsObject(this)['permanently_closed'] = __permanently_closed;
  }

  bool get _permanently_closed => asJsObject(this)['permanently_closed'];
  bool get permanentlyClosed => _permanently_closed;
  set permanentlyClosed(bool permanentlyClosed) {
    _permanently_closed = permanentlyClosed;
  }

  set photos(List<PlacePhoto> _photos) {
    asJsObject(this)['photos'] = __codec27.encode(_photos);
  }

  List<PlacePhoto> get photos => __codec27.decode(asJsObject(this)['photos']);
  set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }

  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  set placeId(String placeId) {
    _place_id = placeId;
  }

  set _price_level(num __price_level) {
    asJsObject(this)['price_level'] = __price_level;
  }

  num get _price_level => asJsObject(this)['price_level'];
  num get priceLevel => _price_level;
  set priceLevel(num priceLevel) {
    _price_level = priceLevel;
  }

  set rating(num _rating) {
    asJsObject(this)['rating'] = _rating;
  }

  num get rating => asJsObject(this)['rating'];
  set reviews(List<PlaceReview> _reviews) {
    asJsObject(this)['reviews'] = __codec29.encode(_reviews);
  }

  List<PlaceReview> get reviews =>
      __codec29.decode(asJsObject(this)['reviews']);
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
  set _utc_offset(num __utc_offset) {
    asJsObject(this)['utc_offset'] = __utc_offset;
  }

  num get _utc_offset => asJsObject(this)['utc_offset'];
  num get utcOffset => _utc_offset;
  set utcOffset(num utcOffset) {
    _utc_offset = utcOffset;
  }

  set vicinity(String _vicinity) {
    asJsObject(this)['vicinity'] = _vicinity;
  }

  String get vicinity => asJsObject(this)['vicinity'];
  set website(String _website) {
    asJsObject(this)['website'] = _website;
  }

  String get website => asJsObject(this)['website'];
}

@GeneratedFrom(_PlaceReview)
@anonymous
class PlaceReview extends JsInterface {
  PlaceReview() : this.created(JsObject(context['Object']));
  PlaceReview.created(JsObject o) : super.created(o);

  set aspects(List<PlaceAspectRating> _aspects) {
    asJsObject(this)['aspects'] = __codec24.encode(_aspects);
  }

  List<PlaceAspectRating> get aspects =>
      __codec24.decode(asJsObject(this)['aspects']);
  set _author_name(String __author_name) {
    asJsObject(this)['author_name'] = __author_name;
  }

  String get _author_name => asJsObject(this)['author_name'];
  String get authorName => _author_name;
  set authorName(String authorName) {
    _author_name = authorName;
  }

  set _author_url(String __author_url) {
    asJsObject(this)['author_url'] = __author_url;
  }

  String get _author_url => asJsObject(this)['author_url'];
  String get authorUrl => _author_url;
  set authorUrl(String authorUrl) {
    _author_url = authorUrl;
  }

  set language(String _language) {
    asJsObject(this)['language'] = _language;
  }

  String get language => asJsObject(this)['language'];
  set text(String _text) {
    asJsObject(this)['text'] = _text;
  }

  String get text => asJsObject(this)['text'];
}

@GeneratedFrom(_PlaceSearchPagination)
@anonymous
class PlaceSearchPagination extends JsInterface {
  PlaceSearchPagination() : this.created(JsObject(context['Object']));
  PlaceSearchPagination.created(JsObject o) : super.created(o);

  void nextPage() {
    asJsObject(this).callMethod('nextPage');
  }

  set hasNextPage(bool _hasNextPage) {
    asJsObject(this)['hasNextPage'] = _hasNextPage;
  }

  bool get hasNextPage => asJsObject(this)['hasNextPage'];
}

@GeneratedFrom(_PlaceSearchRequest)
@anonymous
class PlaceSearchRequest extends JsInterface {
  PlaceSearchRequest() : this.created(JsObject(context['Object']));
  PlaceSearchRequest.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set keyword(String _keyword) {
    asJsObject(this)['keyword'] = _keyword;
  }

  String get keyword => asJsObject(this)['keyword'];
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec19.encode(_location);
  }

  LatLng get location => __codec19.decode(asJsObject(this)['location']);
  set maxPriceLevel(num _maxPriceLevel) {
    asJsObject(this)['maxPriceLevel'] = _maxPriceLevel;
  }

  num get maxPriceLevel => asJsObject(this)['maxPriceLevel'];
  set minPriceLevel(num _minPriceLevel) {
    asJsObject(this)['minPriceLevel'] = _minPriceLevel;
  }

  num get minPriceLevel => asJsObject(this)['minPriceLevel'];
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set openNow(bool _openNow) {
    asJsObject(this)['openNow'] = _openNow;
  }

  bool get openNow => asJsObject(this)['openNow'];
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set rankBy(RankBy _rankBy) {
    asJsObject(this)['rankBy'] = __codec30.encode(_rankBy);
  }

  RankBy get rankBy => __codec30.decode(asJsObject(this)['rankBy']);
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
}

@GeneratedFrom(_PlacesService)
@JsName('google.maps.places.PlacesService')
class PlacesService extends JsInterface {
  PlacesService(dynamic /*DivElement|GMap*/ attrContainer)
      : this.created(JsObject(
            context['google']['maps']['places']['PlacesService'] as JsFunction,
            [
              (ChainedCodec()
                    ..add(IdentityCodec<DivElement>())
                    ..add(JsInterfaceCodec<GMap>(
                        (o) => GMap.created(o),
                        (o) =>
                            o != null &&
                            o.instanceof(context['google']['maps']['Map']
                                as JsFunction))))
                  .encode(attrContainer)
            ]));
  PlacesService.created(JsObject o) : super.created(o);
  void getDetails(PlaceDetailsRequest request,
      callback(PlaceResult p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod(
        'getDetails', [__codec31.encode(request), __codec32.encode(callback)]);
  }

  void nearbySearch(
      PlaceSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2,
          PlaceSearchPagination p3)) {
    asJsObject(this).callMethod('nearbySearch',
        [__codec33.encode(request), __codec36.encode(callback)]);
  }

  void _radarSearch(RadarSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2, [_])) {
    asJsObject(this).callMethod(
        'radarSearch', [__codec37.encode(request), __codec38.encode(callback)]);
  }

  void radarSearch(RadarSearchRequest request,
          callback(List<PlaceResult> p1, PlacesServiceStatus p2)) =>
      _radarSearch(request, (p1, p2, [_]) => callback(p1, p2));

  void textSearch(
      TextSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2,
          PlaceSearchPagination p3)) {
    asJsObject(this).callMethod(
        'textSearch', [__codec39.encode(request), __codec36.encode(callback)]);
  }
}

class PlacesServiceStatus extends JsEnum {
  static final values = <PlacesServiceStatus>[
    INVALID_REQUEST,
    OK,
    OVER_QUERY_LIMIT,
    REQUEST_DENIED,
    UNKNOWN_ERROR,
    ZERO_RESULTS
  ];
  static final INVALID_REQUEST = PlacesServiceStatus._(
      'INVALID_REQUEST',
      context['google']['maps']['places']['PlacesServiceStatus']
          ['INVALID_REQUEST']);
  static final OK = PlacesServiceStatus._(
      'OK', context['google']['maps']['places']['PlacesServiceStatus']['OK']);
  static final OVER_QUERY_LIMIT = PlacesServiceStatus._(
      'OVER_QUERY_LIMIT',
      context['google']['maps']['places']['PlacesServiceStatus']
          ['OVER_QUERY_LIMIT']);
  static final REQUEST_DENIED = PlacesServiceStatus._(
      'REQUEST_DENIED',
      context['google']['maps']['places']['PlacesServiceStatus']
          ['REQUEST_DENIED']);
  static final UNKNOWN_ERROR = PlacesServiceStatus._(
      'UNKNOWN_ERROR',
      context['google']['maps']['places']['PlacesServiceStatus']
          ['UNKNOWN_ERROR']);
  static final ZERO_RESULTS = PlacesServiceStatus._(
      'ZERO_RESULTS',
      context['google']['maps']['places']['PlacesServiceStatus']
          ['ZERO_RESULTS']);
  final String _name;
  PlacesServiceStatus._(this._name, o) : super.created(o);

  @override
  String toString() => 'PlacesServiceStatus.$_name';
}

@GeneratedFrom(_PredictionSubstring)
@anonymous
class PredictionSubstring extends JsInterface {
  PredictionSubstring() : this.created(JsObject(context['Object']));
  PredictionSubstring.created(JsObject o) : super.created(o);

  set length(num _length) {
    asJsObject(this)['length'] = _length;
  }

  num get length => asJsObject(this)['length'];
  set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }

  num get offset => asJsObject(this)['offset'];
}

@GeneratedFrom(_PredictionTerm)
@anonymous
class PredictionTerm extends JsInterface {
  PredictionTerm() : this.created(JsObject(context['Object']));
  PredictionTerm.created(JsObject o) : super.created(o);

  set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }

  num get offset => asJsObject(this)['offset'];
  set value(String _value) {
    asJsObject(this)['value'] = _value;
  }

  String get value => asJsObject(this)['value'];
}

@GeneratedFrom(_QueryAutocompletePrediction)
@anonymous
class QueryAutocompletePrediction extends JsInterface {
  QueryAutocompletePrediction() : this.created(JsObject(context['Object']));
  QueryAutocompletePrediction.created(JsObject o) : super.created(o);

  set description(String _description) {
    asJsObject(this)['description'] = _description;
  }

  String get description => asJsObject(this)['description'];
  set _matched_substrings(List<PredictionSubstring> __matched_substrings) {
    asJsObject(this)['matched_substrings'] =
        __codec6.encode(__matched_substrings);
  }

  List<PredictionSubstring> get _matched_substrings =>
      __codec6.decode(asJsObject(this)['matched_substrings']);
  List<PredictionSubstring> get matchedSubstrings => _matched_substrings;
  set matchedSubstrings(List<PredictionSubstring> matchedSubstrings) {
    _matched_substrings = matchedSubstrings;
  }

  set _place_id(String __place_id) {
    asJsObject(this)['place_id'] = __place_id;
  }

  String get _place_id => asJsObject(this)['place_id'];
  String get placeId => _place_id;
  set placeId(String placeId) {
    _place_id = placeId;
  }

  set terms(List<PredictionTerm> _terms) {
    asJsObject(this)['terms'] = __codec8.encode(_terms);
  }

  List<PredictionTerm> get terms => __codec8.decode(asJsObject(this)['terms']);
}

@GeneratedFrom(_QueryAutocompletionRequest)
@anonymous
class QueryAutocompletionRequest extends JsInterface {
  QueryAutocompletionRequest() : this.created(JsObject(context['Object']));
  QueryAutocompletionRequest.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set input(String _input) {
    asJsObject(this)['input'] = _input;
  }

  String get input => asJsObject(this)['input'];
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec19.encode(_location);
  }

  LatLng get location => __codec19.decode(asJsObject(this)['location']);
  set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }

  num get offset => asJsObject(this)['offset'];
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
}

@GeneratedFrom(_RadarSearchRequest)
@anonymous
class RadarSearchRequest extends JsInterface {
  RadarSearchRequest() : this.created(JsObject(context['Object']));
  RadarSearchRequest.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set keyword(String _keyword) {
    asJsObject(this)['keyword'] = _keyword;
  }

  String get keyword => asJsObject(this)['keyword'];
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec19.encode(_location);
  }

  LatLng get location => __codec19.decode(asJsObject(this)['location']);
  set name(String _name) {
    asJsObject(this)['name'] = _name;
  }

  String get name => asJsObject(this)['name'];
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
}

class RankBy extends JsEnum {
  static final values = <RankBy>[DISTANCE, PROMINENCE];
  static final DISTANCE = RankBy._(
      'DISTANCE', context['google']['maps']['places']['RankBy']['DISTANCE']);
  static final PROMINENCE = RankBy._('PROMINENCE',
      context['google']['maps']['places']['RankBy']['PROMINENCE']);
  final String _name;
  RankBy._(this._name, o) : super.created(o);

  @override
  String toString() => 'RankBy.$_name';
}

@GeneratedFrom(_SearchBox)
@JsName('google.maps.places.SearchBox')
class SearchBox extends MVCObject {
  SearchBox(InputElement inputField, [SearchBoxOptions opts])
      : this.created(JsObject(context['google']['maps']['places']['SearchBox'],
            [inputField, __codec40.encode(opts)]));
  SearchBox.created(JsObject o) : super.created(o);

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() =>
      __codec1.decode(asJsObject(this).callMethod('getBounds'));
  List<PlaceResult> get places => _getPlaces();
  List<PlaceResult> _getPlaces() =>
      __codec34.decode(asJsObject(this).callMethod('getPlaces'));
  set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod('setBounds', [__codec1.encode(bounds)]);
  }

  Stream get onPlacesChanged => getStream(this, 'places_changed');
}

@GeneratedFrom(_SearchBoxOptions)
@anonymous
class SearchBoxOptions extends JsInterface {
  SearchBoxOptions() : this.created(JsObject(context['Object']));
  SearchBoxOptions.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
}

@GeneratedFrom(_TextSearchRequest)
@anonymous
class TextSearchRequest extends JsInterface {
  TextSearchRequest() : this.created(JsObject(context['Object']));
  TextSearchRequest.created(JsObject o) : super.created(o);

  set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] = __codec1.encode(_bounds);
  }

  LatLngBounds get bounds => __codec1.decode(asJsObject(this)['bounds']);
  set location(LatLng _location) {
    asJsObject(this)['location'] = __codec19.encode(_location);
  }

  LatLng get location => __codec19.decode(asJsObject(this)['location']);
  set query(String _query) {
    asJsObject(this)['query'] = _query;
  }

  String get query => asJsObject(this)['query'];
  set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }

  num get radius => asJsObject(this)['radius'];
  set types(List<String> _types) {
    asJsObject(this)['types'] = __codec4.encode(_types);
  }

  List<String> get types => __codec4.decode(asJsObject(this)['types']);
}

/// codec for google_maps.src.places.AutocompleteOptions
final __codec0 = JsInterfaceCodec<AutocompleteOptions>(
    (o) => AutocompleteOptions.created(o));

/// codec for google_maps.src.LatLngBounds
final __codec1 = JsInterfaceCodec<LatLngBounds>((o) => LatLngBounds.created(o));

/// codec for google_maps.src.places.PlaceResult
final __codec2 = JsInterfaceCodec<PlaceResult>((o) => PlaceResult.created(o));

/// codec for google_maps.src.places.ComponentRestrictions
final __codec3 = JsInterfaceCodec<ComponentRestrictions>(
    (o) => ComponentRestrictions.created(o));

/// codec for dart.core.List<String>
final __codec4 = JsListCodec<String>(null);

/// codec for google_maps.src.places.PredictionSubstring
final __codec5 = JsInterfaceCodec<PredictionSubstring>(
    (o) => PredictionSubstring.created(o));

/// codec for dart.core.List<PredictionSubstring>
final __codec6 = JsListCodec<PredictionSubstring>(__codec5);

/// codec for google_maps.src.places.PredictionTerm
final __codec7 =
    JsInterfaceCodec<PredictionTerm>((o) => PredictionTerm.created(o));

/// codec for dart.core.List<PredictionTerm>
final __codec8 = JsListCodec<PredictionTerm>(__codec7);

/// codec for google_maps.src.places.AutocompletionRequest
final __codec9 = JsInterfaceCodec<AutocompletionRequest>(
    (o) => AutocompletionRequest.created(o));

/// codec for dart.core.dynamic
final __codec10 = DynamicCodec();

/// codec for google_maps.src.places.AutocompletePrediction
final __codec11 = JsInterfaceCodec<AutocompletePrediction>(
    (o) => AutocompletePrediction.created(o));

/// codec for dart.core.List<AutocompletePrediction>
final __codec12 = JsListCodec<AutocompletePrediction>(__codec11);

/// codec for google_maps.src.places.PlacesServiceStatus
final __codec13 = BiMapCodec<PlacesServiceStatus, dynamic>(
    Map<PlacesServiceStatus, dynamic>.fromIterable(PlacesServiceStatus.values,
        value: asJs));

/// codec for google_maps.src.places.(List<AutocompletePrediction>, PlacesServiceStatus) → dynamic
final __codec14 = FunctionCodec<
    Function> /*<(List<AutocompletePrediction>, PlacesServiceStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec10.encode(f(__codec12.decode(p$p1), __codec13.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec10.decode(f is JsFunction
      ? f.apply([__codec12.encode(p$p1), __codec13.encode(p$p2)])
      : Function.apply(f, [__codec12.encode(p$p1), __codec13.encode(p$p2)])),
);

/// codec for google_maps.src.places.QueryAutocompletionRequest
final __codec15 = JsInterfaceCodec<QueryAutocompletionRequest>(
    (o) => QueryAutocompletionRequest.created(o));

/// codec for google_maps.src.places.QueryAutocompletePrediction
final __codec16 = JsInterfaceCodec<QueryAutocompletePrediction>(
    (o) => QueryAutocompletePrediction.created(o));

/// codec for dart.core.List<QueryAutocompletePrediction>
final __codec17 = JsListCodec<QueryAutocompletePrediction>(__codec16);

/// codec for google_maps.src.places.(List<QueryAutocompletePrediction>, PlacesServiceStatus) → dynamic
final __codec18 = FunctionCodec<
    Function> /*<(List<QueryAutocompletePrediction>, PlacesServiceStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec10.encode(f(__codec17.decode(p$p1), __codec13.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec10.decode(f is JsFunction
      ? f.apply([__codec17.encode(p$p1), __codec13.encode(p$p2)])
      : Function.apply(f, [__codec17.encode(p$p1), __codec13.encode(p$p2)])),
);

/// codec for google_maps.src.LatLng
final __codec19 = JsInterfaceCodec<LatLng>((o) => LatLng.created(o));

/// codec for google_maps.src.places.PhotoOptions
final __codec20 =
    JsInterfaceCodec<PhotoOptions>((o) => PhotoOptions.created(o));

/// codec for google_maps.src.GeocoderAddressComponent
final __codec21 = JsInterfaceCodec<GeocoderAddressComponent>(
    (o) => GeocoderAddressComponent.created(o));

/// codec for dart.core.List<GeocoderAddressComponent>
final __codec22 = JsListCodec<GeocoderAddressComponent>(__codec21);

/// codec for google_maps.src.places.PlaceAspectRating
final __codec23 =
    JsInterfaceCodec<PlaceAspectRating>((o) => PlaceAspectRating.created(o));

/// codec for dart.core.List<PlaceAspectRating>
final __codec24 = JsListCodec<PlaceAspectRating>(__codec23);

/// codec for google_maps.src.places.PlaceGeometry
final __codec25 =
    JsInterfaceCodec<PlaceGeometry>((o) => PlaceGeometry.created(o));

/// codec for google_maps.src.places.PlacePhoto
final __codec26 = JsInterfaceCodec<PlacePhoto>((o) => PlacePhoto.created(o));

/// codec for dart.core.List<PlacePhoto>
final __codec27 = JsListCodec<PlacePhoto>(__codec26);

/// codec for google_maps.src.places.PlaceReview
final __codec28 = JsInterfaceCodec<PlaceReview>((o) => PlaceReview.created(o));

/// codec for dart.core.List<PlaceReview>
final __codec29 = JsListCodec<PlaceReview>(__codec28);

/// codec for google_maps.src.places.RankBy
final __codec30 = BiMapCodec<RankBy, dynamic>(
    Map<RankBy, dynamic>.fromIterable(RankBy.values, value: asJs));

/// codec for google_maps.src.places.PlaceDetailsRequest
final __codec31 = JsInterfaceCodec<PlaceDetailsRequest>(
    (o) => PlaceDetailsRequest.created(o));

/// codec for google_maps.src.places.(PlaceResult, PlacesServiceStatus) → dynamic
final __codec32 =
    FunctionCodec<Function> /*<(PlaceResult, PlacesServiceStatus) → dynamic>*/(
  (f) => (p$p1, p$p2) =>
      __codec10.encode(f(__codec2.decode(p$p1), __codec13.decode(p$p2))),
  (f) => (p$p1, p$p2) => __codec10.decode(f is JsFunction
      ? f.apply([__codec2.encode(p$p1), __codec13.encode(p$p2)])
      : Function.apply(f, [__codec2.encode(p$p1), __codec13.encode(p$p2)])),
);

/// codec for google_maps.src.places.PlaceSearchRequest
final __codec33 =
    JsInterfaceCodec<PlaceSearchRequest>((o) => PlaceSearchRequest.created(o));

/// codec for dart.core.List<PlaceResult>
final __codec34 = JsListCodec<PlaceResult>(__codec2);

/// codec for google_maps.src.places.PlaceSearchPagination
final __codec35 = JsInterfaceCodec<PlaceSearchPagination>(
    (o) => PlaceSearchPagination.created(o));

/// codec for google_maps.src.places.(List<PlaceResult>, PlacesServiceStatus, PlaceSearchPagination) → dynamic
final __codec36 = FunctionCodec<
    Function> /*<(List<PlaceResult>, PlacesServiceStatus, PlaceSearchPagination) → dynamic>*/(
  (f) => (p$p1, p$p2, p$p3) => __codec10.encode(f(
      __codec34.decode(p$p1), __codec13.decode(p$p2), __codec35.decode(p$p3))),
  (f) => (p$p1, p$p2, p$p3) => __codec10.decode(f is JsFunction
      ? f.apply([
          __codec34.encode(p$p1),
          __codec13.encode(p$p2),
          __codec35.encode(p$p3)
        ])
      : Function.apply(f, [
          __codec34.encode(p$p1),
          __codec13.encode(p$p2),
          __codec35.encode(p$p3)
        ])),
);

/// codec for google_maps.src.places.RadarSearchRequest
final __codec37 =
    JsInterfaceCodec<RadarSearchRequest>((o) => RadarSearchRequest.created(o));

/// codec for google_maps.src.places.(List<PlaceResult>, PlacesServiceStatus, [dynamic]) → dynamic
final __codec38 = FunctionCodec<
    Function> /*<(List<PlaceResult>, PlacesServiceStatus, [dynamic]) → dynamic>*/(
  (f) => (p$p1, p$p2, [p$_]) => __codec10.encode(
      f(__codec34.decode(p$p1), __codec13.decode(p$p2), __codec10.decode(p$_))),
  (f) => (p$p1, p$p2, [p$_]) => __codec10.decode(f is JsFunction
      ? f.apply([
          __codec34.encode(p$p1),
          __codec13.encode(p$p2),
          __codec10.encode(p$_)
        ])
      : Function.apply(f, [
          __codec34.encode(p$p1),
          __codec13.encode(p$p2),
          __codec10.encode(p$_)
        ])),
);

/// codec for google_maps.src.places.TextSearchRequest
final __codec39 =
    JsInterfaceCodec<TextSearchRequest>((o) => TextSearchRequest.created(o));

/// codec for google_maps.src.places.SearchBoxOptions
final __codec40 =
    JsInterfaceCodec<SearchBoxOptions>((o) => SearchBoxOptions.created(o));
