import 'package:delivery_platform/core/networking/api_constants.dart';
import 'package:delivery_platform/features/driver-orders/data/proof_upload_response.dart';
import 'package:delivery_platform/features/driver/data/model/driver_earnings.dart';
import 'package:delivery_platform/features/driver/data/model/driver_profile.dart';
import 'package:delivery_platform/features/driver/data/model/driver_status.dart';
import 'package:delivery_platform/features/login/data/model/login_request_body.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/accept_order.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/driver_location.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/order_status.dart';
import 'package:delivery_platform/features/order/data/model/create_order_request.dart';
import 'package:delivery_platform/features/order/data/model/create_order_response.dart';
import 'package:delivery_platform/features/order/data/model/order_details.dart';
import 'package:delivery_platform/features/order/data/model/orders.dart';
import 'package:delivery_platform/features/profile/data/model/driver_auth_request.dart';
import 'package:delivery_platform/features/profile/data/model/driver_auth_response.dart';
import 'package:delivery_platform/features/register/data/model/auth_response.dart';
import 'package:delivery_platform/features/register/data/model/register_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'all_api_service.g.dart';

// RestApi annotation for retrofit
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AllApiService{
  factory AllApiService(Dio dio, {String baseUrl}) = _AllApiService;


  ///////////////////////////////////// User /////////////////////////////////////
  // Login
  @POST(ApiConstants.login)
  Future<AuthResponse> login(
      @Body() LoginRequestBody loginRequestBody,
      );

  // Signup
  @POST(ApiConstants.signup)
  Future<AuthResponse> register(
      @Body() RegisterRequestBody registerRequestBody,
      );

  // Profile
  @GET(ApiConstants.profile)
  Future<User> profile();

  // Driver Auth
  @POST(ApiConstants.driverAuth)
  Future<DriverAuthResponse> driverAuth(
      @Body() DriverAuthRequest driverAuthRequest,
      );

  // Create Order
  @POST(ApiConstants.createOrder)
  Future<CreateOrderResponse> createOrder(
      @Body() CreateOrderRequest createOrderRequest,
      );

  // Orders
  @GET(ApiConstants.orders)
  Future<Orders> orders({
    @Query('status') String? status,
    @Query('limit') int? limit,
    @Query('offset') int? offset,
});

  // Order Details
  @GET(ApiConstants.orderDetails)
  Future<OrderDetails> orderDetails(
      @Path('id') String id,
    );

  // Cancel Order
  @PATCH(ApiConstants.cancelOrder)
  Future<void> cancelOrder(
      @Path('id') String id,
      );

  /////////// Driver
  // Driver Profile
  @GET(ApiConstants.driverProfile)
  Future<DriverProfile> driverProfile();

  // Driver Status
  @PATCH(ApiConstants.driverStatus)
  Future<DriverProfile> driverStatus(
      @Body() DriverStatus driverStatus,
      );

  // Driver Location
  @PATCH(ApiConstants.driverLocation)
  Future<DriverLocation> driverLocation(
      @Body() DriverLocation driverLocation,
      );

  // Nearby Orders
  @GET(ApiConstants.nearbyOrders)
  Future<dynamic> nearbyOrders();

  // Accept Order
  @POST(ApiConstants.acceptOrder)
  Future<NearbyOrdersData> acceptOrder(
      @Body() AcceptOrder acceptOrder,
      );

  // Order Status
  @PATCH(ApiConstants.orderStatus)
  Future<OrderStatus> orderStatus(
      @Body() OrderStatus orderStatus,
      @Path('orderId') String orderId,
      );

  // Driver Earnings
  @GET(ApiConstants.driverEarnings)
  Future<DriverEarnings> driverEarning();

  // Nearby Orders
  @GET(ApiConstants.driverAssignedOrders)
  Future<dynamic> assignedOrders();

  @MultiPart()
  @POST("/proof/upload-photo")
  Future<ProofUploadResponse> uploadProof({
    @Part(name: "photo") MultipartFile? photo,
    @Part(name: "orderId") String? orderId,
    @Part(name: "recipientName") String? recipientName,
    @Part(name: "notes") String? notes,
  });
}