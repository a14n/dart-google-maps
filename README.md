Dart Google Maps
================

This project is a library to use [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) from `dart` scripts.

## Usage ##

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

## Coverage ##

The library covers all [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) and its [Libraries](https://developers.google.com/maps/documentation/javascript/libraries).
To use one or more Google Maps Library:

* add import in your `dart` code:

  ```dart
  import 'package:google_maps/google_maps_LIBRARY1.dart';
  import 'package:google_maps/google_maps_LIBRARY2.dart';
  ```

* Include the Maps API JavaScript using a `script` tag.

  ```html
  <script src="http://maps.googleapis.com/maps/api/js?libraries=LIBRARY1,LIBRARY2"></script>
  ```

## Examples ##

Examples found at https://google-developers.appspot.com/maps/documentation/javascript/examples/ are available in a `dart` version at https://github.com/a14n/dart-google-maps in the example directory.

## License ##

Apache 2.0
