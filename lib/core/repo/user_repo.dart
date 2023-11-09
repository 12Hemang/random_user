import 'package:flutter/widgets.dart';
import 'package:random_user/core/api/auth_api.dart';
import 'package:random_user/core/db/app_db.dart';
import 'package:random_user/core/module/api_module.dart';
import 'package:random_user/core/response/base/base_response.dart';
import 'package:random_user/core/response/user/user_data.dart';

abstract class AuthRepository {
  Future<BaseResponse<List<UserData>>> getUserList(int count);
}

class AuthRepoImpl extends AuthRepository {
  AuthApi authApi;
  NetworkCheck connectivity;
  LocalDB localDB;

  AuthRepoImpl(
      {required this.authApi,
      required this.connectivity,
      required this.localDB});

  @override
  Future<BaseResponse<List<UserData>>> getUserList(int count) async {
    debugPrint("hasConnection:  ${connectivity.isConnected} ");

    BaseResponse<List<UserData>> response = connectivity.isConnected
        ? await authApi.getUserList(count)
        : BaseResponse(data: localDB.categoryList);

    return response;
  }
}
