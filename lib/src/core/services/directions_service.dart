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

class DirectionsService extends jsw.IsJsProxy {
  DirectionsService() : super.newInstance(maps.DirectionsService);

  void route(DirectionsRequest request, void callback(DirectionsResult results, DirectionsStatus status)) {
    $.route(request, new jsw.Callback.once((Option<js.Proxy> results, Option<js.Proxy> status) => callback(results.map(DirectionsResult.INSTANCIATOR).value, status.map(DirectionsStatus.find).value)));
  }
}