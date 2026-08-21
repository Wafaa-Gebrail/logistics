import 'package:freezed_annotation/freezed_annotation.dart';
part 'tracking_request.g.dart';
@JsonSerializable()

class TrackingRequest {
  final String? orderId;
  final String? pickupLatitude;
  final String? pickupLongitude;
  final String? dropoffLatitude;
  final String? dropoffLongitude;

  TrackingRequest({
    this.orderId,
    this.pickupLatitude,
    this.pickupLongitude,
    this.dropoffLatitude,
    this.dropoffLongitude,
  });

  factory TrackingRequest.fromJson(Map<String, dynamic> json) =>
      _$TrackingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TrackingRequestToJson(this);
}
