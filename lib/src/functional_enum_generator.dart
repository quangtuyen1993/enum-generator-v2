import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:enum_annotation/enum_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'enum_generator.dart';

class FunctionalEnumGenerator extends GeneratorForAnnotation<EnumGenerator> {
  const FunctionalEnumGenerator();

  @override
  FutureOr<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element.kind == ElementKind.ENUM && element is EnumElement) {
      return EnumExtensionGenerator(element).generate();
    } else {
      throw InvalidGenerationSourceError(
        '''@generate can only be applied on enum types. Instead, you are trying to use is it on a ${element.kind} ${element.name}.''',
        element: element,
      );
    }
  }
}
