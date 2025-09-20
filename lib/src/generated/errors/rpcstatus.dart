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

part of '../errors.dart';

@JS('google.maps.RPCStatus')
extension type RPCStatus._(JSAny _) implements JSAny {
  external static RPCStatus get ABORTED;
  external static RPCStatus get ALREADY_EXISTS;
  external static RPCStatus get CANCELLED;
  external static RPCStatus get DATA_LOSS;
  external static RPCStatus get DEADLINE_EXCEEDED;
  external static RPCStatus get FAILED_PRECONDITION;
  external static RPCStatus get INTERNAL;
  external static RPCStatus get INVALID_ARGUMENT;
  external static RPCStatus get NOT_FOUND;
  external static RPCStatus get OK;
  external static RPCStatus get OUT_OF_RANGE;
  external static RPCStatus get PERMISSION_DENIED;
  external static RPCStatus get RESOURCE_EXHAUSTED;
  external static RPCStatus get UNAUTHENTICATED;
  external static RPCStatus get UNAVAILABLE;
  external static RPCStatus get UNIMPLEMENTED;
  external static RPCStatus get UNKNOWN;
}
