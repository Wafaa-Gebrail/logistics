// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$DriverProfileToJson(DriverProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'vehicleType': instance.vehicleType,
      'vehiclePlate': instance.vehiclePlate,
      'status': instance.status,
      'currentLat': instance.currentLat,
      'currentLng': instance.currentLng,
      'maxWeightKg': instance.maxWeightKg,
      'maxVolumeCm3': instance.maxVolumeCm3,
      'currentWeightKg': instance.currentWeightKg,
      'currentVolumeCm3': instance.currentVolumeCm3,
      'rating': instance.rating,
      'totalDeliveries': instance.totalDeliveries,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'user': instance.user?.toJson(),
    };

Map<String, dynamic> _$DriverUserToJson(DriverUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'name': instance.name,
      'role': instance.role,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'address': instance.address,
      'defaultPickupLat': instance.defaultPickupLat,
      'defaultPickupLng': instance.defaultPickupLng,
      'firebaseToken': instance.firebaseToken,
      'stripeCustomerId': instance.stripeCustomerId,
    };
