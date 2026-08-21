// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_earnings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverEarnings _$DriverEarningsFromJson(Map<String, dynamic> json) =>
    DriverEarnings(
      success: json['success'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriverEarningsToJson(DriverEarnings instance) =>
    <String, dynamic>{'success': instance.success, 'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  totalEarnings: (json['totalEarnings'] as num).toDouble(),
  completedDeliveries: (json['completedDeliveries'] as num).toInt(),
  pendingDeliveries: (json['pendingDeliveries'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'totalEarnings': instance.totalEarnings,
  'completedDeliveries': instance.completedDeliveries,
  'pendingDeliveries': instance.pendingDeliveries,
  'rating': instance.rating,
};
