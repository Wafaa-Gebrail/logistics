import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateOrderResponse {
  final bool success;
  final String message;
  final OrderData data;

  CreateOrderResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderData {
  final String id;
  final String userId;
  final String status;
  final String deliveryMode;

  final String pickupAddress;
  final double pickupLatitude;
  final double pickupLongitude;
  final String pickupInstructions;
  final String pickupContactName;
  final String pickupContactPhone;

  final String dropoffAddress;
  final double dropoffLatitude;
  final double dropoffLongitude;
  final String dropoffInstructions;
  final String dropoffContactName;
  final String dropoffContactPhone;

  final String timeWindowPreference;

  final DateTime? pickupEarliestTime;
  final DateTime? pickupLatestTime;
  final DateTime? deliveryEarliestTime;
  final DateTime? deliveryLatestTime;

  final double totalAmount;
  final double driverEarnings;
  final double platformFee;

  final UserModel user;

  final String? driverId;

  final DateTime? assignedAt;
  final DateTime? pickupArrivalAt;
  final DateTime? pickupCompletedAt;
  final DateTime? depotArrivalAt;
  final DateTime? depotDepartureAt;
  final DateTime? deliveredAt;

  final String? deliveryOtp;

  final DateTime createdAt;
  final DateTime updatedAt;

  OrderData({
    required this.id,
    required this.userId,
    required this.status,
    required this.deliveryMode,
    required this.pickupAddress,
    required this.pickupLatitude,
    required this.pickupLongitude,
    required this.pickupInstructions,
    required this.pickupContactName,
    required this.pickupContactPhone,
    required this.dropoffAddress,
    required this.dropoffLatitude,
    required this.dropoffLongitude,
    required this.dropoffInstructions,
    required this.dropoffContactName,
    required this.dropoffContactPhone,
    required this.timeWindowPreference,
    this.pickupEarliestTime,
    this.pickupLatestTime,
    this.deliveryEarliestTime,
    this.deliveryLatestTime,
    required this.totalAmount,
    required this.driverEarnings,
    required this.platformFee,
    required this.user,
    this.driverId,
    this.assignedAt,
    this.pickupArrivalAt,
    this.pickupCompletedAt,
    this.depotArrivalAt,
    this.depotDepartureAt,
    this.deliveredAt,
    this.deliveryOtp,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}

@JsonSerializable()
class UserModel {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;

  final String email;
  final String phone;
  final String passwordHash;
  final String name;
  final String role;

  final String? address;

  final double? defaultPickupLat;
  final double? defaultPickupLng;

  final bool isActive;

  final String? firebaseToken;
  final String? stripeCustomerId;

  UserModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.phone,
    required this.passwordHash,
    required this.name,
    required this.role,
    this.address,
    this.defaultPickupLat,
    this.defaultPickupLng,
    required this.isActive,
    this.firebaseToken,
    this.stripeCustomerId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}