// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
  success: json['success'] as bool,
  data: (json['data'] as List<dynamic>)
      .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: PaginationMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
  'success': instance.success,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'meta': instance.meta.toJson(),
};

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  userId: json['userId'] as String,
  driverId: json['driverId'] as String?,
  status: json['status'] as String,
  deliveryMode: json['deliveryMode'] as String,
  pickupAddress: json['pickupAddress'] as String,
  pickupLatitude: json['pickupLatitude'] as String,
  pickupLongitude: json['pickupLongitude'] as String,
  pickupInstructions: json['pickupInstructions'] as String,
  pickupContactName: json['pickupContactName'] as String,
  pickupContactPhone: json['pickupContactPhone'] as String,
  dropoffAddress: json['dropoffAddress'] as String,
  dropoffLatitude: json['dropoffLatitude'] as String,
  dropoffLongitude: json['dropoffLongitude'] as String,
  dropoffInstructions: json['dropoffInstructions'] as String,
  dropoffContactName: json['dropoffContactName'] as String,
  dropoffContactPhone: json['dropoffContactPhone'] as String,
  timeWindowPreference: json['timeWindowPreference'] as String,
  pickupEarliestTime: json['pickupEarliestTime'] == null
      ? null
      : DateTime.parse(json['pickupEarliestTime'] as String),
  pickupLatestTime: json['pickupLatestTime'] == null
      ? null
      : DateTime.parse(json['pickupLatestTime'] as String),
  deliveryEarliestTime: json['deliveryEarliestTime'] == null
      ? null
      : DateTime.parse(json['deliveryEarliestTime'] as String),
  deliveryLatestTime: json['deliveryLatestTime'] == null
      ? null
      : DateTime.parse(json['deliveryLatestTime'] as String),
  totalAmount: json['totalAmount'] as String,
  driverEarnings: json['driverEarnings'] as String,
  platformFee: json['platformFee'] as String,
  assignedAt: json['assignedAt'] == null
      ? null
      : DateTime.parse(json['assignedAt'] as String),
  pickupArrivalAt: json['pickupArrivalAt'] == null
      ? null
      : DateTime.parse(json['pickupArrivalAt'] as String),
  pickupCompletedAt: json['pickupCompletedAt'] == null
      ? null
      : DateTime.parse(json['pickupCompletedAt'] as String),
  depotArrivalAt: json['depotArrivalAt'] == null
      ? null
      : DateTime.parse(json['depotArrivalAt'] as String),
  depotDepartureAt: json['depotDepartureAt'] == null
      ? null
      : DateTime.parse(json['depotDepartureAt'] as String),
  deliveredAt: json['deliveredAt'] == null
      ? null
      : DateTime.parse(json['deliveredAt'] as String),
  deliveryOtp: json['deliveryOtp'] as String?,
  packages: (json['packages'] as List<dynamic>)
      .map((e) => PackageItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'userId': instance.userId,
  'driverId': instance.driverId,
  'status': instance.status,
  'deliveryMode': instance.deliveryMode,
  'pickupAddress': instance.pickupAddress,
  'pickupLatitude': instance.pickupLatitude,
  'pickupLongitude': instance.pickupLongitude,
  'pickupInstructions': instance.pickupInstructions,
  'pickupContactName': instance.pickupContactName,
  'pickupContactPhone': instance.pickupContactPhone,
  'dropoffAddress': instance.dropoffAddress,
  'dropoffLatitude': instance.dropoffLatitude,
  'dropoffLongitude': instance.dropoffLongitude,
  'dropoffInstructions': instance.dropoffInstructions,
  'dropoffContactName': instance.dropoffContactName,
  'dropoffContactPhone': instance.dropoffContactPhone,
  'timeWindowPreference': instance.timeWindowPreference,
  'pickupEarliestTime': instance.pickupEarliestTime?.toIso8601String(),
  'pickupLatestTime': instance.pickupLatestTime?.toIso8601String(),
  'deliveryEarliestTime': instance.deliveryEarliestTime?.toIso8601String(),
  'deliveryLatestTime': instance.deliveryLatestTime?.toIso8601String(),
  'totalAmount': instance.totalAmount,
  'driverEarnings': instance.driverEarnings,
  'platformFee': instance.platformFee,
  'assignedAt': instance.assignedAt?.toIso8601String(),
  'pickupArrivalAt': instance.pickupArrivalAt?.toIso8601String(),
  'pickupCompletedAt': instance.pickupCompletedAt?.toIso8601String(),
  'depotArrivalAt': instance.depotArrivalAt?.toIso8601String(),
  'depotDepartureAt': instance.depotDepartureAt?.toIso8601String(),
  'deliveredAt': instance.deliveredAt?.toIso8601String(),
  'deliveryOtp': instance.deliveryOtp,
  'packages': instance.packages.map((e) => e.toJson()).toList(),
};

PackageItem _$PackageItemFromJson(Map<String, dynamic> json) => PackageItem(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  orderId: json['orderId'] as String,
  type: json['type'] as String,
  lengthCm: (json['lengthCm'] as num).toInt(),
  widthCm: (json['widthCm'] as num).toInt(),
  heightCm: (json['heightCm'] as num).toInt(),
  volumeCm3: (json['volumeCm3'] as num).toInt(),
  weightKg: json['weightKg'] as String,
  isFragile: json['isFragile'] as bool,
  isPerishable: json['isPerishable'] as bool,
  description: json['description'] as String?,
  conditionAtPickup: json['conditionAtPickup'] as String,
  pickupPhotoUrl: json['pickupPhotoUrl'] as String?,
  pickupPhotoLocationUrl: json['pickupPhotoLocationUrl'] as String?,
  deliveryPhotoUrl: json['deliveryPhotoUrl'] as String?,
);

Map<String, dynamic> _$PackageItemToJson(PackageItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'orderId': instance.orderId,
      'type': instance.type,
      'lengthCm': instance.lengthCm,
      'widthCm': instance.widthCm,
      'heightCm': instance.heightCm,
      'volumeCm3': instance.volumeCm3,
      'weightKg': instance.weightKg,
      'isFragile': instance.isFragile,
      'isPerishable': instance.isPerishable,
      'description': instance.description,
      'conditionAtPickup': instance.conditionAtPickup,
      'pickupPhotoUrl': instance.pickupPhotoUrl,
      'pickupPhotoLocationUrl': instance.pickupPhotoLocationUrl,
      'deliveryPhotoUrl': instance.deliveryPhotoUrl,
    };

PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    PaginationMeta(
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationMetaToJson(PaginationMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
    };
