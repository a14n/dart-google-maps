import 'dart:js_interop';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'package:web/web.dart';

late Map map;
late InfoWindow infowindow;

void main() {
  AutocompleteService().getQueryPredictions(
    QueryAutocompletionRequest()..input = 'pizza near',
    callback.toJS,
  );
}

void callback(
  JSArray<QueryAutocompletePrediction?>? predictions,
  PlacesServiceStatus? status,
) {
  if (status != PlacesServiceStatus.OK) {
    window.alert('$status');
    return;
  }

  final results = document.getElementById('results') as HTMLUListElement;

  for (final prediction in predictions!.toDart) {
    results.innerHTML =
        '${results.innerHTML}<li>${prediction!.description}</li>'.toJS;
  }
}
