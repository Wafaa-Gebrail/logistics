import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile.g.dart';

@JsonSerializable()
class Profile{
  final String id;
  final String email;
  final String name;
  final String phone;
  final String role;
  final bool isActive;
  final DateTime createdAt;

  Profile({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.role,
    required this.isActive,
    required this.createdAt,
});

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}