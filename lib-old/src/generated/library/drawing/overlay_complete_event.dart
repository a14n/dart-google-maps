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

part of google_maps_drawing;

class OverlayCompleteEvent extends jsw.TypedJsObject {
  static OverlayCompleteEvent $wrap(js.JsObject jsObject) => jsObject == null ? null : new OverlayCompleteEvent.fromJsObject(jsObject);
  OverlayCompleteEvent.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  OverlayCompleteEvent();

  set overlay(dynamic overlay) => $unsafe['overlay'] = overlay is Marker ? overlay.$unsafe : overlay is Polygon ? overlay.$unsafe : overlay is Polyline ? overlay.$unsafe : overlay is Rectangle ? overlay.$unsafe : overlay is Circle ? overlay.$unsafe : overlay == null ? null : throw "bad type";
  dynamic get overlay => ((v5) => Marker.isInstance(v5) ? Marker.$wrap(v5) : ((v4) => Polygon.isInstance(v4) ? Polygon.$wrap(v4) : ((v3) => Polyline.isInstance(v3) ? Polyline.$wrap(v3) : ((v2) => Rectangle.isInstance(v2) ? Rectangle.$wrap(v2) : ((v1) => Circle.isInstance(v1) ? Circle.$wrap(v1) : ((v0) => v0)(v1))(v2))(v3))(v4))(v5))($unsafe['overlay']);
  set type(OverlayType type) => $unsafe['type'] = type == null ? null : type.$unsafe;
  OverlayType get type => OverlayType.$wrap($unsafe['type']);
}
