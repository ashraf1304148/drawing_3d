import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShadowSphere extends StatelessWidget {
  final double diameter;
  const ShadowSphere({Key? key, required this.diameter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..rotateX(1.52)
        ..rotateY(0),
      origin: Offset(0, diameter * 1),
      child: Container(
        width: this.diameter,
        height: this.diameter,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,

          /*   boxShadow: [
          BoxShadow(blurRadius: 25, color: Colors.grey.withOpacity(0.6))
        ],*/
        ),
      ),
    );
  }
}
