import 'package:freezed_annotation/freezed_annotation.dart';
part 'driver_auth_request.g.dart';

@JsonSerializable()
class DriverAuthRequest {
  final String userId;
  final String vehicleType;
  final String vehiclePlate;
  final int maxWeightKg;
  final int maxVolumeCm3;

  DriverAuthRequest({
    required this.userId,
    required this.vehicleType,
    required this.vehiclePlate,
    required this.maxWeightKg,
    required this.maxVolumeCm3,
});

  factory DriverAuthRequest.fromJson(Map<String, dynamic> json) => _$DriverAuthRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DriverAuthRequestToJson(this);
}