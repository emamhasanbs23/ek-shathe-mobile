import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response.freezed.dart';
part 'refresh_token_response.g.dart';

@freezed
abstract class RefreshTokenResponse
    with _$RefreshTokenResponse
    implements ApiResponse {
  const factory RefreshTokenResponse({
    int? code,
    String? message,
    bool? error,
    RefreshTokenResults? results,
  }) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);
}

@freezed
abstract class RefreshTokenResults with _$RefreshTokenResults {
  const factory RefreshTokenResults({
    String? message,
    String? accessToken,
    String? refreshToken,
  }) = _RefreshTokenResults;

  factory RefreshTokenResults.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResultsFromJson(json);
}
