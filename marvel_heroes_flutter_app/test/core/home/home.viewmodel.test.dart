import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_heroes_flutter_app/core/home/home.viewmodel.dart';

void main() {
  group("home view-model tests", () {
    test("build home page by getting characters categories", () {
      var homeViewModel = HomeViewModel();
      homeViewModel.isBuildOut.listen((isBuild) {
        expect(isBuild, true);
      });
    });
  });
}
