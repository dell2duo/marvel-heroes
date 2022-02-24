import 'package:get_it/get_it.dart';

import 'utils/services/shared_preferences_service.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<SharedPreferencesService>(
      () => SharedPreferencesService());
}
