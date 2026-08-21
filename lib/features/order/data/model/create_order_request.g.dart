// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) =>
    CreateOrderRequest(
      deliveryMode: json['deliveryMode'] as String,
      pickup: LocationInfo.fromJson(json['pickup'] as Map<String, dynamic>),
      dropoff: LocationInfo.fromJson(json['dropoff'] as Map<String, dynamic>),
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PackageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateOrderRequestToJson(CreateOrderRequest instance) =>
    <String, dynamic>{
      'deliveryMode': instance.deliveryMode,
      'pickup': instance.pickup.toJson(),
      'dropoff': instance.dropoff.toJson(),
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) => LocationInfo(
  address: json['address'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  contactName: json['contactName'] as String,
  contactPhone: json['contactPhone'] as String,
  instructions: json['instructions'] as String,
);

Map<String, dynamic> _$LocationInfoToJson(LocationInfo instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'contactName': instance.contactName,
      'contactPhone': instance.contactPhone,
      'instructions': instance.instructions,
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
