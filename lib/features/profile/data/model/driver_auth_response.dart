import 'package:json_annotation/json_annotation.dart';

part 'driver_auth_response.g.dart';

@JsonSerializable()
class DriverAuthResponse {
  final String id;
  final String userId;
  final String vehicleType;
  final String vehiclePlate;
  final String status;

  final String maxWeightKg;
  final int maxVolumeCm3;

  final int currentWeightKg;
  final int currentVolumeCm3;

  final String rating;
  final int totalDeliveries;

  final double? currentLat;
  final double? currentLng;

  final DateTime createdAt;
  final DateTime updatedAt;

  DriverAuthResponse({
    required this.id,
    required this.userId,
    required this.vehicleType,
    required this.vehiclePlate,
    required this.status,
    required this.maxWeightKg,
    required this.maxVolumeCm3,
    required this.currentWeightKg,
    required this.currentVolumeCm3,
    required this.rating,
    required this.totalDeliveries,
    required this.currentLat,
    required this.currentLng,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DriverAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverAuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DriverAuthResponseToJson(this);
}