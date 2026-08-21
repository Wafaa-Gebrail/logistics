// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String,
);

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{'user': instance.user, 'token': instance.token};

User _$UserFromJson(Map<String, dynamic> json) => User(
  email: json['email'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  role: json['role'] as String,
  isActive: json['isActive'] as bool,
  address: json['address'] as String?,
  defaultPickupLat: json['defaultPickupLat'] as String?,
  defaultPickupLng: json['defaultPickupLng'] as String?,
  firebaseToken: json['firebaseToken'] as String?,
  stripeCustomerId: json['stripeCustomerId'] as String?,
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'email': instance.email,
  'phone': instance.phone,
  'name': instance.name,
  'role': instance.role,
  'isActive': instance.isActive,
  'address': instance.address,
  'defaultPickupLat': instance.defaultPickupLat,
  'defaultPickupLng': instance.defaultPickupLng,
  'firebaseToken': instance.firebaseToken,
  'stripeCustomerId': instance.stripeCustomerId,
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
