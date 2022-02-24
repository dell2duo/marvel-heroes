import 'package:flutter/material.dart';
import 'package:marvel_heroes_flutter_app/config/routes/routes.constants.dart';
import 'package:marvel_heroes_flutter_app/locator.dart';
import 'config/routes/router.dart' as router;

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewPageRoute,
    );
  }
}
