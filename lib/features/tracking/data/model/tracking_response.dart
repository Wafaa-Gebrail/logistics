import 'package:freezed_annotation/freezed_annotation.dart';
part 'tracking_response.g.dart';
@JsonSerializable()

class TrackingResponse {
  final int id;
  final String? orderId;
  final LocationResponse pickupLocation;
  final LocationResponse dropoffLocation;
  final LocationResponse? currentLocation;
  final DateTime? expectedDeliveryTime;
  final DistanceResponse distances;

  TrackingResponse({
    required this.id,
    this.orderId,
    required this.pickupLocation,
    required this.dropoffLocation,
    this.currentLocation,
    this.expectedDeliveryTime,
    required this.distances,
  });

  factory TrackingResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TrackingResponseToJson(this);

}
@JsonSerializable()
class LocationResponse{
  final String latitude;
  final String longitude;

  LocationResponse({
    required this.latitude,
    required this.longitude,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}
@JsonSerializable()
class DistanceResponse{
  final TransportDistance car;
  final TransportDistance bike;
  final TransportDistance foot;

  DistanceResponse({
    required this.car,
    required this.bike,
    required this.foot,
  });

  factory DistanceResponse.fromJson(Map<String, dynamic> json) =>
      _$DistanceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DistanceResponseToJson(this);
}
@JsonSerializable()
class TransportDistance{
  final double distanceKm;
  final double durationSeconds;
  final double durationMinutes;
  final double durationHours;

  TransportDistance({
    required this.distanceKm,
    required this.durationSeconds,
    required this.durationMinutes,
    required this.durationHours,
  });

  factory TransportDistance.fromJson(Map<String, dynamic> json) =>
      _$TransportDistanceFromJson(json);

  Map<String, dynamic> toJson() => _$TransportDistanceToJson(this);
}