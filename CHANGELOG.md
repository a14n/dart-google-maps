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
