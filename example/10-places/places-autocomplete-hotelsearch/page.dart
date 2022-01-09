import 'dart:async';
import 'dart:html' hide Animation, MouseEvent;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

late GMap map;
late PlacesService places;
late InfoWindow infoWindow;
List<Marker> markers = <Marker>[];
late Autocomplete autocomplete;
final countryRestrict = ComponentRestrictions()..country = 'us';
const MARKER_PATH = 'https://maps.gstatic.com/intl/en_us/mapfiles/marker_green';
final RegExp hostnameRegexp = RegExp('^https?://.+?/');

var countries = {
  'au': {'center': LatLng(-25.3, 133.8), 'zoom': 4},
  'br': {'center': LatLng(-14.2, -51.9), 'zoom': 3},
  'ca': {'center': LatLng(62, -110.0), 'zoom': 3},
  'fr': {'center': LatLng(46.2, 2.2), 'zoom': 5},
  'de': {'center': LatLng(51.2, 10.4), 'zoom': 5},
  'mx': {'center': LatLng(23.6, -102.5), 'zoom': 4},
  'nz': {'center': LatLng(-40.9, 174.9), 'zoom': 5},
  'it': {'center': LatLng(41.9, 12.6), 'zoom': 5},
  'za': {'center': LatLng(-30.6, 22.9), 'zoom': 5},
  'es': {'center': LatLng(40.5, -3.7), 'zoom': 5},
  'pt': {'center': LatLng(39.4, -8.2), 'zoom': 6},
  'us': {'center': LatLng(37.1, -95.7), 'zoom': 3},
  'uk': {'center': LatLng(54.8, -4.6), 'zoom': 5}
};

void main() {
  final myOptions = MapOptions()
    ..zoom = countries['us']!['zoom']! as int
    ..center = countries['us']!['center']! as LatLng
    ..mapTypeControl = false
    ..panControl = false
    ..zoomControl = false
    ..streetViewControl = false;

  map = GMap(document.getElementById('map-canvas') as HtmlElement, myOptions);

  infoWindow = InfoWindow(
      InfoWindowOptions()..content = document.getElementById('info-content'));

  // Create the autocomplete object and associate it with the UI input control.
  // Restrict the search to the default country, and to place type "cities".
  autocomplete = Autocomplete(
      document.getElementById('autocomplete') as InputElement,
      AutocompleteOptions()
        ..types = ['(cities)']
        ..componentRestrictions = countryRestrict);
  places = PlacesService(map);

  autocomplete.onPlaceChanged.listen(onPlaceChanged);

  // Add a DOM event listener to react when the user selects a country.
  Event.addDomListener(
      document.getElementById('country'), 'change', setAutocompleteCountry);
}

// When the user selects a city, get the place details for the city and
// zoom the map in on the city.
void onPlaceChanged(_) {
  final place = autocomplete.place!;
  if (place.geometry != null) {
    map
      ..panTo(place.geometry!.location)
      ..zoom = 15;
    search();
  } else {
    (document.getElementById('autocomplete') as InputElement).placeholder =
        'Enter a city';
  }
}

