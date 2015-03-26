library google_maps.build_file;

import 'package:js/generators/js_interface_generator.dart';
import 'package:source_gen/source_gen.dart';

void main(List<String> args) {
  build(args, const [const JsInterfaceGenerator()],
      librarySearchPaths: ['lib']).then(print);
}
