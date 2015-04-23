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

part of google_maps;

final mapTypeStyleElementTypeCodec =
    new BiMapCodec<MapTypeStyleElementType, dynamic>({
  MapTypeStyleElementType.ALL: 'all',
  MapTypeStyleElementType.GEOMETRY: 'geometry',
  MapTypeStyleElementType.GEOMETRY_FILL: 'geometry.fill',
  MapTypeStyleElementType.GEOMETRY_STROKE: 'geometry.stroke',
  MapTypeStyleElementType.LABELS: 'labels',
  MapTypeStyleElementType.LABELS_ICON: 'labels.icon',
  MapTypeStyleElementType.LABELS_TEXT: 'labels.text',
  MapTypeStyleElementType.LABELS_TEXT_FILL: 'labels.text.fill',
  MapTypeStyleElementType.LABELS_TEXT_STROKE: 'labels.text.stroke',
});
@JsCodec(#mapTypeStyleElementTypeCodec)
enum MapTypeStyleElementType {
  ALL,
  GEOMETRY,
  GEOMETRY_FILL,
  GEOMETRY_STROKE,
  LABELS,
  LABELS_ICON,
  LABELS_TEXT,
  LABELS_TEXT_FILL,
  LABELS_TEXT_STROKE
}
