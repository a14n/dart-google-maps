Dart Google Maps
================

This project is a library to use [Google Maps JavaScript API v3](https://developers.google.com/maps/documentation/javascript/) from `dart` scripts.
It uses [JS Interop library](https://github.com/dart-lang/js-interop) and its scoped approch to prevent memory leaks. Basically, all operation have to be done inside a *scope*. You can have a look at [Js Interop documentation](http://dart-lang.github.com/js-interop/docs/js.html) for more informations.

## Usage ##
To use this library in your code :
* add a dependency in your `pubspec.yaml` :

```yaml
dependencies:
  google_maps:
    git: https://github.com/a14n/dart-google-maps.git
```

* add import in your `dart` code :

```dart
#import('package:google_maps/gmaps.dart');
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
#import('package:google_maps/gmaps-LIBRARY1.dart');
#import('package:google_maps/gmaps-LIBRARY2.dart');
```

* Include the Maps API JavaScript using a `script` tag.

```html
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=LIBRARY1,LIBRARY2"></script>
```

## Examples ##
Examples found at https://google-developers.appspot.com/maps/documentation/javascript/examples/ are available in a `dart` version in `example` directory.

## Limitations ##
* Compilation to `javascript` via `dart2js` does not work (yet?) in all case because of a limitation in `dart2js` : `Internal error: Closures inside initializers not implemented`

## License ##
Apache 2.0
