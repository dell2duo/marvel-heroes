import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Icon icon;
  final List<Color> colors;
  const CategoryButton({
    Key? key,
    required this.icon,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
        elevation: 10,
        shape: const CircleBorder(),
        shadowColor: Colors.black54,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        width: 56,
        height: 56,
        child: icon,
      ),
    );
  }
}
