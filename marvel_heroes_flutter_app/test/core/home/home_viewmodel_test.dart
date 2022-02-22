import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes_flutter_app/core/home/home_viewmodel.dart';

void main() {
  group("home view-model tests", () {
    var homeViewModel;
    setUp(() => homeViewModel = HomeViewModel());

    test("build home page by getting characters categories", () {
      homeViewModel.getCategories();
      expect(homeViewModel.isBuildOut, emitsInOrder([false, true]));
    });
  });
}
