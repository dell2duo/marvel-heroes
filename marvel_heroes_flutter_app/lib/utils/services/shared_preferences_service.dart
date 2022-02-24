import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<bool> setString(String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }
}
