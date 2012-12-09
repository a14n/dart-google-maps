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

class TransitLine extends jsw.IsJsProxy {
  static final INSTANCIATOR = (js.Proxy jsProxy) => new TransitLine.fromJsProxy(jsProxy);

  TransitLine() : super();
  TransitLine.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);

  List<TransitAgency> get agencies => $.agencies.map((js.Proxy jsProxy) => new jsw.JsList<TransitAgency>.fromJsProxy(jsProxy, TransitAgency.INSTANCIATOR)).value;
  String get color => $.color.value;
  String get icon => $.icon.value;
  String get name => $.name.value;
  String get shortName => $.short_name.value;
  String get textColor => $.text_color.value;
  String get url => $.url.value;
  TransitVehicle get vehicle => $.vehicle.map(TransitVehicle.INSTANCIATOR).value;
}