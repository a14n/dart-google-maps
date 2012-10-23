library google_maps_places;

import 'dart:html' as html;
import 'package:js/js.dart' as js;
import 'optional.dart';
import 'jswrap.dart' as jsw;
import 'google_maps.dart';

class Autocomplete extends MVCObject {
  Autocomplete(html.InputElement inputField, [AutocompleteOptions opts]) : super.newInstance(maps.places.Autocomplete, [inputField, opts]);
  Autocomplete.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLngBounds get bounds => $.getBounds().map(LatLngBounds.INSTANCIATOR).value;
  PlaceResult get place => $.getPlace().map(PlaceResult.INSTANCIATOR).value;
  set bounds(LatLngBounds bounds) => $.setBounds(bounds);
  set componentRestrictions(ComponentRestrictions restrictions) => $.setComponentRestrictions(restrictions);
  set types(List<String> types) => $.setTypes(types);

  AutocompleteEvents get on => new AutocompleteEvents._(this);
}

class AutocompleteEvents {
  final Autocomplete _autocomplete;

  AutocompleteEvents._(Autocomplete this._autocomplete);

  NoArgsEventListenerAdder get placeChanged => new NoArgsEventListenerAdder(_autocomplete, "place_changed");
}

class AutocompleteOptions extends jsw.IsJsProxy {
  set bounds(LatLngBounds bounds) => $.bounds = bounds;
  set componentRestrictions(ComponentRestrictions componentRestrictions) => $.componentRestrictions = componentRestrictions;
  set types(List<String> types) => $.types = types;
}

class ComponentRestrictions extends jsw.IsJsProxy {
  String get country => $.country.value;
  set country(String country) => $.country = country;
}

class PlaceDetailsRequest extends jsw.IsJsProxy {
  String get reference => $.reference.value;
  set reference(String reference) => $.reference = reference;
}

class PlaceGeometry extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceGeometry.fromJsProxy(jsProxy);

  PlaceGeometry() : super();
  PlaceGeometry.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  LatLng get location => $.location.map(LatLng.INSTANCIATOR).value;
  set location(LatLng location) => $.location = location;
  LatLngBounds get viewport => $.viewport.map(LatLngBounds.INSTANCIATOR).value;
  set viewport(LatLngBounds viewport) => $.viewport = viewport;
}

class PlaceResult extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceResult.fromJsProxy(jsProxy);

  PlaceResult() : super();
  PlaceResult.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  List<GeocoderAddressComponent> get address_components => $.address_components.map((js.Proxy jsProxy) => new jsw.JsList<GeocoderAddressComponent>.fromJsProxy(jsProxy, GeocoderAddressComponent.INSTANCIATOR)).value;
  String get formatted_address => $.formatted_address.value;
  String get formatted_phone_number => $.formatted_phone_number.value;
  PlaceGeometry get geometry => $.geometry.map(PlaceGeometry.INSTANCIATOR).value;
  List<String> get html_attributions => $.html_attributions.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;
  String get icon => $.icon.value;
  String get id => $.id.value;
  String get international_phone_number => $.international_phone_number.value;
  String get name => $.name.value;
  num get rating => $.rating.value;
  String get reference => $.reference.value;
  List<String> get types => $.types.map((js.Proxy jsProxy) => new jsw.JsList<String>.fromJsProxy(jsProxy, null)).value;
  String get url => $.url.value;
  String get vicinity => $.vicinity.value;
  String get website => $.website.value;
}

class PlaceSearchRequest extends jsw.IsJsProxy {
  set bounds(LatLngBounds bounds) => $.bounds = bounds;
  set keyword(String keyword) => $.keyword = keyword;
  set location(LatLng location) => $.location = location;
  set name(String name) => $.name = name;
  set radius(num radius) => $.radius = radius;
  set rankBy(RankBy rankBy) => $.rankBy = rankBy;
  set types(List<String> types) => $.types = types;
}

class PlaceSearchPagination extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new PlaceSearchPagination.fromJsProxy(jsProxy);

  PlaceSearchPagination() : super();
  PlaceSearchPagination.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  void nextPage() { $.nextPage(); }

  bool get hasNextPage => $.hasNextPage.value;
}

class PlacesService extends jsw.IsJsProxy {
  PlacesService(Object attrContainer) : super.newInstance(maps.places.PlacesService, [attrContainer]) {
    if (!(attrContainer is html.DivElement || attrContainer is GMap)) {
      throw new IllegalArgumentException(attrContainer);
    }
  }

  void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status)) {
    $.getDetails(request, new jsw.Callback.once((Option<js.Proxy> result, Option<js.Proxy> status) => callback(result.map(PlaceResult.INSTANCIATOR).value, status.map(PlacesServiceStatus.find).value)));
  }
  void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    $.nearbySearch(request, new jsw.Callback.once((Option<js.Proxy> results, Option<js.Proxy> status, Option<js.Proxy> pagination) => callback(results.map((e) => new jsw.JsList<PlaceResult>.fromJsProxy(e, (e) => new PlaceResult.fromJsProxy(e))).value, status.map(PlacesServiceStatus.find).value, pagination.map(PlaceSearchPagination.INSTANCIATOR).value)));
  }
  void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    $.textSearch(request, new jsw.Callback.once((Option<js.Proxy> results, Option<js.Proxy> status) => callback(results.map((e) => new jsw.JsList<PlaceResult>.fromJsProxy(e, (e) => new PlaceResult.fromJsProxy(e))).value, status.map(PlacesServiceStatus.find).value)));
  }
}

class PlacesServiceStatus extends jsw.IsEnum<String> {
  static final INVALID_REQUEST= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.INVALID_REQUEST);
  static final OK= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.OK);
  static final OVER_QUERY_LIMIT= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.OVER_QUERY_LIMIT);
  static final REQUEST_DENIED= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.REQUEST_DENIED);
  static final UNKNOWN_ERROR= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.UNKNOWN_ERROR);
  static final ZERO_RESULTS= new PlacesServiceStatus._(maps.places.PlacesServiceStatus.ZERO_RESULTS);

  static final _INSTANCES = [INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS];

  static PlacesServiceStatus find(Object o) => findIn(_INSTANCES, o);

  PlacesServiceStatus._(String value) : super(value);

  bool operator ==(Object other) => value == (other is PlacesServiceStatus ? (other as PlacesServiceStatus).value : other);
}

class RankBy extends jsw.IsEnum<String> {
  static final DISTANCE= new RankBy._(maps.places.RankBy.DISTANCE);
  static final PROMINENCE= new RankBy._(maps.places.RankBy.PROMINENCE);

  static final _INSTANCES = [DISTANCE, PROMINENCE];

  static RankBy find(Object o) => findIn(_INSTANCES, o);

  RankBy._(String value) : super(value);

  bool operator ==(Object other) => value == (other is RankBy ? (other as RankBy).value : other);
}

class TextSearchRequest extends jsw.IsJsProxy {
  set bounds(LatLngBounds bounds) => $.bounds = bounds;
  set location(LatLng location) => $.location = location;
  set query(String query) => $.query = query;
  set radius(num radius) => $.radius = radius;
}
