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

part of google_maps.src;

@anonymous
abstract class _DirectionsWaypoint implements JsInterface {
  factory _DirectionsWaypoint() => null;

  dynamic _location;
  dynamic /*LatLng|Place|String*/ get location => (ChainedCodec()
        ..add(JsInterfaceCodec<LatLng>(
            (o) => LatLng.created(o),
            (o) =>
                o != null &&
                o.instanceof(
                    context['google']['maps']['LatLng'] as JsFunction)))
        ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
        ..add(IdentityCodec<String>()))
      .decode(_location);
  set location(dynamic /*LatLng|Place|String*/ location) {
    _location = (ChainedCodec()
          ..add(JsInterfaceCodec<LatLng>(
              (o) => LatLng.created(o),
              (o) =>
                  o != null &&
                  o.instanceof(
                      context['google']['maps']['LatLng'] as JsFunction)))
          ..add(JsInterfaceCodec<Place>((o) => Place.created(o)))
          ..add(IdentityCodec<String>()))
        .encode(location);
  }

  bool stopover;
}
