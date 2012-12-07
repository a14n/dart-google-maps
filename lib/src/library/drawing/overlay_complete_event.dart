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

class OverlayCompleteEvent extends jsw.IsJsProxy {
  OverlayCompleteEvent();
  OverlayCompleteEvent.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  jsw.IsJsProxy get overlay => $.overlay.map((jsProxy) {
    if (jsProxy == null) {
      return null;
    } else if (Marker.isInstance(jsProxy)) {
      return new Marker.fromJsProxy(jsProxy);
    } else if (Polygon.isInstance(jsProxy)) {
      return new Polygon.fromJsProxy(jsProxy);
    } else if (Polyline.isInstance(jsProxy)) {
      return new Polyline.fromJsProxy(jsProxy);
    } else if (Rectangle.isInstance(jsProxy)) {
      return new Rectangle.fromJsProxy(jsProxy);
    } else if (Circle.isInstance(jsProxy)) {
      return new Circle.fromJsProxy(jsProxy);
    } else {
      throw new Exception("Unsupported result");
    }
  }).value;
  OverlayType get type => $.type.map(OverlayType.find).value;
}