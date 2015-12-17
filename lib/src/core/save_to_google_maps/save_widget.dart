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

@JsName('google.maps.SaveWidget')
abstract class _SaveWidget extends MVCObject {
  external factory _SaveWidget(Node container, [SaveWidgetOptions opts]);

  Attribution get attribution => _getAttribution();
  Attribution _getAttribution();
  MarkerPlace get place => _getPlace();
  MarkerPlace _getPlace();
  void set attribution(Attribution attribution) => _setAttribution(attribution);
  void _setAttribution(Attribution attribution);
  void set options(SaveWidgetOptions opts) => _setOptions(opts);
  void _setOptions(SaveWidgetOptions opts);
  void set place(MarkerPlace place) => _setPlace(place);
  void _setPlace(MarkerPlace place);
}
