import 'dart:async';
import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:js_wrapping/js_wrapping.dart';

Autocomplete autocomplete;
final componentForm = <String, String>{
  'street_number': 'short_name',
  'route': 'long_name',
  'locality': 'long_name',
  'administrative_area_level_1': 'short_name',
  'country': 'long_name',
  'postal_code': 'short_name'
};

void main() {
  // Create the autocomplete object, restricting the search
  // to geographical location types.
  autocomplete = Autocomplete(
      document.getElementById('autocomplete') as InputElement,
      AutocompleteOptions()..types = ['geocode']);
  // When the user selects an address from the dropdown,
  // populate the address fields in the form.
  autocomplete.onPlaceChanged.listen(fillInAddress);

  document.getElementById('autocomplete').onFocus.listen(geolocate);
}

void fillInAddress(_) {
  // Get the place details from the autocomplete object.
  final place = autocomplete.place;

  for (var component in componentForm.keys) {
    (document.getElementById(component) as InputElement)
      ..value = ''
      ..disabled = false;
  }

  // Get each component of the address from the place details
  // and fill the corresponding field on the form.
  for (final addressComponent in place.addressComponents) {
    final addressType = addressComponent.types[0];
    final prop = componentForm[addressType];
    if (prop != null) {
      final val = getProperty(addressComponent, prop) as String;
      (document.getElementById(addressType) as InputElement).value = val;
    }
  }
}

// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
Future geolocate(_) async {
  if (window.navigator.geolocation != null) {
    final position = await window.navigator.geolocation.getCurrentPosition();
    final geolocation =
        LatLng(position.coords.latitude, position.coords.longitude);
    final circle = Circle(CircleOptions()
      ..center = geolocation
      ..radius = position.coords.accuracy);
    autocomplete.bounds = circle.bounds;
  }
}
