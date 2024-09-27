# 8.1.1 (2024-09-27)

- improve analysis score

# 8.1.0 (2024-09-27)

- fix issue with return types of type `List<String>` or `List<num>`. This fixes [Exception on GeocoderAddressComponent|get#types #138](https://github.com/a14n/dart-google-maps/issues/138).
- re-generate against v3.58 docs
- improve pub score

# 8.0.0 (2024-07-30)

- promote last dev release as 8.0.0

# 8.0.0-dev.4

- allow package:web: ">=0.5.1 <2.0.0"

# 8.0.0-dev.3

- allow package:web ^1.0.0

# 8.0.0-dev.2

- some minor changes

# 8.0.0-dev.1

- migrate to wasm-safe JS-interop.

## migration guide:

- `GMap` should be rename to `Map`
- `toJS` and `toDart` are sometimes required on elements accepting/returning several types
- some services now return Future instead of having a callback function

# 7.1.0 (2024-02-21)

- migrate to package:web ^0.5.0
- requires dart >= 3.3.0

# 7.0.0 (2024-02-08)

- promote 7.0.0-beta.1

# 7.0.0-beta.1 (2024-01-10)

- [Migrate to `package:web`](https://github.com/a14n/dart-google-maps/issues/122)

# 6.3.0 (2023-05-19)

- Add `importLibrary` to allow [Dynamic Library Import](https://developers.google.com/maps/documentation/javascript/load-maps-js-api?hl=en#dynamic-library-import).

# 6.2.0 (2022-06-10)

- Update API according to v3.49 js API reference.

# 6.1.1 (2022-06-10)

- Fix [issue with Encoding.decodePath](https://github.com/a14n/dart-google-maps/issues/113).

# 6.1.0 (2022-03-02)

- Update API according to v3.48 js API reference.
- Small **breaking change** : `PlacePhoto.url` must be replaced by `PlacePhoto.getUrl()` because `getUrl` now accepts an optional `PhotoOptions` parameter.

# 6.0.0 (2022-01-13)

- Update API according to v3.47 js API reference.
- Fix issues with callback function taking list as parameters(see #106:[List<dynamic> is not List<QueryAutocompletePrediction?>? in getQueryPredictions()](https://github.com/a14n/dart-google-maps/issues/106)).

# 5.3.0 (2021-08-30)

- Fix issue using enum in closure (see [#105: Error with DirectionsService](https://github.com/a14n/dart-google-maps/issues/105))

# 5.2.0 (2021-08-10)

- Fix issue using fields of type Function (see [#103: map.projection.fromLatLngToPoint not correctly bound](https://github.com/a14n/dart-google-maps/issues/103))

# v5.1.0 (2021-03-19)

- Make the following getters non-null:
  - `LatLng.lat`
  - `LatLng.lng`
  - `LatLngBounds.northEast`
  - `LatLngBounds.southWest`

# v5.0.1 (2021-03-10)

- Add a missing file

# v5.0.0 (2021-03-10)

- Migrate to null-safety. As the google maps documentation does not provide information about nullability everything has been migrated as nullable.

# v4.0.0 (2021-01-17)

- Migrate from `dart:js` to `package:js`.

# v3.4.2 (2020-04-22)

- Add `AutocompletionRequest.origin` and `AutocompletionRequest.sessionToken`.

# v3.4.1 (2019-07-11)

- Fix issue with `MVCArray.onRemoveAt` and `MVCArray.onRemoveAt`.

# v3.4.0 (2019-06-25)

- Potentially breaking changes: the following function can now be set directly without dealing with JsObject
  * `ImageMapType.getTile`
  * `ImageMapTypeOptions.getTileUrl`
  * `MapType.getTile`
  * `Projection.fromLatLngToPoint` and `Projection.fromPointToLatLng`
  * `StyledMapType.getTile`
  * `OverlayView.draw`, `OverlayView.onAdd`, and `OverlayView.onRemove`
- Fix `StreetViewService.getPanorama` to follow the documentation.

# v3.3.4 (2019-06-21)

- fix [issue with StreetViewPanorama.controls](https://github.com/a14n/dart-google-maps/issues/66).

# v3.3.3 (2018-12-24)

- fix [incorrect event names ofr MVCArray removeAt and setAt](https://github.com/a14n/dart-google-maps/issues/65).

# v3.3.2 (2018-08-07)

- fix build.

# v3.3.1 (2018-08-07)

- remove `func` dependency.

# v3.3.0 (2018-07-27)

- migration to Dart 2.

# v3.2.4 (2018-04-11)

- Fix another issue with Dart-2

# v3.2.3 (2018-04-07)

- Fix some issue with Dart-2

# v3.2.2 (2017-08-28)

- Support some additions from Google Maps API 3.28

# v3.2.1 (2017-06-20)

- Fix [Upgrade from comment-based generics syntax](https://github.com/a14n/dart-google-maps/issues/45)

# v3.2.0+2 (2017-01-16)

- fix issue with mirrors and Dart2js (see http://dartbug.com/28371)

# v3.2.0+1 (2016-11-16)

- update to handle stricter markdown

# v3.2.0 (2016-11-15)

- use js_wrapping-0.3.0
- no more generator dependencies grabbed

# v3.1.0 (2015-12-17)

- support of the Google Maps API 3.22

# v3.0.2 (2015-06-16)

- fix [issue #32: fail to create PlacesService](https://github.com/a14n/dart-google-maps/issues/32).

# v3.0.1 (2015-06-12)

- fix [issue #31: duplicated google_maps library name](https://github.com/a14n/dart-google-maps/issues/31).

# v3.0.0 (2015-06-05)

- support of the Google Maps API 3.20
- migration to [js_wrapping](https://pub.dartlang.org/packages/js_wrapping)-0.2.0

# Semantic Version Conventions

http://semver.org/

- *Stable*:  All even numbered minor versions are considered API stable:
  i.e.: v1.0.x, v1.2.x, and so on.
- *Development*: All odd numbered minor versions are considered API unstable:
  i.e.: v0.9.x, v1.1.x, and so on.
