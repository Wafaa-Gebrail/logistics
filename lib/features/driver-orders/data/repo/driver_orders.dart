import 'dart:io';

import 'package:delivery_platform/core/networking/api_error_handler.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/features/driver-orders/data/proof_upload_response.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:dio/dio.dart';

class DriverOrdersRepo {
  final AllApiService _apiService;

  DriverOrdersRepo(this._apiService);

  Future<ApiResult<NearbyOrders>> driverOrders() async {
    try {

      final response = await _apiService.assignedOrders();

      final driverOrders = NearbyOrders.fromJson(response);

      return ApiResult.success(driverOrders);

    } catch (error) {

      final handledError = ErrorHandler.handle(error);

      return ApiResult.failure(handledError);
    }
  }

  Future<ApiResult<ProofUploadResponse>> uploadProof({
    required File photo,
    required String orderId,
    String? recipientName,
    String? notes,
  }) async {
    try {
      final multipartPhoto = await MultipartFile.fromFile(
        photo.path,
        filename: photo.path.split('/').last,
      );

      final response = await _apiService.uploadProof(
        photo: multipartPhoto,
        orderId: orderId,
        recipientName: recipientName,
        notes: notes,
      );

      return ApiResult.success(response);
    } catch (error) {
      final handledError = ErrorHandler.handle(error);
      return ApiResult.failure(handledError);
    }
  }
}
