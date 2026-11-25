// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_envelope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiEnvelope _$ApiEnvelopeFromJson(Map<String, dynamic> json) => _ApiEnvelope(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  errors: json['errors'] as List<dynamic>? ?? const [],
);

Map<String, dynamic> _$ApiEnvelopeToJson(_ApiEnvelope instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'errors': instance.errors,
    };
