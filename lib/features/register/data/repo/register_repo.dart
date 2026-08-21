import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/register/data/model/auth_response.dart';
import 'package:delivery_platform/features/register/data/model/register_request_body.dart';

class RegisterRepo{
  final AllApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<AuthResponse>> register(RegisterRequestBody registerRequestBody) async {
    try {
      print("RegisterRepo: calling API with ${registerRequestBody.toJson()}");
      final response = await _apiService.register(registerRequestBody);
      print("RegisterRepo: API response $response");
      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }
}