// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingRequest _$TrackingRequestFromJson(Map<String, dynamic> json) =>
    TrackingRequest(
      orderId: json['orderId'] as String?,
      pickupLatitude: json['pickupLatitude'] as String?,
      pickupLongitude: json['pickupLongitude'] as String?,
      dropoffLatitude: json['dropoffLatitude'] as String?,
      dropoffLongitude: json['dropoffLongitude'] as String?,
    );

Map<String, dynamic> _$TrackingRequestToJson(TrackingRequest instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'pickupLatitude': instance.pickupLatitude,
      'pickupLongitude': instance.pickupLongitude,
      'dropoffLatitude': instance.dropoffLatitude,
      'dropoffLongitude': instance.dropoffLongitude,
    };
