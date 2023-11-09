import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:random_user/core/api/auth_api.dart';
import 'package:random_user/core/module/di_module.dart';

class ApiModule extends DIModule {
  @override
  Future<void> provides() async {
    final dio = await setup();
    getIt.registerSingleton(dio);
    getIt.registerSingleton((NetworkCheck()));
    getIt.registerSingleton(AuthApi(dio));
  }

  static FutureOr<Dio> setup() async {
    final options = BaseOptions(
      connectTimeout: 30 * 1000,
      receiveTimeout: 30 * 1000,
      sendTimeout: 30 * 1000,
      responseType: ResponseType.json,
      baseUrl: "https://randomuser.me",
    );
    final Dio dio = Dio(options);

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: false,
        maxWidth: 90,
      ),
    );

    return dio;
  }
}

class NetworkCheck {
  bool isConnected = false;

  NetworkCheck() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      isConnected = (result == ConnectivityResult.wifi) ||
          (result == ConnectivityResult.mobile);
    });
    Connectivity().checkConnectivity();
  }
}
