import 'package:flutter/widgets.dart';
import 'package:marvel_heroes_flutter_app/config/themes/light/colors.styles.dart';

class TextStyles {
  static const TextStyle profileTitle = TextStyle(
    fontSize: 40,
    fontFamily: 'Gilroy Heavy',
    color: AppColors.strongText,
  );
  static const TextStyle homeTitle = TextStyle(
    fontSize: 32,
    fontFamily: 'Gilroy Heavy',
    color: AppColors.strongText,
  );
  static const TextStyle cardTitle = TextStyle(
    fontSize: 20,
    fontFamily: 'Gilroy Heavy',
    color: AppColors.background,
  );
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 18,
    fontFamily: 'Gilroy Bold',
    color: AppColors.primary,
  );
  static const TextStyle profileSubtitle = TextStyle(
    fontSize: 16,
    fontFamily: 'Gilroy Heavy',
    color: AppColors.strongText,
  );
  static const TextStyle homeSubtitle = TextStyle(
    fontSize: 14,
    fontFamily: 'Gilroy SemiBold',
    color: AppColors.lightText,
  );
  static const TextStyle description = TextStyle(
    fontSize: 14,
    fontFamily: 'Gilroy Medium',
    color: AppColors.lightText,
  );
  static const TextStyle caracteristic = TextStyle(
    fontSize: 12,
    fontFamily: 'Gilroy Medium',
    color: AppColors.lightText,
  );
  static const TextStyle ability = TextStyle(
    fontSize: 12,
    fontFamily: 'Gilroy Regular',
    color: AppColors.lightText,
  );
  static TextStyle cardSubtitle = TextStyle(
    fontSize: 10,
    fontFamily: 'Gilroy Medium',
    color: AppColors.background.withOpacity(0.75),
  );
}
