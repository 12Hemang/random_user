import 'dart:async';

import 'package:random_user/core/repo/user_repo.dart';
import 'package:random_user/core/response/base/base_response.dart';
import 'package:random_user/core/response/user/user_data.dart';

class AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<BaseResponse<List<UserData>>> getUserList(int count) =>
      _authRepository.getUserList(count);
}
