import 'package:json_annotation/json_annotation.dart';

part 'orders.g.dart';

@JsonSerializable(explicitToJson: true)
class Orders {
  final bool success;
  final List<OrderItem> data;
  final PaginationMeta meta;

  Orders({
    required this.success,
    required this.data,
    required this.meta,
  });

  factory Orders.fromJson(Map<String, dynamic> json) =>
      _$OrdersFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OrderItem {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;

  final String userId;
  final String? driverId;

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

  final DateTime? pickupEarliestTime;
  final DateTime? pickupLatestTime;
  final DateTime? deliveryEarliestTime;
  final DateTime? deliveryLatestTime;

  final String totalAmount;
  final String driverEarnings;
  final String platformFee;

  final DateTime? assignedAt;
  final DateTime? pickupArrivalAt;
  final DateTime? pickupCompletedAt;
  final DateTime? depotArrivalAt;
  final DateTime? depotDepartureAt;
  final DateTime? deliveredAt;

  final String? deliveryOtp;

  final List<PackageItem> packages;

  OrderItem({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    this.driverId,
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
    this.assignedAt,
    this.pickupArrivalAt,
    this.pickupCompletedAt,
    this.depotArrivalAt,
    this.depotDepartureAt,
    this.deliveredAt,
    this.deliveryOtp,
    required this.packages,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
}

@JsonSerializable()
class PackageItem {
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String orderId;

  final String type;

  final int lengthCm;
  final int widthCm;
  final int heightCm;
  final int volumeCm3;

  final String weightKg;

  final bool isFragile;
  final bool isPerishable;

  final String? description; // ✅ FIX HERE

  final String conditionAtPickup;

  final String? pickupPhotoUrl;
  final String? pickupPhotoLocationUrl;
  final String? deliveryPhotoUrl;

  PackageItem({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.orderId,
    required this.type,
    required this.lengthCm,
    required this.widthCm,
    required this.heightCm,
    required this.volumeCm3,
    required this.weightKg,
    required this.isFragile,
    required this.isPerishable,
    this.description,
    required this.conditionAtPickup,
    this.pickupPhotoUrl,
    this.pickupPhotoLocationUrl,
    this.deliveryPhotoUrl,
  });

  factory PackageItem.fromJson(Map<String, dynamic> json) =>
      _$PackageItemFromJson(json);

  Map<String, dynamic> toJson() => _$PackageItemToJson(this);
}

@JsonSerializable()
class PaginationMeta {
  final int total;
  final int limit;
  final int offset;

  PaginationMeta({
    required this.total,
    required this.limit,
    required this.offset,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationMetaToJson(this);
}