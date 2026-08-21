import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/login/data/model/login_request_body.dart';
import 'package:delivery_platform/features/register/data/model/auth_response.dart';

class LoginRepo{
  final AllApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<AuthResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      print("LoginRepo: calling API with ${loginRequestBody.toJson()}");
      final response = await _apiService.login(loginRequestBody);
      print("LoginRepo: API response $response");
      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }
}