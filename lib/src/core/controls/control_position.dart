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

enum ControlPosition {
  BOTTOM_CENTER,
  BOTTOM_LEFT,
  BOTTOM_RIGHT,
  LEFT_BOTTOM,
  LEFT_CENTER,
  LEFT_TOP,
  RIGHT_BOTTOM,
  RIGHT_CENTER,
  RIGHT_TOP,
  TOP_CENTER,
  TOP_LEFT,
  TOP_RIGHT
}

final controlPositionCodec = new BiMapCodec<ControlPosition, int>(
    <ControlPosition, int>{
  ControlPosition.BOTTOM_CENTER:
      getPath('google.maps.ControlPosition')['BOTTOM_CENTER'],
  ControlPosition.BOTTOM_LEFT:
      getPath('google.maps.ControlPosition')['BOTTOM_LEFT'],
  ControlPosition.BOTTOM_RIGHT:
      getPath('google.maps.ControlPosition')['BOTTOM_RIGHT'],
  ControlPosition.LEFT_BOTTOM:
      getPath('google.maps.ControlPosition')['LEFT_BOTTOM'],
  ControlPosition.LEFT_CENTER:
      getPath('google.maps.ControlPosition')['LEFT_CENTER'],
  ControlPosition.LEFT_TOP:
      getPath('google.maps.ControlPosition')['LEFT_TOP'],
  ControlPosition.RIGHT_BOTTOM:
      getPath('google.maps.ControlPosition')['RIGHT_BOTTOM'],
  ControlPosition.RIGHT_CENTER:
      getPath('google.maps.ControlPosition')['RIGHT_CENTER'],
  ControlPosition.RIGHT_TOP:
      getPath('google.maps.ControlPosition')['RIGHT_TOP'],
  ControlPosition.TOP_CENTER:
      getPath('google.maps.ControlPosition')['TOP_CENTER'],
  ControlPosition.TOP_LEFT:
      getPath('google.maps.ControlPosition')['TOP_LEFT'],
  ControlPosition.TOP_RIGHT:
      getPath('google.maps.ControlPosition')['TOP_RIGHT'],
});
