import 'package:drawing_3d/d_curved.dart';
import 'package:drawing_3d/traiangle.dart';
import 'package:flutter/cupertino.dart';
import 'package:drawing_3d/shadow_sphere.dart';
import 'package:drawing_3d/sphere_density.dart';

class SphereBall extends StatefulWidget {
  const SphereBall({Key? key}) : super(key: key);

  @override
  _SphereBallState createState() => _SphereBallState();
}

class _SphereBallState extends State<SphereBall> {
  static const lightSource = Offset(0, -0.75);

  @override
  Widget build(BuildContext context) {
    final size = Size.square(MediaQuery.of(context).size.shortestSide);
    final longestSide =
        Size.square(MediaQuery.of(context).size.longestSide).longestSide;

    // print(MediaQuery.of(context).size.width);
    print(longestSide);

    return Stack(
      children: [
        ShadowSphere(diameter: size.shortestSide),
        SphereDensity(
          lightSource: lightSource,
          diameter: size.shortestSide,
          child: Transform(
              origin: size.center(Offset.zero),
              transform: Matrix4.identity()..scale(0.5),
              child: DCurved(
                lightSource: lightSource,
                child: Triangle(text: "Baraa"),
              )),
        ),
      ],
    );
  }
}
