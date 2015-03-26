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

enum SymbolPath {
  BACKWARD_CLOSED_ARROW,
  BACKWARD_OPEN_ARROW,
  CIRCLE,
  FORWARD_CLOSED_ARROW,
  FORWARD_OPEN_ARROW
}

final symbolPathCodec = new BiMapCodec<SymbolPath, int>(<SymbolPath, int>{
  SymbolPath.BACKWARD_CLOSED_ARROW:
      getPath('google.maps.SymbolPath')['BACKWARD_CLOSED_ARROW'],
  SymbolPath.BACKWARD_OPEN_ARROW:
      getPath('google.maps.SymbolPath')['BACKWARD_OPEN_ARROW'],
  SymbolPath.CIRCLE: getPath('google.maps.SymbolPath')['CIRCLE'],
  SymbolPath.FORWARD_CLOSED_ARROW:
      getPath('google.maps.SymbolPath')['FORWARD_CLOSED_ARROW'],
  SymbolPath.FORWARD_OPEN_ARROW:
      getPath('google.maps.SymbolPath')['FORWARD_OPEN_ARROW'],
});
