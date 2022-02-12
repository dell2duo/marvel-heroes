import 'package:flutter/material.dart';

class LinearGradientMask extends StatelessWidget {
  final Widget child;
  final List<Color> colors;

  const LinearGradientMask({
    Key? key,
    required this.child,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
          stops: const [
            0.3,
            1,
          ],
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: child,
    );
  }
}
