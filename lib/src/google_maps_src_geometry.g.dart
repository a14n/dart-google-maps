// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-12-17T21:08:04.983Z

part of google_maps.src.geometry;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Encoding
// **************************************************************************

class Encoding extends JsInterface implements _Encoding {
  Encoding.created(JsObject o) : super.created(o);

  List<LatLng> decodePath(String encodedPath) => __codec473
      .decode(asJsObject(this).callMethod('decodePath', [encodedPath]));
  String encodePath(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path) =>
      _encodePath((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng']))))))
          .encode(path));
  _encodePath(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path) =>
      asJsObject(this).callMethod('encodePath', [path]);
}
/// codec for google_maps.src.LatLng
final __codec472 = new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o));

/// codec for dart.core.List<LatLng>
final __codec473 = new JsListCodec<LatLng>(__codec472);

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Spherical
// **************************************************************************

class Spherical extends JsInterface implements _Spherical {
  Spherical.created(JsObject o) : super.created(o);

  num computeArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path,
          [num radius]) =>
      _computeArea((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng']))))))
          .encode(path), radius);
  _computeArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path, [num radius]) =>
      asJsObject(this).callMethod('computeArea', [path, radius]);
  num computeDistanceBetween(LatLng from, LatLng to, [num radius]) =>
      asJsObject(this).callMethod('computeDistanceBetween', [
    __codec472.encode(from),
    __codec472.encode(to),
    radius
  ]);
  num computeHeading(LatLng from, LatLng to) => asJsObject(this).callMethod(
      'computeHeading', [__codec472.encode(from), __codec472.encode(to)]);
  num computeLength(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path,
          [num radius]) =>
      _computeLength((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng']))))))
          .encode(path), radius);
  _computeLength(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path,
          [num radius]) =>
      asJsObject(this).callMethod('computeLength', [path, radius]);
  LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) =>
      __codec472.decode(asJsObject(this).callMethod('computeOffset', [
    __codec472.encode(from),
    distance,
    heading,
    radius
  ]));
  LatLng computeOffsetOrigin(LatLng to, num distance, num heading,
      [num radius]) => __codec472.decode(asJsObject(this).callMethod(
          'computeOffsetOrigin', [
    __codec472.encode(to),
    distance,
    heading,
    radius
  ]));
  num computeSignedArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ loop,
          [num radius]) =>
      _computeSignedArea((new ChainedCodec()
    ..add(new JsListCodec<LatLng>(new JsInterfaceCodec<LatLng>(
        (o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng']))))
    ..add(new JsInterfaceCodec<MVCArray<LatLng>>(
        (o) => new MVCArray<LatLng>.created(o, new JsInterfaceCodec<LatLng>(
                (o) => new LatLng.created(o), (o) => o != null &&
                    o.instanceof(context['google']['maps']['LatLng']))))))
          .encode(loop), radius);
  _computeSignedArea(dynamic /*List<LatLng>|MVCArray<LatLng>*/ loop,
          [num radius]) =>
      asJsObject(this).callMethod('computeSignedArea', [loop, radius]);
  LatLng interpolate(LatLng from, LatLng to, num fraction) => __codec472.decode(
      asJsObject(this).callMethod('interpolate', [
    __codec472.encode(from),
    __codec472.encode(to),
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
    __codec472.encode(point),
    __codec474.encode(polygon)
  ]);
  bool isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]) => _isLocationOnEdge(point, (new ChainedCodec()
    ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['Polygon'])))
    ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o), (o) =>
        o != null && o.instanceof(context['google']['maps']['Polyline']))))
      .encode(poly), tolerance);
  _isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]) => asJsObject(this).callMethod(
          'isLocationOnEdge', [__codec472.encode(point), poly, tolerance]);
}
/// codec for google_maps.src.Polygon
final __codec474 = new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o));
