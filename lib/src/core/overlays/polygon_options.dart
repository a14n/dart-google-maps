// Copyright (c) 2012, Alexandre Ardhuin
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

part of google_maps;

@anonymous
abstract class _PolygonOptions implements JsInterface {
  external factory _PolygonOptions();

  bool clickable;
  bool draggable;
  bool editable;
  String fillColor;
  num fillOpacity;
  bool geodesic;
  GMap map;
  dynamic /*MVCArray.<MVCArray.<LatLng>>|MVCArray.<LatLng>|Array.<Array.<LatLng>>|Array.<LatLng>*/ _paths;
  void set paths(dynamic paths) {
    if (paths == null) _paths = null;
    else if (paths is MVCArray<MVCArray<LatLng>>) _paths = paths;
    else if (paths is List<List<LatLng>>) _paths =
        new JsArray.from(paths.map((o) => new JsArray.from(o.map(toJs))));
    else if (paths is MVCArray<LatLng>) _paths = paths;
    else if (paths is List<LatLng>) _paths = new JsArray.from(paths.map(toJs));
    else throw 'bad type';
  }
  get paths {
    final value = _paths;
    if (value == null) return null;
    if (value is JsObject &&
        value.instanceof(getPath('google.maps.MVCArray'))) {
      final firstElement = new MVCArray.created(value);
      if (firstElement is JsObject &&
          firstElement.instanceof(getPath('google.maps.MVCArray'))) {
        return new MVCArray.created(value, new JsInterfaceCodec(
            (o) => new MVCArray.created(
                o, new JsInterfaceCodec((o) => new LatLng.created(o)))));
      } else {
        new MVCArray.created(
            value, new JsInterfaceCodec((o) => new LatLng.created(o)));
      }
    }
    if (value is JsArray) {
      final firstElement = value.first;
      if (firstElement is JsArray) {
        return new JsList.created(value, new JsInterfaceCodec(
            (o) => new JsList.created(
                o, new JsInterfaceCodec((o) => new LatLng.created(o)))));
      } else {
        new JsList.created(
            value, new JsInterfaceCodec((o) => new LatLng.created(o)));
      }
    }
    throw 'bad type';
  }
  String strokeColor;
  num strokeOpacity;
  // StrokePosition strokePosition;
  int _strokePosition;
  StrokePosition get strokePosition =>
      strokePositionCodec.decode(_strokePosition);
  void set strokePosition(StrokePosition strokePosition) {
    _strokePosition = strokePositionCodec.encode(strokePosition);
  }
  num strokeWeight;
  bool visible;
  num zIndex;
}
