import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_user/core/injections/injection.dart';
import 'package:random_user/core/module/di_module.dart';
import 'package:random_user/core/module/navigation_module.dart';
import 'package:random_user/generated/l10n.dart';
import 'package:random_user/utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Injection.inject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Random User',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            S.delegate,
          ],
          navigatorKey: getIt<NavigationModule>().navigatorKey,
          onGenerateRoute: Routes.onGenerateRoute,
          //initialRoute: Routes.splashScreenRoute,
        );
      },
    );
  }
}
