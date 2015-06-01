library google_maps.build_file;

import 'package:js_wrapping/generators/js_interface_generator.dart';
import 'package:source_gen/source_gen.dart';

main(List<String> args) async {
  f(List<String> args) async => await build(args, [new JsInterfaceGenerator()],
      librarySearchPaths: ['example', 'lib', 'test']);
  await f(args);
  print(await f(args));
}