// Search for hotels in the selected city, within the viewport of the map.
void search() {
  final search = PlaceSearchRequest()
    ..bounds = map.bounds
    ..type = 'lodging';

  places.nearbySearch(search, (results, status, _) {
    if (status == PlacesServiceStatus.OK) {
      clearResults();
      clearMarkers();
      // Create a marker for each hotel found, and
      // assign a letter of the alphabetic to each marker icon.
      for (var i = 0; i < results!.length; i++) {
        final markerLetter = String.fromCharCode('A'.codeUnitAt(0) + i);
        final markerIcon = '$MARKER_PATH$markerLetter.png';
        // Use marker animation to drop the icons incrementally on the map.
        final marker = Marker(MarkerOptions()
          ..position = results[i]!.geometry!.location
          ..animation = Animation.DROP
          ..icon = markerIcon);
        // If the user clicks a hotel marker, show the details of that hotel
        // in an info window.
        markers.add(marker);
        marker.onClick.listen(showInfoWindow(marker, results[i]!));
        Timer(Duration(milliseconds: i * 100), dropMarker(i));
        addResult(results[i]!, i);
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
  final country = (document.getElementById('country') as SelectElement).value;
  if (country == 'all') {
    autocomplete.componentRestrictions = ComponentRestrictions();
    map.center = LatLng(15, 0);
    map.zoom = 2;
  } else {
    autocomplete.componentRestrictions = ComponentRestrictions()
      ..country = country;
    map.center = countries[country]!['center']! as LatLng;
    map.zoom = countries[country]!['zoom']! as int;
  }
  clearResults();
  clearMarkers();
}

void Function() dropMarker(int i) => () {
      markers[i].map = map;
    };

void addResult(PlaceResult result, int i) {
  final results = document.getElementById('results');
  final markerLetter = String.fromCharCode('A'.codeUnitAt(0) + i);
  final markerIcon = '$MARKER_PATH$markerLetter.png';

  final tr = document.createElement('tr');
  tr.style.backgroundColor = i % 2 == 0 ? '#F0F0F0' : '#FFFFFF';
  tr.onClick.listen((_) {
    Event.trigger(markers[i], 'click', null);
  });

  final iconTd = document.createElement('td');
  final nameTd = document.createElement('td');
  final icon = ImageElement()
    ..src = markerIcon
    ..setAttribute('class', 'placeIcon')
    ..setAttribute('className', 'placeIcon');
  final name = Text(result.name!);
  iconTd.append(icon);
  nameTd.append(name);
  tr
    ..append(iconTd)
    ..append(nameTd);
  results!.append(tr);
}

void clearResults() {
  document.getElementById('results')!.nodes.clear();
}

// Get the place details for a hotel. Show the information in an info window,
// anchored on the marker for the hotel that the user selected.
void Function(MapMouseEvent) showInfoWindow(
        Marker marker, PlaceResult placeResult) =>
    (_) => places
            .getDetails(PlaceDetailsRequest()..placeId = placeResult.placeId,
                (place, status) {
          if (status != PlacesServiceStatus.OK) {
            return;
          }
          infoWindow.open(map, marker);
          buildIWContent(place!);
        });

class _NullTreeSanitizer implements NodeTreeSanitizer {
  @override
  void sanitizeTree(Node node) {}
}

// Load the place information into the HTML elements used by the info window.
void buildIWContent(PlaceResult place) {
  document.getElementById('iw-icon')!.setInnerHtml(
      '<img class="hotelIcon" src="${place.icon}"></img>',
      treeSanitizer: _NullTreeSanitizer());
  document.getElementById('iw-url')!.setInnerHtml(
      '<b><a href="${place.url}">${place.name}</a></b>',
      treeSanitizer: _NullTreeSanitizer());
  document.getElementById('iw-address')!.text = place.vicinity;

  if (place.formattedPhoneNumber != null) {
    document.getElementById('iw-phone-row')!.style.display = '';
    document.getElementById('iw-phone')!.text = place.formattedPhoneNumber;
  } else {
    document.getElementById('iw-phone-row')!.style.display = 'none';
  }

  // Assign a five-star rating to the hotel, using a black star ('&#10029;')
  // to indicate the rating the hotel has earned, and a white star ('&#10025;')
  // for the rating points not achieved.
  if (place.rating != null) {
    var ratingHtml = '';
    for (var i = 0; i < 5; i++) {
      if (place.rating! < (i + 0.5)) {
        ratingHtml += '&#10025;';
      } else {
        ratingHtml += '&#10029;';
      }
      document.getElementById('iw-rating-row')!.style.display = '';
      document.getElementById('iw-rating')!.innerHtml = ratingHtml;
    }
  } else {
    document.getElementById('iw-rating-row')!.style.display = 'none';
  }

  // The regexp isolates the first part of the URL (domain plus subdomain)
  // to give a short URL for displaying in the info window.
  if (place.website != null) {
    var website = hostnameRegexp.stringMatch(place.website!);
    website ??= 'http://${place.website}/';
    document.getElementById('iw-website-row')!.style.display = '';
    document.getElementById('iw-website')!.text = website;
  } else {
    document.getElementById('iw-website-row')!.style.display = 'none';
  }
}
