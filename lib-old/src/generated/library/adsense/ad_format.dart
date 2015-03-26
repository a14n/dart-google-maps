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

part of google_maps_adsense;

class AdFormat extends jsw.IsEnum<String> {
  static final _FINDER = new jsw.EnumFinder<String, AdFormat>([BANNER, BUTTON, HALF_BANNER, LARGE_HORIZONTAL_LINK_UNIT, LARGE_RECTANGLE, LARGE_VERTICAL_LINK_UNIT, LEADERBOARD, MEDIUM_RECTANGLE, MEDIUM_VERTICAL_LINK_UNIT, SKYSCRAPER, SMALL_HORIZONTAL_LINK_UNIT, SMALL_RECTANGLE, SMALL_SQUARE, SMALL_VERTICAL_LINK_UNIT, SQUARE, VERTICAL_BANNER, WIDE_SKYSCRAPER, X_LARGE_VERTICAL_LINK_UNIT]);
  static AdFormat $wrap(String jsValue) => _FINDER.find(jsValue);

  static final BANNER = new AdFormat._(maps['adsense']['AdFormat']['BANNER']);
  static final BUTTON = new AdFormat._(maps['adsense']['AdFormat']['BUTTON']);
  static final HALF_BANNER = new AdFormat._(maps['adsense']['AdFormat']['HALF_BANNER']);
  static final LARGE_HORIZONTAL_LINK_UNIT = new AdFormat._(maps['adsense']['AdFormat']['LARGE_HORIZONTAL_LINK_UNIT']);
  static final LARGE_RECTANGLE = new AdFormat._(maps['adsense']['AdFormat']['LARGE_RECTANGLE']);
  static final LARGE_VERTICAL_LINK_UNIT = new AdFormat._(maps['adsense']['AdFormat']['LARGE_VERTICAL_LINK_UNIT']);
  static final LEADERBOARD = new AdFormat._(maps['adsense']['AdFormat']['LEADERBOARD']);
  static final MEDIUM_RECTANGLE = new AdFormat._(maps['adsense']['AdFormat']['MEDIUM_RECTANGLE']);
  static final MEDIUM_VERTICAL_LINK_UNIT = new AdFormat._(maps['adsense']['AdFormat']['MEDIUM_VERTICAL_LINK_UNIT']);
  static final SKYSCRAPER = new AdFormat._(maps['adsense']['AdFormat']['SKYSCRAPER']);
  static final SMALL_HORIZONTAL_LINK_UNIT = new AdFormat._(maps['adsense']['AdFormat']['SMALL_HORIZONTAL_LINK_UNIT']);
  static final SMALL_RECTANGLE = new AdFormat._(maps['adsense']['AdFormat']['SMALL_RECTANGLE']);
  static final SMALL_SQUARE = new AdFormat._(maps['adsense']['AdFormat']['SMALL_SQUARE']);
  static final SMALL_VERTICAL_LINK_UNIT = new AdFormat._(maps['adsense']['AdFormat']['SMALL_VERTICAL_LINK_UNIT']);
  static final SQUARE = new AdFormat._(maps['adsense']['AdFormat']['SQUARE']);
  static final VERTICAL_BANNER = new AdFormat._(maps['adsense']['AdFormat']['VERTICAL_BANNER']);
  static final WIDE_SKYSCRAPER = new AdFormat._(maps['adsense']['AdFormat']['WIDE_SKYSCRAPER']);
  static final X_LARGE_VERTICAL_LINK_UNIT = new AdFormat._(maps['adsense']['AdFormat']['X_LARGE_VERTICAL_LINK_UNIT']);

  AdFormat._(String value)
      : super(value);
}
