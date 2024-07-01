import 'package:petitparser/definition.dart';
import 'package:petitparser/parser.dart';

final typeParser = TypeDefinition().build<AType>();

class TypeDefinition extends GrammarDefinition<AType> {
  @override
  Parser<AType> start() => ref0(optionalValue).end();
  Parser<AType> optionalValue() =>
      ((ref0(union) | ref0(value)) & 'optional'.toParser().trim().optional())
          .map((value) => switch (value) {
                [final AType value, null] => value,
                [final AType value, _] => value..optional = true,
                _ => throw Error(),
              });
  Parser<AType> union() =>
      (ref0(value) & ('|'.toParser().trim() & ref0(value)).plus()).map(
          (value) =>
              TUnion(value.deeplyFlattened.whereType<AType>().toList(), false));
  Parser<AType> value() =>
      ref1(parentheziedOrNot, (ref0(function) | ref0(type)).cast<AType>());
  Parser<AType> function() => ('function('.toParser() &
          ref0(functionParameters).optional() &
          '):'.toParser().trim() &
          (ref0(union) | ref0(value) | ref1(parenthezied, ref0(optionalValue))))
      .map((value) => TFunction(value[1] ?? [], value.last, false));
  Parser<List<AType>> functionParameters() => (ref0(optionalValue) &
          (','.toParser().trim() & ref0(optionalValue)).star())
      .map((value) => value.deeplyFlattened.whereType<AType>().toList());
  Parser<T> parentheziedOrNot<T>(Parser<T> inner) =>
      (parenthezied(inner) | inner).cast();
  Parser<T> parenthezied<T>(Parser<T> inner) =>
      ('('.toParser() & inner & ')'.toParser()).map((value) => value[1]);
  Parser<AType> type() => (ref0(token) & ref0(typeParameters).optional())
      .map((value) => switch (value) {
            ['?', null] => TType('JSAny', [], true),
            ['*', null] => TType('JSAny', [], true),
            ['Object', final types] =>
              TType('JSObject', [], false, 'Object<$types>'),
            [final token, final types] => TType(token, types ?? [], false),
            _ => throw Error(),
          });
  Parser<List<AType>> typeParameters() => ('<'.toParser() &
          ref0(optionalValue) &
          (','.toParser().trim() & ref0(optionalValue)).star() &
          '>'.toParser())
      .trim()
      .map((value) => value.whereType<AType>().toList());
  Parser<String> token() => ('*'.toParser() |
          '?'.toParser() |
          (word().plus() & ('.'.toParser() & word().plus()).star()))
      .trim()
      .map((value) => switch (value) {
            String() => value,
            List() => value.deeplyFlattened.join(),
            _ => throw Error(),
          });
}

extension on Iterable {
  Iterable get deeplyFlattened =>
      expand((e) => e is Iterable ? e.deeplyFlattened : [e]);
}

sealed class AType {
  AType(this.optional);
  bool optional;
}

class TUnion extends AType {
  TUnion(this.types, super.optional);
  List<AType> types;
  @override
  String toString() {
    var s = types.join('|');
    if (optional) s = '($s)?';
    return s;
  }
}

class TFunction extends AType {
  TFunction(this.parameters, this.returnType, super.optional);
  List<AType> parameters;
  AType returnType;
  @override
  String toString() => [
        returnType,
        ' Function(',
        parameters.join(','),
        ')',
        if (optional) '?',
      ].join();
}

class TType extends AType {
  TType(this.name, this.genericParameters, super.optional, [this.comment]);
  String name;
  List<AType> genericParameters;
  String? comment;
  @override
  String toString() => [
        name,
        if (genericParameters.isNotEmpty) ...[
          '<',
          genericParameters.join(','),
          '>',
        ],
        if (comment != null) '/*$comment*/',
        if (optional) '?',
      ].join();
}

void main() {
  [
    'string',
    '(string)',
    'string optional',
    'Data.Feature',
    'Iterable<string>',
    'function(): string',
    'function(Point): string',
    'function(Point, number): string',
    'function(Point): string optional',
    'function(Point): (string optional)',
    'function(Point, number): (string optional) optional',
    'MVCArray<MapType optional>',
    'Array<?>',
    '(function(TripPolylineCustomizationFunctionParams): void)|PolylineOptions optional',
    'function(VehicleMarkerCustomizationFunctionParams): void',
    'function(VehicleMarkerCustomizationFunctionParams): void optional',
    'google.maps.maps3d.Map3DElement',
    'MVCArray<LatLng|WeightedLocation>|Array<LatLng|WeightedLocation>',
  ].map(typeParser.parse).map((e) => e.value).forEach(print);
  final e = typeParser.parse(
      'MVCArray<LatLng|WeightedLocation>|Array<LatLng|WeightedLocation>');
  print(e);
}
