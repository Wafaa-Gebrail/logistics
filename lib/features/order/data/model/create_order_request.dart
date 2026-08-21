import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateOrderRequest {
  final String deliveryMode;
  final LocationInfo pickup;
  final LocationInfo dropoff;
  final List<PackageInfo> packages;

  CreateOrderRequest({
    required this.deliveryMode,
    required this.pickup,
    required this.dropoff,
    required this.packages,
  });

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);
}

@JsonSerializable()
class LocationInfo {
  final String address;
  final double latitude;
  final double longitude;
  final String contactName;
  final String contactPhone;
  final String instructions;

  LocationInfo({
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.contactName,
    required this.contactPhone,
    required this.instructions,
  });

  factory LocationInfo.fromJson(Map<String, dynamic> json) =>
      _$LocationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LocationInfoToJson(this);
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