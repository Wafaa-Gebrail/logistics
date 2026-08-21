// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingResponse _$TrackingResponseFromJson(Map<String, dynamic> json) =>
    TrackingResponse(
      id: (json['id'] as num).toInt(),
      orderId: json['orderId'] as String?,
      pickupLocation: LocationResponse.fromJson(
        json['pickupLocation'] as Map<String, dynamic>,
      ),
      dropoffLocation: LocationResponse.fromJson(
        json['dropoffLocation'] as Map<String, dynamic>,
      ),
      currentLocation: json['currentLocation'] == null
          ? null
          : LocationResponse.fromJson(
              json['currentLocation'] as Map<String, dynamic>,
            ),
      expectedDeliveryTime: json['expectedDeliveryTime'] == null
          ? null
          : DateTime.parse(json['expectedDeliveryTime'] as String),
      distances: DistanceResponse.fromJson(
        json['distances'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$TrackingResponseToJson(TrackingResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'pickupLocation': instance.pickupLocation,
      'dropoffLocation': instance.dropoffLocation,
      'currentLocation': instance.currentLocation,
      'expectedDeliveryTime': instance.expectedDeliveryTime?.toIso8601String(),
      'distances': instance.distances,
    };

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) =>
    LocationResponse(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$LocationResponseToJson(LocationResponse instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

DistanceResponse _$DistanceResponseFromJson(Map<String, dynamic> json) =>
    DistanceResponse(
      car: TransportDistance.fromJson(json['car'] as Map<String, dynamic>),
      bike: TransportDistance.fromJson(json['bike'] as Map<String, dynamic>),
      foot: TransportDistance.fromJson(json['foot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DistanceResponseToJson(DistanceResponse instance) =>
    <String, dynamic>{
      'car': instance.car,
      'bike': instance.bike,
      'foot': instance.foot,
    };

TransportDistance _$TransportDistanceFromJson(Map<String, dynamic> json) =>
    TransportDistance(
      distanceKm: (json['distanceKm'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toDouble(),
      durationMinutes: (json['durationMinutes'] as num).toDouble(),
      durationHours: (json['durationHours'] as num).toDouble(),
    );

Map<String, dynamic> _$TransportDistanceToJson(TransportDistance instance) =>
    <String, dynamic>{
      'distanceKm': instance.distanceKm,
      'durationSeconds': instance.durationSeconds,
      'durationMinutes': instance.durationMinutes,
      'durationHours': instance.durationHours,
    };
