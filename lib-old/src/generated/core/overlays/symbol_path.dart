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

class SymbolPath extends jsw.IsEnum<int> {
  static final _FINDER = new jsw.EnumFinder<int, SymbolPath>([BACKWARD_CLOSED_ARROW, BACKWARD_OPEN_ARROW, CIRCLE, FORWARD_CLOSED_ARROW, FORWARD_OPEN_ARROW]);
  static SymbolPath $wrap(int jsValue) => _FINDER.find(jsValue);

  static final BACKWARD_CLOSED_ARROW = new SymbolPath._(maps['SymbolPath']['BACKWARD_CLOSED_ARROW']);
  static final BACKWARD_OPEN_ARROW = new SymbolPath._(maps['SymbolPath']['BACKWARD_OPEN_ARROW']);
  static final CIRCLE = new SymbolPath._(maps['SymbolPath']['CIRCLE']);
  static final FORWARD_CLOSED_ARROW = new SymbolPath._(maps['SymbolPath']['FORWARD_CLOSED_ARROW']);
  static final FORWARD_OPEN_ARROW = new SymbolPath._(maps['SymbolPath']['FORWARD_OPEN_ARROW']);

  SymbolPath._(int value)
      : super(value);
}
