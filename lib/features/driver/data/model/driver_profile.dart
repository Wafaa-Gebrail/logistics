import 'package:json_annotation/json_annotation.dart';

part 'driver_profile.g.dart';

@JsonSerializable(explicitToJson: true)
class DriverProfile {
  final String id;
  final String userId;

  final String vehicleType;
  final String vehiclePlate;
  final String status;

  final String? currentLat;
  final String? currentLng;

  final String maxWeightKg;
  final int maxVolumeCm3;

  final double currentWeightKg;
  final int currentVolumeCm3;

  final String rating;
  final int totalDeliveries;

  final DateTime createdAt;
  final DateTime updatedAt;

  final DriverUser? user;

  DriverProfile({
    required this.id,
    required this.userId,
    required this.vehicleType,
    required this.vehiclePlate,
    required this.status,
    required this.currentLat,
    required this.currentLng,
    required this.maxWeightKg,
    required this.maxVolumeCm3,
    required this.currentWeightKg,
    required this.currentVolumeCm3,
    required this.rating,
    required this.totalDeliveries,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
  });

  factory DriverProfile.fromJson(Map<String, dynamic> json) {
    return DriverProfile(
      id: json['id'],
      userId: json['userId'],

      vehicleType: json['vehicleType'],
      vehiclePlate: json['vehiclePlate'],
      status: json['status'],

      currentLat: json['currentLat'],
      currentLng: json['currentLng'],

      maxWeightKg: json['maxWeightKg']!,
      maxVolumeCm3: json['maxVolumeCm3'] ?? 0,

      currentWeightKg:
      _toDouble(json['currentWeightKg']) ?? 0,

      currentVolumeCm3:
      json['currentVolumeCm3'] ?? 0,

      rating: json['rating'] ?? 0,

      totalDeliveries:
      json['totalDeliveries'] ?? 0,

      createdAt:
      DateTime.parse(json['createdAt']),

      updatedAt:
      DateTime.parse(json['updatedAt']),

      user: json['user'] != null
          ? DriverUser.fromJson(json['user'])
          : null,
    );
  }

  Map<String, dynamic> toJson() =>
      _$DriverProfileToJson(this);

  /// ================= COPY WITH =================
  DriverProfile copyWith({
    String? status,
  }) {
    return DriverProfile(
      id: id,
      userId: userId,
      vehicleType: vehicleType,
      vehiclePlate: vehiclePlate,

      status: status ?? this.status,

      currentLat: currentLat,
      currentLng: currentLng,

      maxWeightKg: maxWeightKg,
      maxVolumeCm3: maxVolumeCm3,

      currentWeightKg: currentWeightKg,
      currentVolumeCm3: currentVolumeCm3,

      rating: rating,
      totalDeliveries: totalDeliveries,

      createdAt: createdAt,
      updatedAt: updatedAt,

      user: user,
    );
  }

  static double? _toDouble(dynamic value) {
    if (value == null) return null;
    return double.tryParse(value.toString());
  }
}

@JsonSerializable()
class DriverUser {
  final String id;
  final String email;
  final String phone;
  final String name;
  final String role;
  final bool isActive;

  final DateTime? createdAt;
  final DateTime? updatedAt;

  final String? address;
  final double? defaultPickupLat;
  final double? defaultPickupLng;
  final String? firebaseToken;
  final String? stripeCustomerId;

  DriverUser({
    required this.id,
    required this.email,
    required this.phone,
    required this.name,
    required this.role,
    required this.isActive,
    this.createdAt,
    this.updatedAt,
    this.address,
    this.defaultPickupLat,
    this.defaultPickupLng,
    this.firebaseToken,
    this.stripeCustomerId,
  });

  factory DriverUser.fromJson(Map<String, dynamic> json) {
    return DriverUser(
      id: json['id'],
      email: json['email'],
      phone: json['phone'],
      name: json['name'],
      role: json['role'],
      isActive: json['isActive'],

      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,

      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,

      address: json['address'],

      defaultPickupLat: _toDouble(json['defaultPickupLat']),
      defaultPickupLng: _toDouble(json['defaultPickupLng']),

      firebaseToken: json['firebaseToken'],
      stripeCustomerId: json['stripeCustomerId'],
    );
  }

  Map<String, dynamic> toJson() => _$DriverUserToJson(this);

  static double? _toDouble(dynamic value) {
    if (value == null) return null;
    return double.tryParse(value.toString());
  }
}