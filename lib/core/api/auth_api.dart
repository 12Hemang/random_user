import 'package:dio/dio.dart';
import 'package:random_user/core/response/base/base_response.dart';
import 'package:random_user/core/response/user/user_data.dart';
import 'package:retrofit/http.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @GET('/api')
  Future<BaseResponse<List<UserData>>> getUserList(
    @Query("results") int count,
  );
}
