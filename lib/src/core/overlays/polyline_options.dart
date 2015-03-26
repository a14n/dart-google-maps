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
abstract class _PolylineOptions implements JsInterface {
  external factory _PolylineOptions();

  bool clickable;
  bool draggable;
  bool  editable;
  bool geodesic;
  List<IconSequence> icons;
  GMap map;
  //MVCArray<LatLng>|List<LatLng> path
  dynamic _path;
  /*MVCArray<LatLng>|List<LatLng>*/ get path {
    final result = _path;
    if (result == null) return null;
    if (result is JsArray) return new JsList.created(result, new JsInterfaceCodec((o) => new LatLng.created(o)));
    if (result is JsObject && result.instanceof(getPath('google.maps.MVCArray'))) return new MVCArray.created(result, new JsInterfaceCodec((o) => new LatLng.created(o)));
    throw 'bad type';
  }
  void set path(dynamic /*MVCArray.<LatLng>|Array.<LatLng>*/ path){
    if (path == null) _path = null;
    else if (path is MVCArray<LatLng>) _path = path;
    else if (path is List<LatLng>) _path = new JsArray.from(path.map(toJs));
    else throw 'bad type';
  }
  String strokeColor;
  num strokeOpacity;
  num strokeWeight;
  bool visible;
  num zIndex;
}
