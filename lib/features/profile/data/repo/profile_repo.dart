import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/profile/data/model/driver_auth_request.dart';
import 'package:delivery_platform/features/profile/data/model/driver_auth_response.dart';
import 'package:delivery_platform/features/register/data/model/auth_response.dart';

class ProfileRepo {
  final AllApiService _apiService;

  ProfileRepo(this._apiService);

  Future<ApiResult<User>> profile() async {
    try {
      // Call API
      final response = await _apiService.profile();
      print("Profile: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      print("Profile error: $handledError");
      return ApiResult.failure(handledError);
    }
  }

  Future<ApiResult<DriverAuthResponse>> driverAuth(DriverAuthRequest driverAuthRequest) async {
    try {
      print("LoginRepo: calling API with ${driverAuthRequest.toJson()}");
      final response = await _apiService.driverAuth(driverAuthRequest);
      print("LoginRepo: API response $response");
      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }

}
