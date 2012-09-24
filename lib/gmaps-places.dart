#library('gmaps-places');

#import('dart:html', prefix:'html');
#import('jsni.dart', prefix:'js');
#import('gmaps.dart');
#source('utils.dart');

class Autocomplete extends MVCObject {
  static const String _TYPE_NAME = "google.maps.places.Autocomplete";

  Autocomplete(html.InputElement inputField, [AutocompleteOptions opts]) : super.newInstance(_TYPE_NAME, [inputField, opts]);
  Autocomplete.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLngBounds getBounds() => new LatLngBounds.fromJsRef($.callForJsRef("getBounds"));
  PlaceResult getPlace() => new PlaceResult.fromJsRef($.callForJsRef("getPlace"));
  void setBounds(LatLngBounds bounds) { $.call("setBounds", [bounds]); }
  void setComponentRestrictions(ComponentRestrictions restrictions) { $.call("setComponentRestrictions", [restrictions]); }
  void setTypes(List<String> types) { $.call("setTypes", [types]); }
}

class AutocompleteOptions extends js.JsObject {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set componentRestrictions(ComponentRestrictions componentRestrictions) => $["componentRestrictions"] = componentRestrictions;
  set types(List<String> types) => $["types"] = types;
}

class ComponentRestrictions extends js.JsObject {
  String get country => $["country"];
         set country(String country) => $["country"] = country;
}

class PlaceDetailsRequest extends js.JsObject {
  String get reference => $["reference"];
         set reference(String reference) => $["reference"] = reference;
}

class PlaceGeometry extends js.JsObject {
  PlaceGeometry() : super();
  PlaceGeometry.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  LatLng get location => new LatLng.fromJsRef($.getPropertyAsJsRef("location"));
         set location(LatLng location) => $["location"] = location;
  LatLngBounds get viewport => new LatLngBounds.fromJsRef($.getPropertyAsJsRef("viewport"));
               set viewport(LatLngBounds viewport) => $["viewport"] = viewport;
}

class PlaceResult extends js.JsObject {
  PlaceResult() : super();
  PlaceResult.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  List<GeocoderAddressComponent> get address_components =>  new js.JsList<GeocoderAddressComponent>.fromJsRef($.getPropertyAsJsRef("address_components"), (e) => new GeocoderAddressComponent.fromJsRef(e));
  String get formatted_address => $["formatted_address"];
  String get formatted_phone_number => $["formatted_phone_number"];
  PlaceGeometry get geometry => new PlaceGeometry.fromJsRef($.getPropertyAsJsRef("geometry"));
  List<String> get html_attributions =>  new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("html_attributions"), (e) => js.$$(e).value);
  String get icon => $["icon"];
  String get id => $["id"];
  String get international_phone_number => $["international_phone_number"];
  String get name => $["name"];
  num get rating => $["rating"];
  String get reference => $["reference"];
  List<String> get types =>  new js.JsList<String>.fromJsRef($.getPropertyAsJsRef("types"), (e) => js.$$(e).value);
  String get url => $["url"];
  String get vicinity => $["vicinity"];
  String get website => $["website"];
}

class PlaceSearchRequest extends js.JsObject {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set keyword(String keyword) => $["keyword"] = keyword;
  set location(LatLng location) => $["location"] = location;
  set name(String name) => $["name"] = name;
  set radius(num radius) => $["radius"] = radius;
  set rankBy(RankBy rankBy) => $["rankBy"] = rankBy;
  set types(List<String> types) => $["types"] = types;
}

class PlaceSearchPagination extends js.JsObject {
  PlaceSearchPagination() : super();
  PlaceSearchPagination.fromJsRef(js.JsRef jsRef) : super.fromJsRef(jsRef);

  void nextPage() { $.call("nextPage"); }

  bool get hasNextPage => $["hasNextPage"];
}

class PlacesService extends js.JsObject {
  static const String TYPE_NAME = "google.maps.places.PlacesService";

  PlacesService(Object attrContainer) : super.newInstance(TYPE_NAME, [attrContainer]) {
    if (!(attrContainer is html.DivElement || attrContainer is GMap)) {
      throw new IllegalArgumentException(attrContainer);
    }
  }

  void getDetails(PlaceDetailsRequest request, void callback(PlaceResult results, PlacesServiceStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      callback(new PlaceResult.fromJsRef(args[0]), PlacesServiceStatus.find(args[1]));
    };
    $.call("getDetails", [request, callbackFunction]);
  }
  void nearbySearch(PlaceSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status, PlaceSearchPagination pagination)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new PlaceResult.fromJsRef(e)), PlacesServiceStatus.find(args[1]), new PlaceSearchPagination.fromJsRef(args[2]));
    };
    $.call("nearbySearch", [request, callbackFunction]);
  }
  void textSearch(TextSearchRequest request, void callback(List<PlaceResult> results, PlacesServiceStatus status)) {
    js.CallbackFunction callbackFunction = Object _(List args) {
      List<js.JsRef> resultsRefs = args[0];
      callback(resultsRefs.map((e) => new PlaceResult.fromJsRef(e)), PlacesServiceStatus.find(args[1]));
    };
    $.call("textSearch", [request, callbackFunction]);
  }
}

class PlacesServiceStatus extends js.JsObject {
  static const String TYPE_NAME = "google.maps.places.PlacesServiceStatus";

  static final PlacesServiceStatus INVALID_REQUEST= new PlacesServiceStatus._("${TYPE_NAME}.INVALID_REQUEST");
  static final PlacesServiceStatus OK= new PlacesServiceStatus._("${TYPE_NAME}.OK");
  static final PlacesServiceStatus OVER_QUERY_LIMIT= new PlacesServiceStatus._("${TYPE_NAME}.OVER_QUERY_LIMIT");
  static final PlacesServiceStatus REQUEST_DENIED= new PlacesServiceStatus._("${TYPE_NAME}.REQUEST_DENIED");
  static final PlacesServiceStatus UNKNOWN_ERROR= new PlacesServiceStatus._("${TYPE_NAME}.UNKNOWN_ERROR");
  static final PlacesServiceStatus ZERO_RESULTS= new PlacesServiceStatus._("${TYPE_NAME}.ZERO_RESULTS");

  static PlacesServiceStatus find(Object o) { return findIn(o, [INVALID_REQUEST, OK, OVER_QUERY_LIMIT, REQUEST_DENIED, UNKNOWN_ERROR, ZERO_RESULTS]); }

  PlacesServiceStatus._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class RankBy extends js.JsObject {
  static const String TYPE_NAME = "google.maps.places.RankBy";

  static final RankBy DISTANCE= new RankBy._("${TYPE_NAME}.DISTANCE");
  static final RankBy PROMINENCE= new RankBy._("${TYPE_NAME}.PROMINENCE");

  static RankBy find(Object o) { return findIn(o, [DISTANCE, PROMINENCE]); }

  RankBy._(String jsName) : super.fromJsRef(js.jsWindow.$.getPropertyAsJsRef(jsName));
}

class TextSearchRequest extends js.JsObject {
  set bounds(LatLngBounds bounds) => $["bounds"] = bounds;
  set location(LatLng location) => $["location"] = location;
  set query(String query) => $["query"] = query;
  set radius(num radius) => $["radius"] = radius;
}
