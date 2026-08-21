// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$NearbyOrdersDataToJson(NearbyOrdersData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
      'pickupEarliestTime': instance.pickupEarliestTime,
      'pickupLatestTime': instance.pickupLatestTime,
      'deliveryEarliestTime': instance.deliveryEarliestTime,
      'deliveryLatestTime': instance.deliveryLatestTime,
      'totalAmount': instance.totalAmount,
      'driverEarnings': instance.driverEarnings,
      'platformFee': instance.platformFee,
      'assignedAt': instance.assignedAt,
      'pickupArrivalAt': instance.pickupArrivalAt,
      'pickupCompletedAt': instance.pickupCompletedAt,
      'depotArrivalAt': instance.depotArrivalAt,
      'depotDepartureAt': instance.depotDepartureAt,
      'deliveredAt': instance.deliveredAt,
      'deliveryOtp': instance.deliveryOtp,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
    };

Map<String, dynamic> _$PackageDataToJson(PackageData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
