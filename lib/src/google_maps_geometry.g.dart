// GENERATED CODE - DO NOT MODIFY BY HAND
// 2015-04-14T20:52:30.354Z

part of google_maps.geometry;

// **************************************************************************
// Generator: JsInterfaceGenerator
// Target: abstract class _Encoding
// **************************************************************************

class Encoding extends JsInterface implements _Encoding {
  Encoding.created(JsObject o) : super.created(o);

  List<LatLng> decodePath(String encodedPath) => ((e) {
    if (e == null) return null;
    return new JsList<LatLng>.created(e, new JsInterfaceCodec<LatLng>(
        (o) => ((e) => e == null ? null : new LatLng.created(e))(o)));
  })(asJsObject(this).callMethod('decodePath', [encodedPath]));
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
  _encodePath(dynamic /*List<LatLng>|MVCArray<LatLng>*/ path) =>
      asJsObject(this).callMethod('encodePath', [toJs(path)]);
}

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
      asJsObject(this).callMethod('computeArea', [toJs(path), radius]);
  num computeDistanceBetween(LatLng from, LatLng to, [num radius]) =>
      asJsObject(this).callMethod('computeDistanceBetween', [
    ((e) => e == null ? null : asJsObject(e))(from),
    ((e) => e == null ? null : asJsObject(e))(to),
    radius
  ]);
  num computeHeading(LatLng from, LatLng to) => asJsObject(this).callMethod(
      'computeHeading', [
    ((e) => e == null ? null : asJsObject(e))(from),
    ((e) => e == null ? null : asJsObject(e))(to)
  ]);
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
          [num radius]) =>
      asJsObject(this).callMethod('computeLength', [toJs(path), radius]);
  LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) =>
      ((e) => e == null ? null : new LatLng.created(e))(asJsObject(this)
          .callMethod('computeOffset', [
    ((e) => e == null ? null : asJsObject(e))(from),
    distance,
    heading,
    radius
  ]));
  LatLng computeOffsetOrigin(LatLng to, num distance, num heading,
      [num radius]) => ((e) => e == null ? null : new LatLng.created(e))(
      asJsObject(this).callMethod('computeOffsetOrigin', [
    ((e) => e == null ? null : asJsObject(e))(to),
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
          [num radius]) =>
      asJsObject(this).callMethod('computeSignedArea', [toJs(loop), radius]);
  LatLng interpolate(LatLng from, LatLng to, num fraction) =>
      ((e) => e == null ? null : new LatLng.created(e))(asJsObject(this)
          .callMethod('interpolate', [
    ((e) => e == null ? null : asJsObject(e))(from),
    ((e) => e == null ? null : asJsObject(e))(to),
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
    ((e) => e == null ? null : asJsObject(e))(point),
    ((e) => e == null ? null : asJsObject(e))(polygon)
  ]);
  bool isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]) => _isLocationOnEdge(point, (new ChainedCodec()
    ..add(new JsInterfaceCodec<Polygon>((o) => new Polygon.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Polygon"))))
    ..add(new JsInterfaceCodec<Polyline>((o) => new Polyline.created(o),
        (o) => o != null && o.instanceof(getPath("google.maps.Polyline")))))
          .encode(poly), tolerance);
  _isLocationOnEdge(LatLng point, dynamic /*Polygon|Polyline*/ poly,
      [num tolerance]) => asJsObject(this).callMethod('isLocationOnEdge', [
    ((e) => e == null ? null : asJsObject(e))(point),
    toJs(poly),
    tolerance
  ]);
}
