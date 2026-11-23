// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenResponse _$RefreshTokenResponseFromJson(
  Map<String, dynamic> json,
) => _RefreshTokenResponse(
  code: (json['code'] as num?)?.toInt(),
  message: json['message'] as String?,
  error: json['error'] as bool?,
  results: json['results'] == null
      ? null
      : RefreshTokenResults.fromJson(json['results'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RefreshTokenResponseToJson(
  _RefreshTokenResponse instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'error': instance.error,
  'results': instance.results,
};

_RefreshTokenResults _$RefreshTokenResultsFromJson(Map<String, dynamic> json) =>
    _RefreshTokenResults(
      message: json['message'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$RefreshTokenResultsToJson(
  _RefreshTokenResults instance,
) => <String, dynamic>{
  'message': instance.message,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
};
