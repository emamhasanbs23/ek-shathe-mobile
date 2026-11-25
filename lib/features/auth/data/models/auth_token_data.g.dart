// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokenData _$AuthTokenDataFromJson(Map<String, dynamic> json) =>
    _AuthTokenData(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$AuthTokenDataToJson(_AuthTokenData instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
