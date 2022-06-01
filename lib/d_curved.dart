import 'package:flutter/material.dart';

class DCurved extends StatelessWidget {
  final Offset lightSource;
  final Widget? child;
  const DCurved({this.child, required this.lightSource, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final innerShadowWidth = lightSource.distance * 0.1;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        gradient: RadialGradient(
          // center:
          //     Alignment(this.widget.lightSource.dx, this.widget.lightSource.dy),
          colors: const [Color(0x661f1f1f), Colors.black],
          stops: [1 - innerShadowWidth, 1],
        ),
      ),
      child: child,
    );
  }
}
