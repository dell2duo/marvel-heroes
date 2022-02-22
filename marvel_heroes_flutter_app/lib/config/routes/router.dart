import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvel_heroes_flutter_app/core/home/home_view.dart';
import 'routes.constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewPageRoute:
      return MaterialPageRoute(builder: (_) => const HomeView());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
