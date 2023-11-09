import 'package:flutter/material.dart';
import 'package:random_user/ui/splash/splash.dart';
import 'package:random_user/ui/user/user_home.dart';

class Routes {
  static const splashScreenRoute = '/splash_screen';
  static const userHome = 'user_home';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    debugPrint("Route Name ${settings.name} args $args ");

    switch (settings.name) {
      case userHome:
        return MaterialPageRoute(
            builder: (_) => const UserHome(), settings: settings);
      case splashScreenRoute:
      default:
        return MaterialPageRoute(
            builder: (_) => const SplashScreen(), settings: settings);
    }
  }
}
