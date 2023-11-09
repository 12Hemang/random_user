import 'package:flutter/material.dart';
import 'package:random_user/core/module/di_module.dart';

class NavigationModule extends DIModule {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> pushNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> push(route) {
    return navigatorKey.currentState!.push(route);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {bool navigatorRoute = false}) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => navigatorRoute);
  }

  void closeScreen<T>({T? result}) {
    return navigatorKey.currentState!.pop(result);
  }

  goBack<T>({T? result}) {
    return navigatorKey.currentState!.pop(result);
  }

  @override
  Future<void> provides() async {
    getIt.registerSingleton(NavigationModule());
  }
}
