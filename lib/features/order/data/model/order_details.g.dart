// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) => OrderDetails(
  success: json['success'] as bool,
  data: OrderDetailsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OrderDetailsToJson(OrderDetails instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

OrderDetailsData _$OrderDetailsDataFromJson(Map<String, dynamic> json) =>
    OrderDetailsData(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
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
      pickupEarliestTime: json['pickupEarliestTime'] as String?,
      pickupLatestTime: json['pickupLatestTime'] as String?,
      deliveryEarliestTime: json['deliveryEarliestTime'] as String?,
      deliveryLatestTime: json['deliveryLatestTime'] as String?,
      totalAmount: json['totalAmount'] as String,
      driverEarnings: json['driverEarnings'] as String,
      platformFee: json['platformFee'] as String,
      assignedAt: json['assignedAt'] as String?,
      pickupArrivalAt: json['pickupArrivalAt'] as String?,
      pickupCompletedAt: json['pickupCompletedAt'] as String?,
      depotArrivalAt: json['depotArrivalAt'] as String?,
      depotDepartureAt: json['depotDepartureAt'] as String?,
      deliveredAt: json['deliveredAt'] as String?,
      deliveryOtp: json['deliveryOtp'] as String?,
      packages: (json['packages'] as List<dynamic>)
          .map((e) => PackageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      shipments: (json['shipments'] as List<dynamic>)
          .map((e) => ShipmentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: json['payments'] as List<dynamic>,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailsDataToJson(OrderDetailsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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
      'shipments': instance.shipments.map((e) => e.toJson()).toList(),
      'payments': instance.payments,
      'user': instance.user.toJson(),
      'driver': instance.driver?.toJson(),
    };

PackageInfo _$PackageInfoFromJson(Map<String, dynamic> json) => PackageInfo(
  id: json['id'] as String,
  type: json['type'] as String,
  lengthCm: (json['lengthCm'] as num).toDouble(),
  widthCm: (json['widthCm'] as num).toDouble(),
  heightCm: (json['heightCm'] as num).toDouble(),
  weightKg: json['weightKg'] as String,
  isFragile: json['isFragile'] as bool,
  isPerishable: json['isPerishable'] as bool,
  description: json['description'] as String?,
  conditionAtPickup: json['conditionAtPickup'] as String,
  pickupPhotoUrl: json['pickupPhotoUrl'] as String?,
  deliveryPhotoUrl: json['deliveryPhotoUrl'] as String?,
);

Map<String, dynamic> _$PackageInfoToJson(PackageInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'lengthCm': instance.lengthCm,
      'widthCm': instance.widthCm,
      'heightCm': instance.heightCm,
      'weightKg': instance.weightKg,
      'isFragile': instance.isFragile,
      'isPerishable': instance.isPerishable,
      'description': instance.description,
      'conditionAtPickup': instance.conditionAtPickup,
      'pickupPhotoUrl': instance.pickupPhotoUrl,
      'deliveryPhotoUrl': instance.deliveryPhotoUrl,
    };

ShipmentInfo _$ShipmentInfoFromJson(Map<String, dynamic> json) => ShipmentInfo(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  driverId: json['driverId'] as String?,
  status: json['status'] as String,
  originAddress: json['originAddress'] as String,
  originLatitude: json['originLatitude'] as String,
  originLongitude: json['originLongitude'] as String,
  destinationAddress: json['destinationAddress'] as String,
  destinationLatitude: json['destinationLatitude'] as String,
  destinationLongitude: json['destinationLongitude'] as String,
  calculatedDistanceKm: (json['calculatedDistanceKm'] as num?)?.toDouble(),
  estimatedDurationSeconds: (json['estimatedDurationSeconds'] as num?)?.toInt(),
  startedAt: json['startedAt'] as String?,
  completedAt: json['completedAt'] as String?,
  routeGeometry: json['routeGeometry'] as String?,
);

Map<String, dynamic> _$ShipmentInfoToJson(ShipmentInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'driverId': instance.driverId,
      'status': instance.status,
      'originAddress': instance.originAddress,
      'originLatitude': instance.originLatitude,
      'originLongitude': instance.originLongitude,
      'destinationAddress': instance.destinationAddress,
      'destinationLatitude': instance.destinationLatitude,
      'destinationLongitude': instance.destinationLongitude,
      'calculatedDistanceKm': instance.calculatedDistanceKm,
      'estimatedDurationSeconds': instance.estimatedDurationSeconds,
      'startedAt': instance.startedAt,
      'completedAt': instance.completedAt,
      'routeGeometry': instance.routeGeometry,
    };

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: json['id'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  passwordHash: json['passwordHash'] as String,
  name: json['name'] as String,
  role: json['role'] as String,
  address: json['address'] as String?,
  defaultPickupLat: (json['defaultPickupLat'] as num?)?.toDouble(),
  defaultPickupLng: (json['defaultPickupLng'] as num?)?.toDouble(),
  isActive: json['isActive'] as bool,
  firebaseToken: json['firebaseToken'] as String?,
  stripeCustomerId: json['stripeCustomerId'] as String?,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'email': instance.email,
  'phone': instance.phone,
  'passwordHash': instance.passwordHash,
  'name': instance.name,
  'role': instance.role,
  'address': instance.address,
  'defaultPickupLat': instance.defaultPickupLat,
  'defaultPickupLng': instance.defaultPickupLng,
  'isActive': instance.isActive,
  'firebaseToken': instance.firebaseToken,
  'stripeCustomerId': instance.stripeCustomerId,
};

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) =>
    DriverModel(id: json['id'] as String?);

Map<String, dynamic> _$DriverModelToJson(DriverModel instance) =>
    <String, dynamic>{'id': instance.id};
