# Dart Google Maps - development information

## Build

Most of the lib is generated from the [online documentation](https://developers.google.com/maps/documentation/javascript/reference).

There are 2 steps:

1. Generate template class from documentation
2. Generate real code with [js_wrapping_generator](https://pub.dev/packages/js_wrapping_generator)

```
dart tool/generate_lib.dart
pub run build_runner build -v lib
```