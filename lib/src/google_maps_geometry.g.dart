// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-05-13T17:06:36.394Z

part of google_maps.geometry;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Encoding
// **************************************************************************

class Encoding extends JsInterface implements _Encoding {
  Encoding.created(JsObject o) : super.created(o);

  List<LatLng> decodePath(String encodedPath) => __codec174
      .decode(asJsObject(this).callMethod('decodePath', [encodedPath]));
  String encodePath(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path) =>
      _encodePath((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(getPath("google.maps.LatLng")))))))
              .encode(path));
  _encodePath(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path) => __codec175
      .decode(
          asJsObject(this).callMethod('encodePath', [__codec175.encode(path)]));
}
/// codec for LatLng
final __codec173 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for List<LatLng>
final __codec174 = new JsListCodec<LatLng>(__codec173);

/// codec for dynamic
final __codec175 = new DynamicCodec();

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Spherical
// **************************************************************************

class Spherical extends JsInterface implements _Spherical {
  Spherical.created(JsObject o) : super.created(o);

  num computeArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path,
      [num radius]) => _computeArea((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(getPath("google.maps.LatLng")))))))
              .encode(path), radius);
  _computeArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path, [num radius]) =>
      __codec175.decode(asJsObject(this).callMethod(
          'computeArea', [__codec175.encode(path), radius]));
  num computeDistanceBetween(LatLng from, LatLng to, [num radius]) =>
      asJsObject(this).callMethod('computeDistanceBetween', [
    __codec173.encode(from),
    __codec173.encode(to),
    radius
  ]);
  num computeHeading(LatLng from, LatLng to) => asJsObject(this).callMethod(
      'computeHeading', [__codec173.encode(from), __codec173.encode(to)]);
  num computeLength(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path,
      [num radius]) => _computeLength((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(getPath("google.maps.LatLng")))))))
              .encode(path), radius);
  _computeLength(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path,
      [num radius]) => __codec175.decode(asJsObject(this).callMethod(
          'computeLength', [__codec175.encode(path), radius]));
  LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) =>
      __codec173.decode(asJsObject(this).callMethod('computeOffset', [
    __codec173.encode(from),
    distance,
    heading,
    radius
  ]));
  LatLng computeOffsetOrigin(LatLng to, num distance, num heading,
      [num radius]) => __codec173.decode(asJsObject(this).callMethod(
          'computeOffsetOrigin', [
    __codec173.encode(to),
    distance,
    heading,
    radius
  ]));
  num computeSignedArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ loop,
      [num radius]) => _computeSignedArea((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.LatLng")))))
    ..add(
        new JsInterfaceCodec<MVCArray<LatLng>>(
            (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                    (o) => new LatLng.created(o), (o) => o != null &&
                        o.instanceof(getPath("google.maps.LatLng")))))))
              .encode(loop), radius);
  _computeSignedArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ loop,
      [num radius]) => __codec175.decode(asJsObject(this).callMethod(
          'computeSignedArea', [__codec175.encode(loop), radius]));
  LatLng interpolate(LatLng from, LatLng to, num fraction) => __codec173.decode(
      asJsObject(this).callMethod('interpolate', [
    __codec173.encode(from),
    __codec173.encode(to),
    fraction
  ]));
}

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Poly
// **************************************************************************

class Poly extends JsInterface implements _Poly {
  Poly.created(JsObject o) : super.created(o);

  bool containsLocation(LatLng point, Polygon polygon) => asJsObject(this)
      .callMethod('containsLocation', [
    __codec173.encode(point),
    __codec176.encode(polygon)
  ]);
  bool isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]) => _isLocationOnEdge(point, (new ChainedCodec()
    ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Polygon"))))
    ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Polyline")))))
          .encode(poly), tolerance);
  _isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]) => __codec175.decode(asJsObject(this).callMethod(
          'isLocationOnEdge', [
    __codec173.encode(point),
    __codec175.encode(poly),
    tolerance
  ]));
}
/// codec for Polygon
final __codec176 = new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o));
