import 'package:enum_annotation/enum_annotation.dart';

part 'main.g.dart';

@generate
enum Shape {
  square(10, 'square'),
  circle(90, 'circle'),
  triangle(1, 'triangle'),
  hexagon(6, 'hexagon');

  final int data;
  final String message;

  const Shape(this.data, this.message);
}

void main() {
  final shape = Shape.circle;

  // all cases must be handled
  final message = shape.when(
    square: () => 'I am a Square',
    circle: () => 'I am a Circle',
    triangle: () => 'I am a Triangle',
    hexagon: () => 'I am a hexagon'
  );
  print(message); // I am a Circle

  // all cases may not be handled but `orElse` cannot be null
  final canBeRotated = shape.maybeWhen(
    hexagon: () => true,
    orElse: () => false,
  );
  print('Can be rotate: $canBeRotated'); // false

  // equivalent to print(shape == Shape.circle)
  print('The shape is circle: ${shape.isCircle}'); // true
  print('The shape is Square: ${shape.isSquare}'); // false
  print('The shape is Triangle: ${shape.isTriangle}'); // false
}
