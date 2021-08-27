import 'package:daily_page/ui/home/home_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const home = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        settings: settings,
        builder: (_) {
          switch (settings.name) {
            default:
              return const HomePage();
          }
        });
  }
}
