import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_order.g.dart';

@JsonSerializable(explicitToJson: true)
class CancelOrder {
  final bool success;
  final String message;
  final CancelOrderDetails data;

  CancelOrder({
    required this.success,
    required this.message,
    required this.data,
  });

  factory CancelOrder.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CancelOrderDetails {
  final String id;
  final String status;
  final String deliveryMode;
  final String pickupAddress;
  final String dropoffAddress;
  final List<PackageInfo> packages;
  final double totalAmount;
  final DateTime createdAt;

  CancelOrderDetails({
    required this.id,
    required this.status,
    required this.deliveryMode,
    required this.pickupAddress,
    required this.dropoffAddress,
    required this.packages,
    required this.totalAmount,
    required this.createdAt,
  });

  factory CancelOrderDetails.fromJson(Map<String, dynamic> json) =>
      _$CancelOrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$CancelOrderDetailsToJson(this);
}

@JsonSerializable()
class PackageInfo {
  final String type;
  final double lengthCm;
  final double widthCm;
  final double heightCm;
  final double weightKg;
  final bool isFragile;
  final String description;

  PackageInfo({
    required this.type,
    required this.lengthCm,
    required this.widthCm,
    required this.heightCm,
    required this.weightKg,
    required this.isFragile,
    required this.description,
  });

  factory PackageInfo.fromJson(Map<String, dynamic> json) =>
      _$PackageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PackageInfoToJson(this);
}