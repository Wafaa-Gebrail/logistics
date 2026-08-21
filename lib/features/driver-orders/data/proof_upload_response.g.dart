// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proof_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProofUploadResponse _$ProofUploadResponseFromJson(Map<String, dynamic> json) =>
    ProofUploadResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: ProofData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProofUploadResponseToJson(
  ProofUploadResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

ProofData _$ProofDataFromJson(Map<String, dynamic> json) =>
    ProofData(id: json['id'] as String, fileUrl: json['fileUrl'] as String);

Map<String, dynamic> _$ProofDataToJson(ProofData instance) => <String, dynamic>{
  'id': instance.id,
  'fileUrl': instance.fileUrl,
};
