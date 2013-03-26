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

class MVCObject extends jsw.TypedProxy {
  static MVCObject cast(js.Proxy proxy) => proxy == null ? null : new MVCObject.fromProxy(proxy);

  MVCObject([js.FunctionProxy function, List args]) : super(function != null ? function : maps.MVCObject, args);
  MVCObject.fromProxy(js.Proxy proxy) : super.fromProxy(proxy);

  MapsEventListener addListener(String eventName, Function handler) {
    final callback = new js.Callback.many(handler);
    final js.Proxy proxy = $unsafe.addListener(eventName, callback);
    return proxy == null ? null : new MapsEventListener.fromProxy(proxy, () => callback.dispose());
  }
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) { $unsafe.bindTo(key, target, targetKey, noNotify); }
  void changed(String key) { $unsafe.changed(key); }
  Object get(String key) => $unsafe.get(key);
  void notify(String key) { $unsafe.notify(key); }
  void set(String key, Object value) { $unsafe.set(key, value); }
  set values(Map<String, Object> values) {
    final valuesJs = jsw.JsObjectToMapAdapter.cast(js.map({}));
    values.forEach((String key, Object value) {
      valuesJs[key] = value;
    });
    $unsafe.setValues(valuesJs);
  }
  void unbind(String key) { $unsafe.unbind(key); }
  void unbindAll() { $unsafe.unbindAll(); }
}