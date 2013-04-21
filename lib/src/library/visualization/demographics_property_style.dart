// Copyright (c) 2013, Alexandre Ardhuin
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

part of google_maps_visualization;

class DemographicsPropertyStyle extends jsw.TypedProxy {
  static DemographicsPropertyStyle cast(js.Proxy proxy) => proxy == null ? null : new DemographicsPropertyStyle.fromProxy(proxy);

  DemographicsPropertyStyle() : super();
  DemographicsPropertyStyle.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  String get expression => $unsafe['expression'];
  List<String> get gradient => jsw.JsArrayToListAdapter.cast($unsafe['gradient']);
  num get min => $unsafe['min'];
  num get max => $unsafe['max'];
  set expression(String expression) => $unsafe['expression'] = expression;
  set gradient(List<String> gradient) => $unsafe['gradient'] = jsifyList(gradient);
  set min(num min) => $unsafe['min'] = min;
  set max(num max) => $unsafe['max'] = max;
}