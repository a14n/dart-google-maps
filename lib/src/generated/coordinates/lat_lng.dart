// Copyright (c) 2015, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../coordinates.dart';

@JS('google.maps.LatLng')
extension type LatLng._(JSObject _) implements JSObject, LatLngOrLatLngLiteral {
  external LatLng(num lat, num lng, [bool? noClampNoWrap]);
  external LatLng.copy(LatLngOrLatLngLiteral latLng, [bool? noClampNoWrap]);
  external LatLng.js(
    JSAny /*number|LatLngLiteral|LatLng*/ latOrLatLngOrLatLngLiteral, [
    JSAny? /*(number|boolean)?*/ lngOrNoClampNoWrap,
    bool? noClampNoWrap,
  ]);
  external bool equals(
    LatLng other,
  );
  @JS('lat')
  external num _lat();
  num get lat => _lat();
  @JS('lng')
  external num _lng();
  num get lng => _lng();
  external LatLngLiteral toJSON();
  @JS('toString')
  external String toString$js();
  external String toUrlValue([
    num? precision,
  ]);
}
extension type LatLngOrLatLngLiteral._(JSObject _) implements JSObject {}

extension LatLngOrLatLngLiteral$Ext on LatLngOrLatLngLiteral {
  num get lat {
    if (isA<LatLng>()) {
      return (this as LatLng).lat;
    } else {
      return (this as LatLngLiteral).lat;
    }
  }

  num get lng {
    if (isA<LatLng>()) {
      return (this as LatLng).lng;
    } else {
      return (this as LatLngLiteral).lng;
    }
  }
}
