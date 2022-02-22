import 'dart:async';

import 'package:marvel_heroes_flutter_app/modules/models/category_row_model.dart';

class HomeViewModel {
  final _isBuild$ = StreamController<bool>();
  Sink<bool> get isBuildIn => _isBuild$.sink;
  Stream<bool> get isBuildOut => _isBuild$.stream;

  final _categories$ = StreamController<List<CaterogyRowModel>>();
  Sink<List<CaterogyRowModel>> get categoriesIn => _categories$.sink;
  Stream<List<CaterogyRowModel>> get categoriesOut => _categories$.stream;

  Future<bool> getCategories() async {
    isBuildIn.add(false);
    // await Future.delayed(const Duration(seconds: 1));
    isBuildIn.add(true);
    return true;
  }
}
