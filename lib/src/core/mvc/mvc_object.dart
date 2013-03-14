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

class MVCObject extends jsw.IsJsProxy {
  MVCObject() : super.newInstance(maps.MVCObject);
  MVCObject.fromJsProxy(js.Proxy jsProxy) : super.fromJsProxy(jsProxy);
  MVCObject.newInstance(objectName, [List args]) : super.newInstance(objectName, args);

  MapsEventListener addListener(String eventName, Function handler) {
    final callback = new jsw.Callback.many(handler);
    final instanciator = (js.Proxy jsProxy) => new MapsEventListener.fromJsProxy(jsProxy, () => callback.dispose());
    return $.addListener(eventName, callback).map(instanciator).value;
  }
  void bindTo(String key, MVCObject target, [String targetKey, bool noNotify]) { $.bindTo(key, target, targetKey, noNotify); }
  void changed(String key) { $.changed(key); }
  Object get(String key) => $.get(key).value;
  void notify(String key) { $.notify(key); }
  void set(String key, Object value) { $.set(key, value); }
  set values(Map<String, Object> values) {
    final valuesJs = new jsw.IsJsProxy();
    values.forEach((String key, Object value) {
      $[key] = value;
    });
    $.setValues(valuesJs);
  }
  void unbind(String key) { $.unbind(key); }
  void unbindAll() { $.unbindAll(); }
}