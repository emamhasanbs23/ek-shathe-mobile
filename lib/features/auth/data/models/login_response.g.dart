// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool?,
      results: json['results'] == null
          ? null
          : LoginResults.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'error': instance.error,
      'results': instance.results,
    };

_LoginResults _$LoginResultsFromJson(Map<String, dynamic> json) =>
    _LoginResults(
      data: json['data'] as String?,
      refreshToken: json['refreshToken'] as String?,
      isNewUser: json['isNewUser'] as bool?,
    );

Map<String, dynamic> _$LoginResultsToJson(_LoginResults instance) =>
    <String, dynamic>{
      'data': instance.data,
      'refreshToken': instance.refreshToken,
      'isNewUser': instance.isNewUser,
    };
