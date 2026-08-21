import 'package:freezed_annotation/freezed_annotation.dart';
part'auth_driver_request.g.dart';

@JsonSerializable()
class AuthDriverRequest {
final String userId;
final String vehicleType;
final String vehiclePlate;
final double maxWeightKg;
final double maxVolumeCm3;

AuthDriverRequest({
  required this.userId,
  required this.vehicleType,
  required this.vehiclePlate,
  required this.maxWeightKg,
  required this.maxVolumeCm3,
});

factory AuthDriverRequest.fromJson(Map<String, dynamic> json) => _$AuthDriverRequestFromJson(json);

Map<String, dynamic> toJson() => _$AuthDriverRequestToJson(this);
}