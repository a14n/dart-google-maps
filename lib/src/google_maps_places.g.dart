// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-20T20:55:07.570Z

part of google_maps.places;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Autocomplete
// **************************************************************************

@JsName('google.maps.places.Autocomplete')
class Autocomplete extends MVCObject implements _Autocomplete {
  Autocomplete.created(JsObject o) : super.created(o);
  Autocomplete(InputElement inputField, [AutocompleteOptions opts])
      : this.created(new JsObject(getPath('google.maps.places.Autocomplete'), [
        inputField,
        ((e) => e == null ? null : asJsObject(e))(opts)
      ]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this).callMethod('getBounds'));
  PlaceResult get place => _getPlace();
  PlaceResult _getPlace() => ((e) => e == null
      ? null
      : new PlaceResult.created(e))(asJsObject(this).callMethod('getPlace'));
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod(
        'setBounds', [((e) => e == null ? null : asJsObject(e))(bounds)]);
  }
  void set componentRestrictions(ComponentRestrictions restrictions) =>
      _setComponentRestrictions(restrictions);
  void _setComponentRestrictions(ComponentRestrictions restrictions) {
    asJsObject(this).callMethod('setComponentRestrictions',
        [((e) => e == null ? null : asJsObject(e))(restrictions)]);
  }
  void set types(List<String> types) => _setTypes(types);
  void _setTypes(List<String> types) {
    asJsObject(this).callMethod('setTypes', [
      ((e) {
        if (e == null) return null;
        if (e is JsInterface) return asJsObject(e);
        return new JsArray.from(e);
      })(types)
    ]);
  }

  Stream get onPlaceChanged =>
      getStream(this, #onPlaceChanged, "place_changed");
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _AutocompleteOptions
// **************************************************************************

@anonymous
class AutocompleteOptions extends JsInterface implements _AutocompleteOptions {
  AutocompleteOptions.created(JsObject o) : super.created(o);
  AutocompleteOptions() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
  void set componentRestrictions(ComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        ((e) => e == null ? null : asJsObject(e))(_componentRestrictions);
  }
  ComponentRestrictions get componentRestrictions =>
      ((e) => e == null ? null : new ComponentRestrictions.created(e))(
          asJsObject(this)['componentRestrictions']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
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
    asJsObject(this)['matched_substrings'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(__matched_substrings);
  }
  List<PredictionSubstring> get _matched_substrings => ((e) {
    if (e == null) return null;
    return new JsList<PredictionSubstring>.created(e,
        new JsInterfaceCodec<PredictionSubstring>((o) =>
            ((e) => e == null ? null : new PredictionSubstring.created(e))(o)));
  })(asJsObject(this)['matched_substrings']);
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
    asJsObject(this)['terms'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_terms);
  }
  List<PredictionTerm> get terms => ((e) {
    if (e == null) return null;
    return new JsList<PredictionTerm>.created(e,
        new JsInterfaceCodec<PredictionTerm>((o) =>
            ((e) => e == null ? null : new PredictionTerm.created(e))(o)));
  })(asJsObject(this)['terms']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
}

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
  AutocompleteService() : this.created(
          new JsObject(getPath('google.maps.places.AutocompleteService')));

  void getPlacePredictions(AutocompletionRequest request,
      callback(List<AutocompletePrediction> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getPlacePredictions', [
      ((e) => e == null ? null : asJsObject(e))(request),
      ((f) {
        if (f == null) return null;
        return (p_p1, p_p2) {
          p_p1 = new JsListCodec<AutocompletePrediction>(
              new JsInterfaceCodec<AutocompletePrediction>((o) => ((e) =>
                      e == null ? null : new AutocompletePrediction.created(e))(
                  o))).decode(p_p1);
          p_p2 = new BiMapCodec<PlacesServiceStatus, dynamic>({
            PlacesServiceStatus.INVALID_REQUEST:
                getPath('google.maps.places.PlacesServiceStatus')[
                'INVALID_REQUEST'],
            PlacesServiceStatus.OK:
                getPath('google.maps.places.PlacesServiceStatus')['OK'],
            PlacesServiceStatus.OVER_QUERY_LIMIT:
                getPath('google.maps.places.PlacesServiceStatus')[
                'OVER_QUERY_LIMIT'],
            PlacesServiceStatus.REQUEST_DENIED:
                getPath('google.maps.places.PlacesServiceStatus')[
                'REQUEST_DENIED'],
            PlacesServiceStatus.UNKNOWN_ERROR:
                getPath('google.maps.places.PlacesServiceStatus')[
                'UNKNOWN_ERROR'],
            PlacesServiceStatus.ZERO_RESULTS:
                getPath('google.maps.places.PlacesServiceStatus')[
                'ZERO_RESULTS']
          }).decode(p_p2);
          return f(p_p1, p_p2);
        };
      })(callback)
    ]);
  }
  void getQueryPredictions(QueryAutocompletionRequest request,
      callback(List<QueryAutocompletePrediction> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getQueryPredictions', [
      ((e) => e == null ? null : asJsObject(e))(request),
      ((f) {
        if (f == null) return null;
        return (p_p1, p_p2) {
          p_p1 = new JsListCodec<QueryAutocompletePrediction>(
                  new JsInterfaceCodec<QueryAutocompletePrediction>(
                      (o) => ((e) => e == null
                          ? null
                          : new QueryAutocompletePrediction.created(e))(o)))
              .decode(p_p1);
          p_p2 = new BiMapCodec<PlacesServiceStatus, dynamic>({
            PlacesServiceStatus.INVALID_REQUEST:
                getPath('google.maps.places.PlacesServiceStatus')[
                'INVALID_REQUEST'],
            PlacesServiceStatus.OK:
                getPath('google.maps.places.PlacesServiceStatus')['OK'],
            PlacesServiceStatus.OVER_QUERY_LIMIT:
                getPath('google.maps.places.PlacesServiceStatus')[
                'OVER_QUERY_LIMIT'],
            PlacesServiceStatus.REQUEST_DENIED:
                getPath('google.maps.places.PlacesServiceStatus')[
                'REQUEST_DENIED'],
            PlacesServiceStatus.UNKNOWN_ERROR:
                getPath('google.maps.places.PlacesServiceStatus')[
                'UNKNOWN_ERROR'],
            PlacesServiceStatus.ZERO_RESULTS:
                getPath('google.maps.places.PlacesServiceStatus')[
                'ZERO_RESULTS']
          }).decode(p_p2);
          return f(p_p1, p_p2);
        };
      })(callback)
    ]);
  }
}

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
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
  void set componentRestrictions(ComponentRestrictions _componentRestrictions) {
    asJsObject(this)['componentRestrictions'] =
        ((e) => e == null ? null : asJsObject(e))(_componentRestrictions);
  }
  ComponentRestrictions get componentRestrictions =>
      ((e) => e == null ? null : new ComponentRestrictions.created(e))(
          asJsObject(this)['componentRestrictions']);
  void set input(String _input) {
    asJsObject(this)['input'] = _input;
  }
  String get input => asJsObject(this)['input'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
  void set offset(num _offset) {
    asJsObject(this)['offset'] = _offset;
  }
  num get offset => asJsObject(this)['offset'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
}

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
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
  void set viewport(LatLngBounds _viewport) {
    asJsObject(this)['viewport'] =
        ((e) => e == null ? null : asJsObject(e))(_viewport);
  }
  LatLngBounds get viewport => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['viewport']);
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlacePhoto
// **************************************************************************

