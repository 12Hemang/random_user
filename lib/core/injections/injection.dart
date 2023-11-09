import 'package:random_user/core/module/api_module.dart';
import 'package:random_user/core/module/bloc_module.dart';
import 'package:random_user/core/module/navigation_module.dart';
import 'package:random_user/core/module/repo_module.dart';
import 'package:random_user/core/module/storage_module.dart';
import 'package:random_user/core/module/usecases_module.dart';

class Injection {
  static Future inject() async {
    await StorageModule().provides();
    await ApiModule().provides();
    await RepoModule().provides();
    await NavigationModule().provides();
    await UseCasesModule().provides();
    await BlocModule().provides();
  }
}
