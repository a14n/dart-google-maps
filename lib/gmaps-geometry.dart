#library('gmaps-geometry');

#import('package:js/js.dart', prefix:'js');
#import('jswrap.dart', prefix:'jsw');
#import('gmaps.dart');

class Encoding {
  static List<LatLng> decodePath(String encodedPath) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.encoding).$.call("decodePath", [encodedPath], (js.Proxy jsProxy) => new jsw.JsList<LatLng>.fromJsProxy(jsProxy, LatLng.INSTANCIATOR));
  static String encodePath(Object path) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.encoding).$.call("encodePath", [path]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
}

class Spherical {
  static num computeArea(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("computeArea", [path, radius]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  static num computeDistanceBetween(LatLng from, LatLng to, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("computeDistanceBetween", [from, to, radius]);
  static num computeHeading(LatLng from, LatLng to) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("computeHeading", [from, to]);
  static num computeLength(Object path, [num radius]) {
    if (path is MVCArray<LatLng> || path is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("computeLength", [path, radius]);
    } else {
      throw new IllegalArgumentException(path);
    }
  }
  static LatLng computeOffset(LatLng from, num distance, num heading, [num radius]) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("computeOffset", [from, distance, heading, radius], LatLng.INSTANCIATOR);
  static num computeSignedArea(Object loop, [num radius]) {
    if (loop is MVCArray<LatLng> || loop is List<LatLng>) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("computeSignedArea", [loop, radius]);
    } else {
      throw new IllegalArgumentException(loop);
    }
  }
  static LatLng interpolate(LatLng from, LatLng to, num fraction) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.spherical).$.call("interpolate", [from, to, fraction], LatLng.INSTANCIATOR);
}

class Poly {
  static bool containsLocation(LatLng point, Polygon polygon) => new jsw.IsJsProxy.fromJsProxy(maps.geometry.poly).$.call("containsLocation", [point, polygon]);
  static bool isLocationOnEdge(LatLng point, Object poly, [num tolerance]) {
    if (poly is Polygon || poly is Polyline) {
      return new jsw.IsJsProxy.fromJsProxy(maps.geometry.poly).$.call("isLocationOnEdge", [point, poly, tolerance]);
    } else {
      throw new IllegalArgumentException(poly);
    }
  }
}