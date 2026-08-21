import 'package:freezed_annotation/freezed_annotation.dart';
part 'driver_status.g.dart';

@JsonSerializable()
class DriverStatus {
  final String status;

  DriverStatus({
    required this.status,
});

  factory DriverStatus.fromJson(Map<String, dynamic> json) => _$DriverStatusFromJson(json);

  Map<String, dynamic> toJson() => _$DriverStatusToJson(this);
}