import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/driver/data/model/driver_profile.dart';
import 'package:delivery_platform/features/driver/data/model/driver_status.dart';

class DriverRepo {
  final AllApiService _apiService;

  DriverRepo(this._apiService);

  Future<ApiResult<DriverProfile>> driverProfile() async {
    try {
      // Call API
      final response = await _apiService.driverProfile();
      print("Profile: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      print("Profile error: $handledError");
      return ApiResult.failure(handledError);
    }
  }

  Future<ApiResult<DriverProfile>> driverStatus(DriverStatus driverStatus) async {
    try {
      final response = await _apiService.driverStatus(driverStatus);

      print("CancelOrderRepo: success");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);

      print("CancelOrder error: $handledError");

      return ApiResult.failure(handledError);
    }
  }

}
