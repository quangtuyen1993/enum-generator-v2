// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// FunctionalEnumGenerator
// **************************************************************************

extension ShapeX on Shape {
  bool get isSquare => this == Shape.square;
  bool get isCircle => this == Shape.circle;
  bool get isTriangle => this == Shape.triangle;
  bool get isHexagon => this == Shape.hexagon;
  R map<R>({
    required R Function(Shape square) square,
    required R Function(Shape circle) circle,
    required R Function(Shape triangle) triangle,
    required R Function(Shape hexagon) hexagon,
  }) {
    switch (this) {
      case Shape.square:
        return square(this);
      case Shape.circle:
        return circle(this);
      case Shape.triangle:
        return triangle(this);
      case Shape.hexagon:
        return hexagon(this);
    }
  }

  R maybeMap<R>({
    R Function(Shape square)? square,
    R Function(Shape circle)? circle,
    R Function(Shape triangle)? triangle,
    R Function(Shape hexagon)? hexagon,
    required R Function() orElse,
  }) {
    if (this == Shape.square && square != null) {
      return square(this);
    } else if (this == Shape.circle && circle != null) {
      return circle(this);
    } else if (this == Shape.triangle && triangle != null) {
      return triangle(this);
    } else if (this == Shape.hexagon && hexagon != null) {
      return hexagon(this);
    } else {
      return orElse();
    }
  }

  R maybeWhen<R>({
    R Function()? square,
    R Function()? circle,
    R Function()? triangle,
    R Function()? hexagon,
    required R Function() orElse,
  }) {
    if (this == Shape.square && square != null) {
      return square();
    } else if (this == Shape.circle && circle != null) {
      return circle();
    } else if (this == Shape.triangle && triangle != null) {
      return triangle();
    } else if (this == Shape.hexagon && hexagon != null) {
      return hexagon();
    } else {
      return orElse();
    }
  }

  R when<R>({
    required R Function() square,
    required R Function() circle,
    required R Function() triangle,
    required R Function() hexagon,
  }) {
    switch (this) {
      case Shape.square:
        return square();
      case Shape.circle:
        return circle();
      case Shape.triangle:
        return triangle();
      case Shape.hexagon:
        return hexagon();
    }
  }

  R? whenOrNull<R>({
    R Function()? square,
    R Function()? circle,
    R Function()? triangle,
    R Function()? hexagon,
    R Function()? orElse,
  }) {
    if (this == Shape.square && square != null) {
      return square();
    } else if (this == Shape.circle && circle != null) {
      return circle();
    } else if (this == Shape.triangle && triangle != null) {
      return triangle();
    } else if (this == Shape.hexagon && hexagon != null) {
      return hexagon();
    } else {
      return orElse?.call();
    }
  }
}
