// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverAuthResponse _$DriverAuthResponseFromJson(Map<String, dynamic> json) =>
    DriverAuthResponse(
      id: json['id'] as String,
      userId: json['userId'] as String,
      vehicleType: json['vehicleType'] as String,
      vehiclePlate: json['vehiclePlate'] as String,
      status: json['status'] as String,
      maxWeightKg: json['maxWeightKg'] as String,
      maxVolumeCm3: (json['maxVolumeCm3'] as num).toInt(),
      currentWeightKg: (json['currentWeightKg'] as num).toInt(),
      currentVolumeCm3: (json['currentVolumeCm3'] as num).toInt(),
      rating: json['rating'] as String,
      totalDeliveries: (json['totalDeliveries'] as num).toInt(),
      currentLat: (json['currentLat'] as num?)?.toDouble(),
      currentLng: (json['currentLng'] as num?)?.toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$DriverAuthResponseToJson(DriverAuthResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'vehicleType': instance.vehicleType,
      'vehiclePlate': instance.vehiclePlate,
      'status': instance.status,
      'maxWeightKg': instance.maxWeightKg,
      'maxVolumeCm3': instance.maxVolumeCm3,
      'currentWeightKg': instance.currentWeightKg,
      'currentVolumeCm3': instance.currentVolumeCm3,
      'rating': instance.rating,
      'totalDeliveries': instance.totalDeliveries,
      'currentLat': instance.currentLat,
      'currentLng': instance.currentLng,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
