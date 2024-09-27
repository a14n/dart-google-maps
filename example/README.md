To use this library in your code:

* add a dependency in your `pubspec.yaml` :

  ```yaml
  dependencies:
    google_maps:
  ```

* add import in your `dart` code:

  ```dart
  import 'package:google_maps/google_maps.dart';
  ```

* Include the Maps API JavaScript using a `script` tag before your dart script.

  ```html
  <script src="https://maps.googleapis.com/maps/api/js?key=API_KEY"></script>
  ```

Please see the Google Maps JavaScript API v3 [Getting Started guide](https://developers.google.com/maps/documentation/javascript/tutorial#api_key) for information about obtaining an API Key.

A very [simple example](https://github.com/a14n/dart-google-maps/tree/master/example/map-simple) :

```dart
import 'package:google_maps/google_maps.dart';
import 'package:web/web.dart';

void main() {
  final mapOptions = MapOptions()
    ..zoom = 8
    ..center = LatLng(-34.397, 150.644);
  GMap(document.getElementById('map-canvas') as HTMLElement, mapOptions);
}
```

For other examples take a look at [example folder on the repository](https://github.com/a14n/dart-google-maps/tree/master/example).