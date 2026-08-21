import 'package:freezed_annotation/freezed_annotation.dart';

part 'proof_upload_response.g.dart';

@JsonSerializable()
class ProofUploadResponse {
  final bool success;
  final String message;
  final ProofData data;

  ProofUploadResponse({
    required this.success,
    required this.message,
    required this.data,
  });
  factory ProofUploadResponse.fromJson(Map<String, dynamic> json) => _$ProofUploadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProofUploadResponseToJson(this);
}

@JsonSerializable()
class ProofData {
  final String id;
  final String fileUrl;

  ProofData({
    required this.id,
    required this.fileUrl,
  });

  factory ProofData.fromJson(Map<String, dynamic> json) => _$ProofDataFromJson(json);
  Map<String, dynamic> toJson() => _$ProofDataToJson(this);
}