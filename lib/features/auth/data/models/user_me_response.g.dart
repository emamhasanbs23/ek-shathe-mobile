// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_me_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserMeResponse _$UserMeResponseFromJson(Map<String, dynamic> json) =>
    _UserMeResponse(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool?,
      results: json['results'] == null
          ? null
          : UserMeResults.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserMeResponseToJson(_UserMeResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'error': instance.error,
      'results': instance.results,
    };

_UserMeResults _$UserMeResultsFromJson(Map<String, dynamic> json) =>
    _UserMeResults(
      data: json['data'] == null
          ? null
          : UserMeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserMeResultsToJson(_UserMeResults instance) =>
    <String, dynamic>{'data': instance.data};

_UserMeData _$UserMeDataFromJson(Map<String, dynamic> json) => _UserMeData(
  email: json['email'] as String?,
  userId: json['userId'] as String?,
  firstname: json['firstname'] as String?,
  lastname: json['lastname'] as String?,
  username: json['username'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$UserMeDataToJson(_UserMeData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userId': instance.userId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'username': instance.username,
      'name': instance.name,
    };
