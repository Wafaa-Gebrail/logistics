import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/order/data/model/create_order_request.dart';
import 'package:delivery_platform/features/order/data/model/create_order_response.dart';
import 'package:delivery_platform/features/order/data/model/order_details.dart';
import 'package:delivery_platform/features/order/data/model/orders.dart';

class OrderRepo {
  final AllApiService _apiService;

  OrderRepo(this._apiService);

  Future<ApiResult<CreateOrderResponse>> addOrder(
      CreateOrderRequest createOrderRequest) async {
    try {
      print("AddOrderRepo: calling API with ${createOrderRequest.toJson()}");

      final response =
      await _apiService.createOrder(createOrderRequest);

      print("AddOrderRepo: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }

  // Get Orders With Query Parameters
  Future<ApiResult<Orders>> getOrders({
    String? status,
    int? limit,
    int? offset,
  }) async {
    try {
      final response = await _apiService.orders(
        status: status,
        limit: limit,
        offset: offset,
      );

      print("GetOrdersRepo: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);

      print("GetOrders error: $handledError");

      return ApiResult.failure(handledError);
    }
  }

  // Order Details
  Future<ApiResult<OrderDetails>> getOrdersDetails(String id) async {
    try {
      final response = await _apiService.orderDetails(id);

      print("GetOrderDetailsRepo: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);

      print("GetOrderDetails error: $handledError");

      return ApiResult.failure(handledError);
    }
  }

  // Cancel Order
  Future<ApiResult<void>> cancelOrder(String id) async {
    try {
      await _apiService.cancelOrder(id);

      print("CancelOrderRepo: success");

      return const ApiResult.success(null);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);

      print("CancelOrder error: $handledError");

      return ApiResult.failure(handledError);
    }
  }
}