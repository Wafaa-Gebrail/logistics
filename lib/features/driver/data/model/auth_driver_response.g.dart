// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_driver_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDriverResponse _$AuthDriverResponseFromJson(Map<String, dynamic> json) =>
    AuthDriverResponse(
      userId: json['userId'] as String,
      vehicleType: json['vehicleType'] as String,
      vehiclePlate: json['vehiclePlate'] as String,
      status: json['status'] as String,
      maxWeightKg: json['maxWeightKg'] as String,
      maxVolumeCm3: (json['maxVolumeCm3'] as num).toDouble(),
      currentWeightKg: (json['currentWeightKg'] as num).toDouble(),
      currentVolumeCm3: (json['currentVolumeCm3'] as num).toDouble(),
      rating: json['rating'] as String,
      totalDeliveries: (json['totalDeliveries'] as num).toInt(),
      currentLat: (json['currentLat'] as num).toDouble(),
      currentLng: (json['currentLng'] as num).toDouble(),
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$AuthDriverResponseToJson(AuthDriverResponse instance) =>
    <String, dynamic>{
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
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
