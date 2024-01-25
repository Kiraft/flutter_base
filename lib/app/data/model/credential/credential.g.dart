// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credential _$CredentialFromJson(Map<String, dynamic> json) => Credential(
      message: json['message'] as String,
      status: json['status'] as bool,
      data: CredentialData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CredentialToJson(Credential instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data.toJson(),
    };
