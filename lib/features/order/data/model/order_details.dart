import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderDetails {
  final bool success;
  final OrderDetailsData data;

  OrderDetails({
    required this.success,
    required this.data,
  });

  factory OrderDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderDetailsData {
  final String id;
  final String createdAt;
  final String updatedAt;

  final String status;
  final String deliveryMode;

  final String pickupAddress;
  final String pickupLatitude;
  final String pickupLongitude;
  final String pickupInstructions;
  final String pickupContactName;
  final String pickupContactPhone;

  final String dropoffAddress;
  final String dropoffLatitude;
  final String dropoffLongitude;
  final String dropoffInstructions;
  final String dropoffContactName;
  final String dropoffContactPhone;

  final String timeWindowPreference;

  final String? pickupEarliestTime;
  final String? pickupLatestTime;
  final String? deliveryEarliestTime;
  final String? deliveryLatestTime;

  final String totalAmount;
  final String driverEarnings;
  final String platformFee;

  final String? assignedAt;
  final String? pickupArrivalAt;
  final String? pickupCompletedAt;
  final String? depotArrivalAt;
  final String? depotDepartureAt;
  final String? deliveredAt;

  final String? deliveryOtp;

  final List<PackageInfo> packages;
  final List<ShipmentInfo> shipments;
  final List<dynamic> payments;

  final UserModel user;
  final DriverModel? driver;

  OrderDetailsData({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
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
    required this.pickupEarliestTime,
    required this.pickupLatestTime,
    required this.deliveryEarliestTime,
    required this.deliveryLatestTime,
    required this.totalAmount,
    required this.driverEarnings,
    required this.platformFee,
    required this.assignedAt,
    required this.pickupArrivalAt,
    required this.pickupCompletedAt,
    required this.depotArrivalAt,
    required this.depotDepartureAt,
    required this.deliveredAt,
    required this.deliveryOtp,
    required this.packages,
    required this.shipments,
    required this.payments,
    required this.user,
    required this.driver,
  });

  factory OrderDetailsData.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PackageInfo {
  final String id;
  final String type;

  final double lengthCm;
  final double widthCm;
  final double heightCm;

  final String weightKg;

  final bool isFragile;
  final bool isPerishable;

  final String? description;
  final String conditionAtPickup;

  final String? pickupPhotoUrl;
  final String? deliveryPhotoUrl;

  PackageInfo({
    required this.id,
    required this.type,
    required this.lengthCm,
    required this.widthCm,
    required this.heightCm,
    required this.weightKg,
    required this.isFragile,
    required this.isPerishable,
    required this.description,
    required this.conditionAtPickup,
    required this.pickupPhotoUrl,
    required this.deliveryPhotoUrl,
  });

  factory PackageInfo.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PackageInfoToJson(this);
}

@JsonSerializable()
class ShipmentInfo {
  final String id;
  final String createdAt;
  final String updatedAt;

  final String? driverId;
  final String status;

  final String originAddress;
  final String originLatitude;
  final String originLongitude;

  final String destinationAddress;
  final String destinationLatitude;
  final String destinationLongitude;

  final double? calculatedDistanceKm;
  final int? estimatedDurationSeconds;

  final String? startedAt;
  final String? completedAt;

  final String? routeGeometry;

  ShipmentInfo({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.driverId,
    required this.status,
    required this.originAddress,
    required this.originLatitude,
    required this.originLongitude,
    required this.destinationAddress,
    required this.destinationLatitude,
    required this.destinationLongitude,
    required this.calculatedDistanceKm,
    required this.estimatedDurationSeconds,
    required this.startedAt,
    required this.completedAt,
    required this.routeGeometry,
  });

  factory ShipmentInfo.fromJson(Map<String, dynamic> json) =>
      _$ShipmentInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ShipmentInfoToJson(this);
}

@JsonSerializable()
class UserModel {
  final String id;
  final String createdAt;
  final String updatedAt;

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
    required this.address,
    required this.defaultPickupLat,
    required this.defaultPickupLng,
    required this.isActive,
    required this.firebaseToken,
    required this.stripeCustomerId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class DriverModel {
  final String? id;

  DriverModel({this.id});

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);

  Map<String, dynamic> toJson() => _$DriverModelToJson(this);
}