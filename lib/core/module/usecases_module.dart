import 'package:random_user/core/module/di_module.dart';
import 'package:random_user/core/repo/user_repo.dart';
import 'package:random_user/ui/user/usecase/user_usecases.dart';

class UseCasesModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerFactory<AuthUseCase>(
        () => AuthUseCase(getIt.get<AuthRepoImpl>()));
  }
}
