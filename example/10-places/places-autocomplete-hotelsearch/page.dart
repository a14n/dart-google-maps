import 'dart:async';
import 'dart:html' hide Animation;

import 'package:google_maps/google_maps.dart' hide MouseEvent;
import 'package:google_maps/google_maps_places.dart';
import 'package:js_wrapping/js_wrapping.dart';

GMap map;
PlacesService places;
InfoWindow infoWindow;
List<Marker> markers = <Marker>[];
Autocomplete autocomplete;
final countryRestrict = new ComponentRestrictions()..country = 'us';
final MARKER_PATH = 'https://maps.gstatic.com/intl/en_us/mapfiles/marker_green';
final RegExp hostnameRegexp = new RegExp('^https?://.+?/');

var countries = {
  'au': {'center': new LatLng(-25.3, 133.8), 'zoom': 4},
  'br': {'center': new LatLng(-14.2, -51.9), 'zoom': 3},
  'ca': {'center': new LatLng(62, -110.0), 'zoom': 3},
  'fr': {'center': new LatLng(46.2, 2.2), 'zoom': 5},
  'de': {'center': new LatLng(51.2, 10.4), 'zoom': 5},
  'mx': {'center': new LatLng(23.6, -102.5), 'zoom': 4},
  'nz': {'center': new LatLng(-40.9, 174.9), 'zoom': 5},
  'it': {'center': new LatLng(41.9, 12.6), 'zoom': 5},
  'za': {'center': new LatLng(-30.6, 22.9), 'zoom': 5},
  'es': {'center': new LatLng(40.5, -3.7), 'zoom': 5},
  'pt': {'center': new LatLng(39.4, -8.2), 'zoom': 6},
  'us': {'center': new LatLng(37.1, -95.7), 'zoom': 3},
  'uk': {'center': new LatLng(54.8, -4.6), 'zoom': 5}
};

void main() {
  final myOptions = new MapOptions()
    ..zoom = countries['us']['zoom']
    ..center = countries['us']['center']
    ..mapTypeControl = false
    ..panControl = false
    ..zoomControl = false
    ..streetViewControl = false;

  map = new GMap(document.getElementById('map-canvas'), myOptions);

  infoWindow = new InfoWindow(new InfoWindowOptions()
    ..content = document.getElementById('info-content'));

  // Create the autocomplete object and associate it with the UI input control.
  // Restrict the search to the default country, and to place type "cities".
  autocomplete = new Autocomplete(document.getElementById('autocomplete'),
      new AutocompleteOptions()
    ..types = ['(cities)']
    ..componentRestrictions = countryRestrict);
  places = new PlacesService(map);

  autocomplete.onPlaceChanged.listen(onPlaceChanged);

  // Add a DOM event listener to react when the user selects a country.
  event.addDomListener(
      document.getElementById('country'), 'change', setAutocompleteCountry);
}

// When the user selects a city, get the place details for the city and
// zoom the map in on the city.
void onPlaceChanged(_) {
  final place = autocomplete.place;
  if (place.geometry != null) {
    map.panTo(place.geometry.location);
    map.zoom = 15;
    search();
  } else {
    (document.getElementById('autocomplete') as InputElement).placeholder =
        'Enter a city';
  }
}

// Search for hotels in the selected city, within the viewport of the map.
void search() {
  final search = new PlaceSearchRequest()
    ..bounds = map.bounds
    ..types = ['lodging'];

  places.nearbySearch(search, (results, status, _) {
    if (status == PlacesServiceStatus.OK) {
      clearResults();
      clearMarkers();
      // Create a marker for each hotel found, and
      // assign a letter of the alphabetic to each marker icon.
      for (var i = 0; i < results.length; i++) {
        final markerLetter = new String.fromCharCode('A'.codeUnitAt(0) + i);
        final markerIcon = MARKER_PATH + markerLetter + '.png';
        // Use marker animation to drop the icons incrementally on the map.
        final marker = new Marker(new MarkerOptions()
          ..position = results[i].geometry.location
          ..animation = Animation.DROP
          ..icon = markerIcon);
        // If the user clicks a hotel marker, show the details of that hotel
        // in an info window.
        markers.add(marker);
        marker.onClick.listen(showInfoWindow(marker, results[i]));
        new Timer(new Duration(milliseconds: i * 100), dropMarker(i));
        addResult(results[i], i);
      }
    }
  });
}

