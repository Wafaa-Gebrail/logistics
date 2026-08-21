import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/accept_order.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/driver_location.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';

class NearbyOrdersRepo {
  final AllApiService _apiService;

  NearbyOrdersRepo(this._apiService);

  Future<ApiResult<NearbyOrders>> nearbyOrders() async {
    try {

      final response = await _apiService.nearbyOrders();

      final nearbyOrders = NearbyOrders.fromJson(response);

      return ApiResult.success(nearbyOrders);

    } catch (error) {

      final handledError = ErrorHandler.handle(error);

      return ApiResult.failure(handledError);
    }
  }

  Future<ApiResult<DriverLocation>> driverLocation(DriverLocation driverLocation) async {
    try {
      final response = await _apiService.driverLocation(driverLocation);

      print("CancelOrderRepo: success");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);

      print("CancelOrder error: $handledError");

      return ApiResult.failure(handledError);
    }
  }

  Future<ApiResult<NearbyOrdersData>> acceptOrder(AcceptOrder acceptOrder) async {
    try {
      final response = await _apiService.acceptOrder(acceptOrder);

      print("CancelOrderRepo: success");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);

      print("CancelOrder error: $handledError");

      return ApiResult.failure(handledError);
    }
  }

}
