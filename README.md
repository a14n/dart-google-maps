Dart Google Maps
================

This project is a library to use [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) from `dart` scripts.

## Usage ##
To use this library in your code :
* add a dependency in your `pubspec.yaml` :

```yaml
dependencies:
  google_maps: ">=2.0.0 <3.0.0"
```

* add import in your `dart` code :

```dart
import 'package:google_maps/google_maps.dart';
```

* Include the Maps API JavaScript using a `script` tag.

```html
<script src="https://maps.googleapis.com/maps/api/js?key=API_KEY"></script>
```

Please see the Google Maps JavaScript API v3 [Getting Started guide](https://developers.google.com/maps/documentation/javascript/tutorial#api_key) for information about obtaining an API Key.

* Include the js-interop script using a `script` tag just after `packages/browser/dart.js`.

```html
<script src="packages/browser/dart.js"></script>
```

A very [simple example](example/01-basics/map-simple) :
```dart
import 'dart:html';

import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(querySelector("#map_canvas"), mapOptions);
}
```

## Coverage ##
The library covers all [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) and its [Libraries](https://developers.google.com/maps/documentation/javascript/libraries).
To use one or more Google Maps Library :
* add import in your `dart` code :

```dart
import 'package:google_maps/google_maps_LIBRARY1.dart';
import 'package:google_maps/google_maps_LIBRARY2.dart';
```

* Include the Maps API JavaScript using a `script` tag.

```html
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=LIBRARY1,LIBRARY2"></script>
```

## Examples ##
Examples found at https://google-developers.appspot.com/maps/documentation/javascript/examples/ are available in a `dart` version in `example` directory.

## License ##
Apache 2.0
