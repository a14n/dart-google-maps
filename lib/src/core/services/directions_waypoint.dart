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
  external factory _DirectionsWaypoint();

  dynamic _location;
  dynamic /*LatLng|Place|String*/ get location => (new ChainedCodec()
    ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o),
        (o) => o != null && o.instanceof(context['google']['maps']['LatLng'])))
    ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
    ..add(new IdentityCodec<String>())).decode(_location);
  void set location(dynamic /*LatLng|Place|String*/ location) {
    _location = (new ChainedCodec()
      ..add(new JsInterfaceCodec<LatLng>((o) => new LatLng.created(o), (o) =>
          o != null && o.instanceof(context['google']['maps']['LatLng'])))
      ..add(new JsInterfaceCodec<Place>((o) => new Place.created(o)))
      ..add(new IdentityCodec<String>())).encode(location);
  }
  bool stopover;
}
