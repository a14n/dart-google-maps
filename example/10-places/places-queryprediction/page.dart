import 'dart:html';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';

GMap map;
InfoWindow infowindow;

void main() {
  final service = new AutocompleteService();
  service.getQueryPredictions(
      new QueryAutocompletionRequest()..input = 'pizza near', callback);
}

void callback(
    List<QueryAutocompletePrediction> predictions, PlacesServiceStatus status) {
  if (status != PlacesServiceStatus.OK) {
    window.alert('$status');
    return;
  }

  final UListElement results = document.getElementById('results');

  for (final prediction in predictions) {
    results.innerHtml += '<li>' + prediction.description + '</li>';
  }
}
