// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../coordinates.dart';

@JS('google.maps.LatLngBounds')
extension type LatLngBounds._(JSObject _)
    implements JSObject, LatLngBoundsOrLatLngBoundsLiteral {
  external LatLngBounds(LatLngOrLatLngLiteral sw, LatLngOrLatLngLiteral ne);
  external LatLngBounds.empty();
  external LatLngBounds.copy(LatLngBoundsOrLatLngBoundsLiteral latLngBounds);
  external LatLngBounds.js([
    JSAny? /*(LatLng|LatLngLiteral|LatLngBounds|LatLngBoundsLiteral)?*/
        swOrLatLngBounds,
    LatLngOrLatLngLiteral? ne,
  ]);
  external static LatLngBounds get MAX_BOUNDS;
  external bool contains(
    LatLngOrLatLngLiteral latLng,
  );
  external bool equals(
    LatLngBoundsOrLatLngBoundsLiteral? other,
  );
  external LatLngBounds extend(
    LatLngOrLatLngLiteral point,
  );
  @JS('getCenter')
  external LatLng _getCenter();
  LatLng get center => _getCenter();
  @JS('getNorthEast')
  external LatLng _getNorthEast();
  LatLng get northEast => _getNorthEast();
  @JS('getSouthWest')
  external LatLng _getSouthWest();
  LatLng get southWest => _getSouthWest();
  external bool intersects(
    LatLngBoundsOrLatLngBoundsLiteral other,
  );
  external bool isEmpty();
  external LatLngBoundsLiteral toJSON();
  external LatLng toSpan();
  @JS('toString')
  external String toString$js();
  external String toUrlValue([
    num? precision,
  ]);
  external LatLngBounds union(
    LatLngBoundsOrLatLngBoundsLiteral other,
  );
}
extension type LatLngBoundsOrLatLngBoundsLiteral._(JSObject _)
    implements JSObject {}

extension LatLngBoundsOrLatLngBoundsLiteral$Ext
    on LatLngBoundsOrLatLngBoundsLiteral {
  num get east {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).northEast.lng;
    } else {
      return (this as LatLngBoundsLiteral).east;
    }
  }

  num get north {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).northEast.lat;
    } else {
      return (this as LatLngBoundsLiteral).north;
    }
  }

  num get south {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).southWest.lat;
    } else {
      return (this as LatLngBoundsLiteral).south;
    }
  }

  num get west {
    if (isA<LatLngBounds>()) {
      return (this as LatLngBounds).southWest.lng;
    } else {
      return (this as LatLngBoundsLiteral).west;
    }
  }
}
