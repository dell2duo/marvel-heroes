import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes_flutter_app/core/home/home_viewmodel.dart';
import 'package:marvel_heroes_flutter_app/modules/models/character_model.dart';

void main() {
  group("home view-model tests", () {
    var homeViewModel = HomeViewModel();
    test("build home page by getting characters categories", () {
      homeViewModel.getCategories();
      expect(homeViewModel.isBuildOut, emitsInOrder([false, true]));
    });

    test("should get a character by search for his name", () async {
      List<CharacterModel> foundCharacters =
          await homeViewModel.getCharacterByName("Spider-");
      expect(foundCharacters.length, greaterThan(0));
    });
  });
}
