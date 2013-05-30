Dart Google Maps
================

This project is a library to use [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) from `dart` scripts.
It uses [JS Interop library](https://github.com/dart-lang/js-interop) and its scoped approch to prevent memory leaks. You can have a look at [Js Interop documentation](http://dart-lang.github.com/js-interop/docs/js.html), or watch [Dart JavaScript Interoperability Google Developers Live episode](https://www.youtube.com/watch?v=QFuCFUd2Zsw), for more information.

## Usage ##
To use this library in your code :
* add a dependency in your `pubspec.yaml` :

```yaml
dependencies:
  google_maps: ">=1.1.0 <2.0.0"
```

* add import in your `dart` code :

```dart
import 'package:google_maps/google_maps.dart';
```

* Include the Maps API JavaScript using a `script` tag.

```html
<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
```

A very simple example :
```dart
import 'dart:html';
import 'package:js/js.dart' as js;
import 'package:google_maps/google_maps.dart';

void main() {
  final mapOptions = new MapOptions()
    ..zoom = 8
    ..center = new LatLng(-34.397, 150.644)
    ..mapTypeId = MapTypeId.ROADMAP
    ;
  final map = new GMap(query("#map_canvas"), mapOptions);
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
