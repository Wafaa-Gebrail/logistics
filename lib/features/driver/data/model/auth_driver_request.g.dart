// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_driver_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthDriverRequest _$AuthDriverRequestFromJson(Map<String, dynamic> json) =>
    AuthDriverRequest(
      userId: json['userId'] as String,
      vehicleType: json['vehicleType'] as String,
      vehiclePlate: json['vehiclePlate'] as String,
      maxWeightKg: (json['maxWeightKg'] as num).toDouble(),
      maxVolumeCm3: (json['maxVolumeCm3'] as num).toDouble(),
    );

Map<String, dynamic> _$AuthDriverRequestToJson(AuthDriverRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'vehicleType': instance.vehicleType,
      'vehiclePlate': instance.vehiclePlate,
      'maxWeightKg': instance.maxWeightKg,
      'maxVolumeCm3': instance.maxVolumeCm3,
    };
