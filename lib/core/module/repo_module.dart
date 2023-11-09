import 'package:random_user/core/api/auth_api.dart';
import 'package:random_user/core/db/app_db.dart';
import 'package:random_user/core/module/api_module.dart';
import 'package:random_user/core/module/di_module.dart';
import 'package:random_user/core/repo/user_repo.dart';

class RepoModule extends DIModule {
  @override
  Future<void> provides() async {
    await getIt.isReady<LocalDB>();
    getIt.registerFactory<AuthRepoImpl>(() => AuthRepoImpl(
        authApi: getIt.get<AuthApi>(),
        connectivity: getIt<NetworkCheck>(),
        localDB: getIt<LocalDB>()));
  }
}
