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

class ScaleControlOptions extends jsw.TypedProxy {
  static ScaleControlOptions cast(js.Proxy proxy) => proxy == null ? null : new ScaleControlOptions.fromProxy(proxy);

  ScaleControlOptions() : super();
  ScaleControlOptions.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  ControlPosition get position => ControlPosition.find($unsafe['position']);
  ScaleControlStyle get style => ScaleControlStyle.find($unsafe['style']);
  set position(ControlPosition position) => $unsafe['position'] = position;
  set style(ScaleControlStyle style) => $unsafe['style'] = style;
}