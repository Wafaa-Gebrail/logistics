// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverAuthRequest _$DriverAuthRequestFromJson(Map<String, dynamic> json) =>
    DriverAuthRequest(
      userId: json['userId'] as String,
      vehicleType: json['vehicleType'] as String,
      vehiclePlate: json['vehiclePlate'] as String,
      maxWeightKg: (json['maxWeightKg'] as num).toInt(),
      maxVolumeCm3: (json['maxVolumeCm3'] as num).toInt(),
    );

Map<String, dynamic> _$DriverAuthRequestToJson(DriverAuthRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'vehicleType': instance.vehicleType,
      'vehiclePlate': instance.vehiclePlate,
      'maxWeightKg': instance.maxWeightKg,
      'maxVolumeCm3': instance.maxVolumeCm3,
    };
