import 'package:enum_generators/src/annotation.dart';

part 'main.g.dart';

@generate
enum Shape { square, circle, triangle }

void main() {
  final shape = Shape.circle;

  // all cases must be handled
  final message = shape.when(
    square: () => 'I am a Square',
    circle: () => 'I am a Circle',
    triangle: () => 'I am a Triangle',
  );
  print(message); // I am a Circle

  // all cases may not be handled but `orElse` cannot be null
  final canBeRotated = shape.maybeWhen(
    circle: () => false,
    orElse: () => true,
  );
  print('Can be rotate: $canBeRotated'); // false

  // equivalent to print(shape == Shape.circle)
  print('The shape is circle: ${shape.isCircle}'); // true
  print('The shape is Square: ${shape.isSquare}'); // false
  print('The shape is Triangle: ${shape.isTriangle}'); // false
}
