import 'package:freezed_annotation/freezed_annotation.dart';
part'auth_driver_response.g.dart';

@JsonSerializable()
class AuthDriverResponse {
  final String userId;
  final String vehicleType;
  final String vehiclePlate;
  final String status;
  final String maxWeightKg;
  final double maxVolumeCm3;
  final double currentWeightKg;
  final double currentVolumeCm3;
  final String rating;
  final int totalDeliveries;
  final double currentLat;
  final double currentLng;
  final String id;
  final String createdAt;
  final String updatedAt;

  AuthDriverResponse({
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
    required this.id,
    required this.createdAt,
    required this.updatedAt,
});

  factory AuthDriverResponse.fromJson(Map<String, dynamic> json) => _$AuthDriverResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthDriverResponseToJson(this);
}