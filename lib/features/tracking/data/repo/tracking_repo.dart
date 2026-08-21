import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/tracking_api_service.dart';
import 'package:delivery_platform/features/tracking/data/model/tracking_request.dart';
import 'package:delivery_platform/features/tracking/data/model/tracking_response.dart';

class TrackingRepo {
  final TrackingApiService _apiService;

  TrackingRepo(this._apiService);

  Future<ApiResult<TrackingResponse>> createTracking(
      TrackingRequest trackingRequest) async
  {
    try {
      print("AddTrackingRepo: calling API with ${trackingRequest.toJson()}");

      final response =
      await _apiService.createTracking(trackingRequest);

      print("AddTrackingRepo: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }

  Future<ApiResult<TrackingResponse>> trackingDetails(String orderId) async
  {
    try {
      print("AddTrackingRepo: calling API with ${orderId}");

      final response =
      await _apiService.trackingDetails(orderId);

      print("AddTrackingRepo: API response $response");

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }
}