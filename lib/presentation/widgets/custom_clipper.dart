import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Clip type of figure.
enum ClipType {
  /// Bottom cliptype.
  bottom,

  /// Semie circle cliptype.
  semiCircle,

  /// half circle cliptype.
  halfCircle,

  /// multiple cliptype.
  multiple,
}

/// Construct a custom clipper.
class MyCustomClipper extends CustomClipper<Path> {
  final ClipType _clipType;

  /// Construct a new clipper.
  MyCustomClipper(this._clipType);

  @override
  Path getClip(Size size) {
    final Path path = Path();
    if (_clipType == ClipType.bottom) {
      _createBottom(size, path);
    } else if (_clipType == ClipType.semiCircle) {
      _createSemiCirle(size, path);
    } else if (_clipType == ClipType.halfCircle) {
      _createHalfCircle(size, path);
    } else if (_clipType == ClipType.multiple) {
      _createMultiple(size, path);
    }
    path.close();
    return path;
  }

  void _createSemiCirle(Size size, Path path) {
    path.lineTo(size.width / 1.40, 0);

    final Offset firstControlPoint =
        Offset(size.width / 1.30, size.height / 2.5);
    final Offset firstEndPoint = Offset(size.width / 1.85, size.height / 1.85);

    final Offset secondControlPoint =
        Offset(size.width / 4, size.height / 1.45);
    final Offset secondEndPoint = Offset(0, size.height / 1.75);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(0, size.height / 1.75);
  }

  void _createBottom(Size size, Path path) {
    path.lineTo(0, size.height / 1.19);
    final Offset secondControlPoint = Offset(size.width / 2, size.height);
    final Offset secondEndPoint = Offset(size.width, size.height / 1.19);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0);
  }

  void _createHalfCircle(Size size, Path path) {
    path.lineTo(size.width / 2, 0);
    final Offset firstControlPoint = Offset(size.width / 1.10, size.height / 2);
    final Offset firstEndPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(0, size.height);
  }

  void _createMultiple(Size size, Path path) {
    path.lineTo(0, size.height);

    double curXPos = 0;
    double curYPos = size.height;
    final Random rnd = Random();

    final double increment = size.width / 40;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height
          ? size.height - rnd.nextInt(50 - 0)
          : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
