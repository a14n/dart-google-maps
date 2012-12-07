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

class StreetViewPov extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new StreetViewPov.fromJsProxy(jsProxy);

  StreetViewPov() : super();
  StreetViewPov.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  num get heading => $.heading.value;
  set heading(num heading) => $.heading = heading;
  num get pitch => $.pitch.value;
  set pitch(num pitch) => $.pitch = pitch;
  num get zoom => $.zoom.value;
  set zoom(num zoom) => $.zoom = zoom;
}