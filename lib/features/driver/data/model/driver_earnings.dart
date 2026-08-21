import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_earnings.g.dart';

@JsonSerializable()
class DriverEarnings {
  final bool success;
  final Data data;

  DriverEarnings({
    required this.success,
    required this.data,
});

  factory DriverEarnings.fromJson(Map<String, dynamic> json) => _$DriverEarningsFromJson(json);

  Map<String, dynamic> toJson() => _$DriverEarningsToJson(this);
}

@JsonSerializable()
class Data{
  final double totalEarnings;
  final int completedDeliveries;
  final int pendingDeliveries;
  final double rating;

  Data({
    required this.totalEarnings,
    required this.completedDeliveries,
    required this.pendingDeliveries,
    required this.rating,
});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}