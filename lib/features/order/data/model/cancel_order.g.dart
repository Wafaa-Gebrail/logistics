// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelOrder _$CancelOrderFromJson(Map<String, dynamic> json) => CancelOrder(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: CancelOrderDetails.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CancelOrderToJson(CancelOrder instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data.toJson(),
    };

CancelOrderDetails _$CancelOrderDetailsFromJson(Map<String, dynamic> json) =>
    CancelOrderDetails(
      id: json['id'] as String,
      status: json['status'] as String,
      deliveryMode: json['deliveryMode'] as String,
      pickupAddress: json['pickupAddress'] as String,
      dropoffAddress: json['dropoffAddress'] as String,
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PackageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CancelOrderDetailsToJson(CancelOrderDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'deliveryMode': instance.deliveryMode,
      'pickupAddress': instance.pickupAddress,
      'dropoffAddress': instance.dropoffAddress,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
      'totalAmount': instance.totalAmount,
      'createdAt': instance.createdAt.toIso8601String(),
    };

PackageInfo _$PackageInfoFromJson(Map<String, dynamic> json) => PackageInfo(
  type: json['type'] as String,
  lengthCm: (json['lengthCm'] as num).toDouble(),
  widthCm: (json['widthCm'] as num).toDouble(),
  heightCm: (json['heightCm'] as num).toDouble(),
  weightKg: (json['weightKg'] as num).toDouble(),
  isFragile: json['isFragile'] as bool,
  description: json['description'] as String,
);

Map<String, dynamic> _$PackageInfoToJson(PackageInfo instance) =>
    <String, dynamic>{
      'type': instance.type,
      'lengthCm': instance.lengthCm,
      'widthCm': instance.widthCm,
      'heightCm': instance.heightCm,
      'weightKg': instance.weightKg,
      'isFragile': instance.isFragile,
      'description': instance.description,
    };
