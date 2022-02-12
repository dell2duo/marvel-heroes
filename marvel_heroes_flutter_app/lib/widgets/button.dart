import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double size;
  final Widget child;
  final Color? color;
  final Function onPressed;
  const Button({
    Key? key,
    required this.size,
    required this.child,
    this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: Size.square(size),
        primary: color ?? Colors.transparent,
        side: BorderSide.none,
        shape: const CircleBorder(),
      ),
      onPressed: onPressed(),
      child: child,
    );
  }
}
