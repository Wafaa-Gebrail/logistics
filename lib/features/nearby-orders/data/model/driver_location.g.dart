// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverLocation _$DriverLocationFromJson(Map<String, dynamic> json) =>
    DriverLocation(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      accuracy: (json['accuracy'] as num).toInt(),
    );

Map<String, dynamic> _$DriverLocationToJson(DriverLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'accuracy': instance.accuracy,
    };
