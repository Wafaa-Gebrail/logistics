// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    CreateOrderResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: OrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
  CreateOrderResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data.toJson(),
};

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
  id: json['id'] as String,
  userId: json['userId'] as String,
  status: json['status'] as String,
  deliveryMode: json['deliveryMode'] as String,
  pickupAddress: json['pickupAddress'] as String,
  pickupLatitude: (json['pickupLatitude'] as num).toDouble(),
  pickupLongitude: (json['pickupLongitude'] as num).toDouble(),
  pickupInstructions: json['pickupInstructions'] as String,
  pickupContactName: json['pickupContactName'] as String,
  pickupContactPhone: json['pickupContactPhone'] as String,
  dropoffAddress: json['dropoffAddress'] as String,
  dropoffLatitude: (json['dropoffLatitude'] as num).toDouble(),
  dropoffLongitude: (json['dropoffLongitude'] as num).toDouble(),
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
  totalAmount: (json['totalAmount'] as num).toDouble(),
  driverEarnings: (json['driverEarnings'] as num).toDouble(),
  platformFee: (json['platformFee'] as num).toDouble(),
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
  driverId: json['driverId'] as String?,
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
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
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
  'user': instance.user.toJson(),
  'driverId': instance.driverId,
  'assignedAt': instance.assignedAt?.toIso8601String(),
  'pickupArrivalAt': instance.pickupArrivalAt?.toIso8601String(),
  'pickupCompletedAt': instance.pickupCompletedAt?.toIso8601String(),
  'depotArrivalAt': instance.depotArrivalAt?.toIso8601String(),
  'depotDepartureAt': instance.depotDepartureAt?.toIso8601String(),
  'deliveredAt': instance.deliveredAt?.toIso8601String(),
  'deliveryOtp': instance.deliveryOtp,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
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
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
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
