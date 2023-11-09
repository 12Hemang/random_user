import 'dart:async';

import 'package:random_user/core/module/di_module.dart';
import 'package:random_user/ui/user/bloc/user_bloc.dart';
import 'package:random_user/ui/user/usecase/user_usecases.dart';

class BlocModule extends DIModule {
  @override
  Future<void> provides() async {
    getIt.registerSingleton(UserBloc(authUseCase: getIt<AuthUseCase>()));
  }
}
