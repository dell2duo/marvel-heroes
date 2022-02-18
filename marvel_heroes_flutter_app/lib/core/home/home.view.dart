import 'package:flutter/material.dart';

import 'package:marvel_heroes_flutter_app/config/themes/custom_icons_icons.dart';
import 'package:marvel_heroes_flutter_app/config/themes/light/colors.styles.dart';
import 'package:marvel_heroes_flutter_app/config/themes/light/text.styles.dart';
import 'package:marvel_heroes_flutter_app/widgets/category_button.dart';
import 'package:marvel_heroes_flutter_app/widgets/hero_card.dart';
import 'package:marvel_heroes_flutter_app/widgets/linear_gradient_mask.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SafeArea(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.transparent,
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.menu,
                        size: 30.0,
                        color: AppColors.strongText,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: LinearGradientMask(
                    child: Icon(
                      CustomIcons.marvel,
                      size: 26,
                      color: AppColors.primary,
                    ),
                    colors: [
                      AppColors.secondButtonTop,
                      AppColors.secondButtonBottom,
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    highlightColor: Colors.transparent,
                    child: const SizedBox(
                      height: 40,
                      width: 40,
                      child: Icon(Icons.search, size: 30.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24),
            child: Row(
              children: const [
                Text(
                  'Bem vindo ao Marvel Heroes',
                  style: TextStyles.homeSubtitle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 24),
            child: Row(
              children: [
                Text(
                  'Escolha o seu\npersonagem',
                  style: TextStyles.homeTitle.copyWith(
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryButton(
                  colors: [
                    AppColors.firstButtonTop,
                    AppColors.firstButtonBottom,
                  ],
                  icon: Icon(
                    CustomIcons.hero,
                    size: 32,
                    color: AppColors.categoryIcon,
                  ),
                ),
                CategoryButton(
                  colors: [
                    AppColors.secondButtonTop,
                    AppColors.secondButtonBottom,
                  ],
                  icon: Icon(
                    CustomIcons.villain,
                    size: 32,
                    color: AppColors.categoryIcon,
                  ),
                ),
                CategoryButton(
                  colors: [
                    AppColors.thirdButtonTop,
                    AppColors.thirdButtonBottom,
                  ],
                  icon: Icon(
                    CustomIcons.antihero,
                    size: 32,
                    color: AppColors.categoryIcon,
                  ),
                ),
                CategoryButton(
                  colors: [
                    AppColors.fourthButtonTop,
                    AppColors.fourthButtonBottom,
                  ],
                  icon: Icon(
                    CustomIcons.alien,
                    size: 32,
                    color: AppColors.categoryIcon,
                  ),
                ),
                CategoryButton(
                  colors: [
                    AppColors.fifthButtonTop,
                    AppColors.fifthButtonBottom,
                  ],
                  icon: Icon(
                    CustomIcons.human,
                    size: 32,
                    color: AppColors.categoryIcon,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Heróis',
                  style: TextStyles.sectionTitle,
                ),
                Text(
                  'Ver tudo',
                  style: TextStyles.description,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 230,
            child: GridView.count(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              mainAxisSpacing: 16,
              childAspectRatio: 1.7,
              padding: const EdgeInsets.only(left: 24, right: 24),
              children: <Widget>[
                CharacterCard(
                  name: "Peter Parker",
                  heroName: "Homem Aranha",
                  image: "/chars/spider-man.png",
                  onTap: () {},
                ),
                CharacterCard(
                  name: "Peter Parker",
                  heroName: "Homem Aranha",
                  image: "./assets/images/chars/spider-man.png",
                  onTap: () {},
                ),
                CharacterCard(
                  name: "Peter Parker",
                  heroName: "Homem Aranha",
                  image: "../assets/images/chars/spider-man.png",
                  onTap: () {},
                ),
                CharacterCard(
                  name: "Peter Parker",
                  heroName: "Homem Aranha",
                  image: "assets/images/chars/spider-man.png",
                  onTap: () {},
                ),
                CharacterCard(
                  name: "Peter Parker",
                  heroName: "Homem Aranha",
                  image: "assets/images/chars/spider-man.png",
                  onTap: () {},
                ),
              ],
            ),
          )
          // SizedBox(
          //   height: 230,
          //   child: ListView(
          //     clipBehavior: Clip.none,
          //     scrollDirection: Axis.horizontal,
          //     padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          //     children: <Widget>[
          //       HeroCard(
          //         name: "Peter Parker",
          //         heroName: "Homem Aranha",
          //         image: "/chars/spider-man.png",
          //         onTap: () {},
          //       ),
          //       HeroCard(
          //         name: "Peter Parker",
          //         heroName: "Homem Aranha",
          //         image: "./assets/images/chars/spider-man.png",
          //         onTap: () {},
          //       ),
          //       HeroCard(
          //         name: "Peter Parker",
          //         heroName: "Homem Aranha",
          //         image: "../assets/images/chars/spider-man.png",
          //         onTap: () {},
          //       ),
          //       HeroCard(
          //         name: "Peter Parker",
          //         heroName: "Homem Aranha",
          //         image: "assets/images/chars/spider-man.png",
          //         onTap: () {},
          //       ),
          //       HeroCard(
          //         name: "Peter Parker",
          //         heroName: "Homem Aranha",
          //         image: "assets/images/chars/spider-man.png",
          //         onTap: () {},
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