void clearMarkers() {
  markers
    ..forEach((m) => m.map = null)
    ..clear();
}

// Set the country restriction based on user input.
// Also center and zoom the map on the given country.
void setAutocompleteCountry(_) {
  var country = (document.getElementById('country') as SelectElement).value;
  if (country == 'all') {
    autocomplete.componentRestrictions = new ComponentRestrictions();
    map.center = new LatLng(15, 0);
    map.zoom = 2;
  } else {
    autocomplete.componentRestrictions = new ComponentRestrictions()
      ..country = country;
    map.center = countries[country]['center'];
    map.zoom = countries[country]['zoom'];
  }
  clearResults();
  clearMarkers();
}

Function dropMarker(int i) {
  return () {
    markers[i].map = map;
  };
}

void addResult(PlaceResult result, int i) {
  final results = document.getElementById('results');
  final markerLetter = new String.fromCharCode('A'.codeUnitAt(0) + i);
  final markerIcon = MARKER_PATH + markerLetter + '.png';

  final tr = document.createElement('tr');
  tr.style.backgroundColor = (i % 2 == 0 ? '#F0F0F0' : '#FFFFFF');
  tr.onClick.listen((_) {
    event.trigger(asJsObject(markers[i]), 'click', null);
  });

  final iconTd = document.createElement('td');
  final nameTd = document.createElement('td');
  final icon = document.createElement('img');
  icon.src = markerIcon;
  icon.setAttribute('class', 'placeIcon');
  icon.setAttribute('className', 'placeIcon');
  final name = new Text(result.name);
  iconTd.append(icon);
  nameTd.append(name);
  tr.append(iconTd);
  tr.append(nameTd);
  results.append(tr);
}

void clearResults() {
  document.getElementById('results').nodes.clear();
}

// Get the place details for a hotel. Show the information in an info window,
// anchored on the marker for the hotel that the user selected.
Function showInfoWindow(Marker marker, PlaceResult placeResult) {
  return (_) => places.getDetails(new PlaceDetailsRequest()
    ..placeId = placeResult.placeId, (place, status) {
    if (status != PlacesServiceStatus.OK) {
      return;
    }
    infoWindow.open(map, marker);
    buildIWContent(place);
  });
}

class _NullTreeSanitizer implements NodeTreeSanitizer {
  void sanitizeTree(Node node) {}
}

// Load the place information into the HTML elements used by the info window.
void buildIWContent(PlaceResult place) {
  document.getElementById('iw-icon').setInnerHtml(
      '<img class="hotelIcon" ' + 'src="' + place.icon + '"></img>',
      treeSanitizer: new _NullTreeSanitizer());
  document.getElementById('iw-url').setInnerHtml(
      '<b><a href="' + place.url + '">' + place.name + '</a></b>',
      treeSanitizer: new _NullTreeSanitizer());
  document.getElementById('iw-address').text = place.vicinity;

  if (place.formattedPhoneNumber != null) {
    document.getElementById('iw-phone-row').style.display = '';
    document.getElementById('iw-phone').text = place.formattedPhoneNumber;
  } else {
    document.getElementById('iw-phone-row').style.display = 'none';
  }

  // Assign a five-star rating to the hotel, using a black star ('&#10029;')
  // to indicate the rating the hotel has earned, and a white star ('&#10025;')
  // for the rating points not achieved.
  if (place.rating != null) {
    var ratingHtml = '';
    for (var i = 0; i < 5; i++) {
      if (place.rating < (i + 0.5)) {
        ratingHtml += '&#10025;';
      } else {
        ratingHtml += '&#10029;';
      }
      document.getElementById('iw-rating-row').style.display = '';
      document.getElementById('iw-rating').innerHtml = ratingHtml;
    }
  } else {
    document.getElementById('iw-rating-row').style.display = 'none';
  }

  // The regexp isolates the first part of the URL (domain plus subdomain)
  // to give a short URL for displaying in the info window.
  if (place.website != null) {
    var website = hostnameRegexp.stringMatch(place.website);
    if (website == null) {
      website = 'http://' + place.website + '/';
    }
    document.getElementById('iw-website-row').style.display = '';
    document.getElementById('iw-website').text = website;
  } else {
    document.getElementById('iw-website-row').style.display = 'none';
  }
}
