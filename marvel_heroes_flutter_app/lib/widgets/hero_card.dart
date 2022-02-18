import 'package:flutter/material.dart';
import 'package:marvel_heroes_flutter_app/config/themes/light/text.styles.dart';

class CharacterCard extends StatelessWidget {
  final String name;
  final String heroName;
  final String image;
  final VoidCallback onTap;
  const CharacterCard({
    Key? key,
    required this.name,
    required this.heroName,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        padding: const EdgeInsets.all(0),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 230,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.85),
                  ],
                  stops: const [
                    0.5,
                    0.8,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.start,
                    style: TextStyles.cardSubtitle,
                  ),
                  Text(
                    heroName,
                    style: TextStyles.cardTitle.copyWith(
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
