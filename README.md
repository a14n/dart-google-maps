Dart Google Maps
================

This project is a library to use [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) from `dart` scripts.

## Usage ##
To use this library in your code :
* add a dependency in your `pubspec.yaml` :

```yaml
dependencies:
  dart_google_maps:
    git: https://github.com/a14n/dart-google-maps.git
```

* add import in your `dart` code :

```dart
#import('package:dart_google_maps/gmaps.dart');
```

* Include the Maps API JavaScript using a `script` tag.

```html
<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
```

## Coverage ##
The library covers all [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) and its [Libraries](https://developers.google.com/maps/documentation/javascript/libraries).
To use one or more Google Maps Library : 
* add import in your `dart` code :

```dart
#import('package:dart_google_maps/gmaps-LIBRARY1.dart');
#import('package:dart_google_maps/gmaps-LIBRARY2.dart');
```

* Include the Maps API JavaScript using a `script` tag.

```html
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=LIBRARY1,LIBRARY2"></script>
```

## Examples ##
Examples found at https://google-developers.appspot.com/maps/documentation/javascript/examples/ are available in a `dart` version in `example` directory.

## Limitations ##
* Compilation to `javascript` via `dart2js` does not work (yet?) because of a limitation in `dart2js` : `Internal error: visitIs for typedefs not implemented`
* All javascript objects used from dart are retain in a Map. This can cause memory leak if a lot of javascript object is use on dart side.

## troubleshooting ##
* When opening this project in Dart Editor (b.12440), editor gets angry on examples unless a `package-root` is specified in Preferences pointing to `./packages`

## License ##
Apache 2.0