@anonymous
class PlacePhoto extends JsInterface implements _PlacePhoto {
  PlacePhoto.created(JsObject o) : super.created(o);
  PlacePhoto() : this.created(new JsObject(context['Object']));

  String getUrl(PhotoOptions opts) => asJsObject(this).callMethod(
      'getUrl', [((e) => e == null ? null : asJsObject(e))(opts)]);

  void set height(num _height) {
    asJsObject(this)['height'] = _height;
  }
  num get height => asJsObject(this)['height'];
  void set _html_attributions(List<String> __html_attributions) {
    asJsObject(this)['html_attributions'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(__html_attributions);
  }
  List<String> get _html_attributions =>
      asJsObject(this)['html_attributions'] as JsArray;
  List<String> get htmlAttributions => _html_attributions;
  void set htmlAttributions(List<String> htmlAttributions) {
    _html_attributions = htmlAttributions;
  }
  void set width(num _width) {
    asJsObject(this)['width'] = _width;
  }
  num get width => asJsObject(this)['width'];
}

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
    asJsObject(this)['address_components'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(__address_components);
  }
  List<GeocoderAddressComponent> get _address_components => ((e) {
    if (e == null) return null;
    return new JsList<GeocoderAddressComponent>.created(e,
        new JsInterfaceCodec<GeocoderAddressComponent>((o) => ((e) =>
            e == null ? null : new GeocoderAddressComponent.created(e))(o)));
  })(asJsObject(this)['address_components']);
  List<GeocoderAddressComponent> get addressComponents => _address_components;
  void set addressComponents(List<GeocoderAddressComponent> addressComponents) {
    _address_components = addressComponents;
  }
  void set aspects(List<PlaceAspectRating> _aspects) {
    asJsObject(this)['aspects'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_aspects);
  }
  List<PlaceAspectRating> get aspects => ((e) {
    if (e == null) return null;
    return new JsList<PlaceAspectRating>.created(e,
        new JsInterfaceCodec<PlaceAspectRating>((o) =>
            ((e) => e == null ? null : new PlaceAspectRating.created(e))(o)));
  })(asJsObject(this)['aspects']);
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
    asJsObject(this)['geometry'] =
        ((e) => e == null ? null : asJsObject(e))(_geometry);
  }
  PlaceGeometry get geometry => ((e) => e == null
      ? null
      : new PlaceGeometry.created(e))(asJsObject(this)['geometry']);
  void set _html_attributions(List<String> __html_attributions) {
    asJsObject(this)['html_attributions'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(__html_attributions);
  }
  List<String> get _html_attributions =>
      asJsObject(this)['html_attributions'] as JsArray;
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
    asJsObject(this)['photos'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_photos);
  }
  List<PlacePhoto> get photos => ((e) {
    if (e == null) return null;
    return new JsList<PlacePhoto>.created(e, new JsInterfaceCodec<PlacePhoto>(
        (o) => ((e) => e == null ? null : new PlacePhoto.created(e))(o)));
  })(asJsObject(this)['photos']);
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
    asJsObject(this)['reviews'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_reviews);
  }
  List<PlaceReview> get reviews => ((e) {
    if (e == null) return null;
    return new JsList<PlaceReview>.created(e, new JsInterfaceCodec<PlaceReview>(
        (o) => ((e) => e == null ? null : new PlaceReview.created(e))(o)));
  })(asJsObject(this)['reviews']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
  void set url(String _url) {
    asJsObject(this)['url'] = _url;
  }
  String get url => asJsObject(this)['url'];
  void set vicinity(String _vicinity) {
    asJsObject(this)['vicinity'] = _vicinity;
  }
  String get vicinity => asJsObject(this)['vicinity'];
  void set website(String _website) {
    asJsObject(this)['website'] = _website;
  }
  String get website => asJsObject(this)['website'];
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlaceReview
// **************************************************************************

@anonymous
class PlaceReview extends JsInterface implements _PlaceReview {
  PlaceReview.created(JsObject o) : super.created(o);
  PlaceReview() : this.created(new JsObject(context['Object']));

  void set aspects(List<PlaceAspectRating> _aspects) {
    asJsObject(this)['aspects'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_aspects);
  }
  List<PlaceAspectRating> get aspects => ((e) {
    if (e == null) return null;
    return new JsList<PlaceAspectRating>.created(e,
        new JsInterfaceCodec<PlaceAspectRating>((o) =>
            ((e) => e == null ? null : new PlaceAspectRating.created(e))(o)));
  })(asJsObject(this)['aspects']);
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
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
  void set keyword(String _keyword) {
    asJsObject(this)['keyword'] = _keyword;
  }
  String get keyword => asJsObject(this)['keyword'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
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
    asJsObject(this)['rankBy'] = ((e) {
      if (e == null) return null;
      final path = getPath('google.maps.places.RankBy');
      if (e == RankBy.DISTANCE) return path['DISTANCE'];
      if (e == RankBy.PROMINENCE) return path['PROMINENCE'];
    })(_rankBy);
  }
  RankBy get rankBy => ((e) {
    if (e == null) return null;
    final path = getPath('google.maps.places.RankBy');
    if (e == path['DISTANCE']) return RankBy.DISTANCE;
    if (e == path['PROMINENCE']) return RankBy.PROMINENCE;
  })(asJsObject(this)['rankBy']);
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _PlacesService
// **************************************************************************

@JsName('google.maps.places.PlacesService')
class PlacesService extends JsInterface implements _PlacesService {
  PlacesService.created(JsObject o) : super.created(o);
  PlacesService(dynamic /*HTMLDivElement|GMap*/ attrContainer)
      : this.created(new JsObject(
          getPath('google.maps.places.PlacesService'), [toJs(attrContainer)]));

  void getDetails(PlaceDetailsRequest request,
      callback(PlaceResult p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('getDetails', [
      ((e) => e == null ? null : asJsObject(e))(request),
      ((f) {
        if (f == null) return null;
        return (p_p1, p_p2) {
          p_p1 = new JsInterfaceCodec<PlaceResult>((o) =>
                  ((e) => e == null ? null : new PlaceResult.created(e))(o))
              .decode(p_p1);
          p_p2 = new BiMapCodec<PlacesServiceStatus, dynamic>({
            PlacesServiceStatus.INVALID_REQUEST:
                getPath('google.maps.places.PlacesServiceStatus')[
                'INVALID_REQUEST'],
            PlacesServiceStatus.OK:
                getPath('google.maps.places.PlacesServiceStatus')['OK'],
            PlacesServiceStatus.OVER_QUERY_LIMIT:
                getPath('google.maps.places.PlacesServiceStatus')[
                'OVER_QUERY_LIMIT'],
            PlacesServiceStatus.REQUEST_DENIED:
                getPath('google.maps.places.PlacesServiceStatus')[
                'REQUEST_DENIED'],
            PlacesServiceStatus.UNKNOWN_ERROR:
                getPath('google.maps.places.PlacesServiceStatus')[
                'UNKNOWN_ERROR'],
            PlacesServiceStatus.ZERO_RESULTS:
                getPath('google.maps.places.PlacesServiceStatus')[
                'ZERO_RESULTS']
          }).decode(p_p2);
          return f(p_p1, p_p2);
        };
      })(callback)
    ]);
  }
  void nearbySearch(PlaceSearchRequest request, callback(
      List<PlaceResult> p1, PlacesServiceStatus p2, PlaceSearchPagination p3)) {
    asJsObject(this).callMethod('nearbySearch', [
      ((e) => e == null ? null : asJsObject(e))(request),
      ((f) {
        if (f == null) return null;
        return (p_p1, p_p2, p_p3) {
          p_p1 = new JsListCodec<PlaceResult>(new JsInterfaceCodec<PlaceResult>(
              (o) => ((e) => e == null ? null : new PlaceResult.created(e))(
                  o))).decode(p_p1);
          p_p2 = new BiMapCodec<PlacesServiceStatus, dynamic>({
            PlacesServiceStatus.INVALID_REQUEST:
                getPath('google.maps.places.PlacesServiceStatus')[
                'INVALID_REQUEST'],
            PlacesServiceStatus.OK:
                getPath('google.maps.places.PlacesServiceStatus')['OK'],
            PlacesServiceStatus.OVER_QUERY_LIMIT:
                getPath('google.maps.places.PlacesServiceStatus')[
                'OVER_QUERY_LIMIT'],
            PlacesServiceStatus.REQUEST_DENIED:
                getPath('google.maps.places.PlacesServiceStatus')[
                'REQUEST_DENIED'],
            PlacesServiceStatus.UNKNOWN_ERROR:
                getPath('google.maps.places.PlacesServiceStatus')[
                'UNKNOWN_ERROR'],
            PlacesServiceStatus.ZERO_RESULTS:
                getPath('google.maps.places.PlacesServiceStatus')[
                'ZERO_RESULTS']
          }).decode(p_p2);
          p_p3 = new JsInterfaceCodec<PlaceSearchPagination>((o) => ((e) =>
                  e == null ? null : new PlaceSearchPagination.created(e))(o))
              .decode(p_p3);
          return f(p_p1, p_p2, p_p3);
        };
      })(callback)
    ]);
  }
  void radarSearch(RadarSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('radarSearch', [
      ((e) => e == null ? null : asJsObject(e))(request),
      ((f) {
        if (f == null) return null;
        return (p_p1, p_p2) {
          p_p1 = new JsListCodec<PlaceResult>(new JsInterfaceCodec<PlaceResult>(
              (o) => ((e) => e == null ? null : new PlaceResult.created(e))(
                  o))).decode(p_p1);
          p_p2 = new BiMapCodec<PlacesServiceStatus, dynamic>({
            PlacesServiceStatus.INVALID_REQUEST:
                getPath('google.maps.places.PlacesServiceStatus')[
                'INVALID_REQUEST'],
            PlacesServiceStatus.OK:
                getPath('google.maps.places.PlacesServiceStatus')['OK'],
            PlacesServiceStatus.OVER_QUERY_LIMIT:
                getPath('google.maps.places.PlacesServiceStatus')[
                'OVER_QUERY_LIMIT'],
            PlacesServiceStatus.REQUEST_DENIED:
                getPath('google.maps.places.PlacesServiceStatus')[
                'REQUEST_DENIED'],
            PlacesServiceStatus.UNKNOWN_ERROR:
                getPath('google.maps.places.PlacesServiceStatus')[
                'UNKNOWN_ERROR'],
            PlacesServiceStatus.ZERO_RESULTS:
                getPath('google.maps.places.PlacesServiceStatus')[
                'ZERO_RESULTS']
          }).decode(p_p2);
          return f(p_p1, p_p2);
        };
      })(callback)
    ]);
  }
  void textSearch(TextSearchRequest request,
      callback(List<PlaceResult> p1, PlacesServiceStatus p2)) {
    asJsObject(this).callMethod('textSearch', [
      ((e) => e == null ? null : asJsObject(e))(request),
      ((f) {
        if (f == null) return null;
        return (p_p1, p_p2) {
          p_p1 = new JsListCodec<PlaceResult>(new JsInterfaceCodec<PlaceResult>(
              (o) => ((e) => e == null ? null : new PlaceResult.created(e))(
                  o))).decode(p_p1);
          p_p2 = new BiMapCodec<PlacesServiceStatus, dynamic>({
            PlacesServiceStatus.INVALID_REQUEST:
                getPath('google.maps.places.PlacesServiceStatus')[
                'INVALID_REQUEST'],
            PlacesServiceStatus.OK:
                getPath('google.maps.places.PlacesServiceStatus')['OK'],
            PlacesServiceStatus.OVER_QUERY_LIMIT:
                getPath('google.maps.places.PlacesServiceStatus')[
                'OVER_QUERY_LIMIT'],
            PlacesServiceStatus.REQUEST_DENIED:
                getPath('google.maps.places.PlacesServiceStatus')[
                'REQUEST_DENIED'],
            PlacesServiceStatus.UNKNOWN_ERROR:
                getPath('google.maps.places.PlacesServiceStatus')[
                'UNKNOWN_ERROR'],
            PlacesServiceStatus.ZERO_RESULTS:
                getPath('google.maps.places.PlacesServiceStatus')[
                'ZERO_RESULTS']
          }).decode(p_p2);
          return f(p_p1, p_p2);
        };
      })(callback)
    ]);
  }
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
    asJsObject(this)['matched_substrings'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(__matched_substrings);
  }
  List<PredictionSubstring> get _matched_substrings => ((e) {
    if (e == null) return null;
    return new JsList<PredictionSubstring>.created(e,
        new JsInterfaceCodec<PredictionSubstring>((o) =>
            ((e) => e == null ? null : new PredictionSubstring.created(e))(o)));
  })(asJsObject(this)['matched_substrings']);
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
    asJsObject(this)['terms'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e.map(toJs));
    })(_terms);
  }
  List<PredictionTerm> get terms => ((e) {
    if (e == null) return null;
    return new JsList<PredictionTerm>.created(e,
        new JsInterfaceCodec<PredictionTerm>((o) =>
            ((e) => e == null ? null : new PredictionTerm.created(e))(o)));
  })(asJsObject(this)['terms']);
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
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
  void set input(String _input) {
    asJsObject(this)['input'] = _input;
  }
  String get input => asJsObject(this)['input'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
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
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
  void set keyword(String _keyword) {
    asJsObject(this)['keyword'] = _keyword;
  }
  String get keyword => asJsObject(this)['keyword'];
  void set location(LatLng _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
  void set name(String _name) {
    asJsObject(this)['name'] = _name;
  }
  String get name => asJsObject(this)['name'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _SearchBox
// **************************************************************************

@JsName('google.maps.places.SearchBox')
class SearchBox extends MVCObject implements _SearchBox {
  SearchBox.created(JsObject o) : super.created(o);
  SearchBox(InputElement inputField, [SearchBoxOptions opts]) : this.created(
          new JsObject(getPath('google.maps.places.SearchBox'), [
        inputField,
        ((e) => e == null ? null : asJsObject(e))(opts)
      ]));

  LatLngBounds get bounds => _getBounds();
  LatLngBounds _getBounds() => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this).callMethod('getBounds'));
  List<PlaceResult> get places => _getPlaces();
  List<PlaceResult> _getPlaces() => ((e) {
    if (e == null) return null;
    return new JsList<PlaceResult>.created(e, new JsInterfaceCodec<PlaceResult>(
        (o) => ((e) => e == null ? null : new PlaceResult.created(e))(o)));
  })(asJsObject(this).callMethod('getPlaces'));
  void set bounds(LatLngBounds bounds) => _setBounds(bounds);
  void _setBounds(LatLngBounds bounds) {
    asJsObject(this).callMethod(
        'setBounds', [((e) => e == null ? null : asJsObject(e))(bounds)]);
  }

  Stream get onPlacesChanged =>
      getStream(this, #onPlacesChanged, "places_changed");
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _SearchBoxOptions
// **************************************************************************

@anonymous
class SearchBoxOptions extends JsInterface implements _SearchBoxOptions {
  SearchBoxOptions.created(JsObject o) : super.created(o);
  SearchBoxOptions() : this.created(new JsObject(context['Object']));

  void set bounds(LatLngBounds _bounds) {
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
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
    asJsObject(this)['bounds'] =
        ((e) => e == null ? null : asJsObject(e))(_bounds);
  }
  LatLngBounds get bounds => ((e) => e == null
      ? null
      : new LatLngBounds.created(e))(asJsObject(this)['bounds']);
  void set location(LatLng _location) {
    asJsObject(this)['location'] =
        ((e) => e == null ? null : asJsObject(e))(_location);
  }
  LatLng get location => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this)['location']);
  void set query(String _query) {
    asJsObject(this)['query'] = _query;
  }
  String get query => asJsObject(this)['query'];
  void set radius(num _radius) {
    asJsObject(this)['radius'] = _radius;
  }
  num get radius => asJsObject(this)['radius'];
  void set types(List<String> _types) {
    asJsObject(this)['types'] = ((e) {
      if (e == null) return null;
      if (e is JsInterface) return asJsObject(e);
      return new JsArray.from(e);
    })(_types);
  }
  List<String> get types => asJsObject(this)['types'] as JsArray;
}
