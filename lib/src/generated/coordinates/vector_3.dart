// Copyright 2015 Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of '../coordinates.dart';

@JS('google.maps.Vector3D')
extension type Vector3D._(Vector3DLiteral _) implements Vector3DLiteral {
  external Vector3D(
    JSAny /*Vector3D|Vector3DLiteral*/ value,
  );
  external num x;
  external num y;
  external num z;
  external bool equals(
    JSAny? /*(Vector3D|Vector3DLiteral)?*/ other,
  );
  external Vector3DLiteral toJSON();
}
