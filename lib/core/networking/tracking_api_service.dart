import 'package:delivery_platform/core/networking/api_constants.dart';
import 'package:delivery_platform/features/tracking/data/model/tracking_request.dart';
import 'package:delivery_platform/features/tracking/data/model/tracking_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'tracking_api_service.g.dart';

// RestApi annotation for retrofit
@RestApi(baseUrl: ApiConstants.apiBaseUrl2)
abstract class TrackingApiService{
  factory TrackingApiService(Dio dio, {String baseUrl}) = _TrackingApiService;

  // Tracking Order
  @POST(ApiConstants.addTracking)
  Future<TrackingResponse> createTracking(
      @Body() TrackingRequest trackingRequest,
      );

  // Tracking Details
  @GET(ApiConstants.trackingDetails)
  Future<TrackingResponse> trackingDetails(
      @Path('orderId') String orderId,
      );

  }