import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody{
  final String email;
  final String password;
  final String name;
  final String phone;

  RegisterRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
});
  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) => _$RegisterRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);

}