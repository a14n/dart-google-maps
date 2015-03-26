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

class StreetViewPov extends jsw.TypedJsObject {
  static StreetViewPov $wrap(js.JsObject jsObject) => jsObject == null ? null : new StreetViewPov.fromJsObject(jsObject);
  StreetViewPov.fromJsObject(js.JsObject jsObject)
      : super.fromJsObject(jsObject);
  StreetViewPov();

  set heading(num heading) => $unsafe['heading'] = heading;
  num get heading => $unsafe['heading'];
  set pitch(num pitch) => $unsafe['pitch'] = pitch;
  num get pitch => $unsafe['pitch'];
  set zoom(num zoom) => $unsafe['zoom'] = zoom;
  num get zoom => $unsafe['zoom'];
}
