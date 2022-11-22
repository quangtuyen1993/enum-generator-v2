# Generating the functional Enum
_[Freezed](https://pub.dev/packages/freezed), but for enums._

This is a lightweight library to create functionality for enum class type and make enum usage much better.

## Installation

Add the following dependencies to your project.

```yaml

dependencies:
  enum_annotation: ^0.0.2

dev_dependencies:
  build_runner: any
  enum_generator: any
```

## Usage
#### Now generate the code using build_runner.
Dart only:
```yaml
dart pub run build_runner build
// OR
dart pub run build_runner watch
```

Flutter:
```yaml
flutter pub run build_runner build
// OR
flutter pub run build_runner watch
```

#### With pure dart
```dart
import 'package:enum_generator/src/annotation.dart';

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
```

