// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUpdateResponse _$AppUpdateResponseFromJson(Map<String, dynamic> json) =>
    _AppUpdateResponse(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      error: json['error'] as bool?,
      results: json['results'] == null
          ? null
          : AppUpdateResults.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppUpdateResponseToJson(_AppUpdateResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'error': instance.error,
      'results': instance.results,
    };

_AppUpdateResults _$AppUpdateResultsFromJson(Map<String, dynamic> json) =>
    _AppUpdateResults(
      data: json['data'] == null
          ? null
          : AppUpdateData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppUpdateResultsToJson(_AppUpdateResults instance) =>
    <String, dynamic>{'data': instance.data};

_AppUpdateData _$AppUpdateDataFromJson(Map<String, dynamic> json) =>
    _AppUpdateData(
      updateStatus: json['updateStatus'] as String?,
      currentVersion: json['currentVersion'] as String?,
      latestVersion: json['latestVersion'] as String?,
      minSupportedVersion: json['minSupportedVersion'] as String?,
    );

Map<String, dynamic> _$AppUpdateDataToJson(_AppUpdateData instance) =>
    <String, dynamic>{
      'updateStatus': instance.updateStatus,
      'currentVersion': instance.currentVersion,
      'latestVersion': instance.latestVersion,
      'minSupportedVersion': instance.minSupportedVersion,
    };
