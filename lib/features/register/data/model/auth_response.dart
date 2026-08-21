import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse{
  final User user;
  final String token;

  AuthResponse({
    required this.user,
    required this.token,

  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);

}

@JsonSerializable()
class User {
  final String email;
  final String phone;
  final String name;
  final String role;
  final bool isActive;

  final String? address;
  final String? defaultPickupLat;
  final String? defaultPickupLng;
  final String? firebaseToken;
  final String? stripeCustomerId;

  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.email,
    required this.name,
    required this.phone,
    required this.role,
    required this.isActive,

    this.address,
    this.defaultPickupLat,
    this.defaultPickupLng,
    this.firebaseToken,
    this.stripeCustomerId,

    required this.id,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}