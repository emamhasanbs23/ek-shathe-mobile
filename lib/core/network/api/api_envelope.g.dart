// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiEnvelope _$ApiEnvelopeFromJson(Map<String, dynamic> json) => _ApiEnvelope(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  error: json['error'] as bool?,
);

Map<String, dynamic> _$ApiEnvelopeToJson(_ApiEnvelope instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'error': instance.error,
    };
