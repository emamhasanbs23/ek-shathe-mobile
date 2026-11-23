import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_update_response.freezed.dart';
part 'app_update_response.g.dart';

@freezed
abstract class AppUpdateResponse
    with _$AppUpdateResponse
    implements ApiResponse {
  const factory AppUpdateResponse({
    int? code,
    String? message,
    bool? error,
    AppUpdateResults? results,
  }) = _AppUpdateResponse;

  factory AppUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateResponseFromJson(json);
}

@freezed
abstract class AppUpdateResults with _$AppUpdateResults {
  const factory AppUpdateResults({AppUpdateData? data}) = _AppUpdateResults;

  factory AppUpdateResults.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateResultsFromJson(json);
}

@freezed
abstract class AppUpdateData with _$AppUpdateData {
  const factory AppUpdateData({
    String? updateStatus,
    String? currentVersion,
    String? latestVersion,
    String? minSupportedVersion,
  }) = _AppUpdateData;

  factory AppUpdateData.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateDataFromJson(json);

  static const statusForce = 'force';
  static const statusOptional = 'optional';
}
