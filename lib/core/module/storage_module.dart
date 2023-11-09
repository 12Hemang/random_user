import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_user/core/db/app_db.dart';
import 'package:random_user/core/module/di_module.dart';

class StorageModule extends DIModule {
  @override
  Future<void> provides() async {
    await registerHiveDB();
    getIt.registerSingletonAsync<LocalDB>(() => LocalDB.getInstance());
    // getIt.registerFactory<AuthStore>(
    //     () => AuthStore(authUseCase: getIt.get<AuthUseCase>()));
  }

  registerHiveDB() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive..init(appDocumentDir.path);
    //..registerAdapter(UserDataAdapter());
  }
}
