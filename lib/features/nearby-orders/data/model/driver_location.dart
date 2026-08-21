import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_location.g.dart';

@JsonSerializable()
class DriverLocation{
  final double latitude;
  final double longitude;
  final int accuracy;

  DriverLocation({
    required this.latitude,
    required this.longitude,
    required this.accuracy,
});

  factory DriverLocation.fromJson(Map<String, dynamic> json) => _$DriverLocationFromJson(json);

  Map<String, dynamic> toJson() => _$DriverLocationToJson(this);
}