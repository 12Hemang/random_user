import 'dart:async';

import 'package:flutter/material.dart';
import 'package:random_user/core/module/di_module.dart';
import 'package:random_user/core/module/navigation_module.dart';
import 'package:random_user/generated/l10n.dart';
import 'package:random_user/utils/routes.dart';
import 'package:random_user/values/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        getIt<NavigationModule>().pushReplacementNamed(Routes.userHome);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(S.current.welcome, style: textBold18Primary),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
