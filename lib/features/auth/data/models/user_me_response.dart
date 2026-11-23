import 'package:ek_shathe_mobile/core/network/api/api_envelope.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_me_response.freezed.dart';
part 'user_me_response.g.dart';

@freezed
abstract class UserMeResponse
    with _$UserMeResponse
    implements ApiResponse {
  const factory UserMeResponse({
    int? code,
    String? message,
    bool? error,
    UserMeResults? results,
  }) = _UserMeResponse;

  factory UserMeResponse.fromJson(Map<String, dynamic> json) =>
      _$UserMeResponseFromJson(json);
}

@freezed
abstract class UserMeResults with _$UserMeResults {
  const factory UserMeResults({UserMeData? data}) = _UserMeResults;

  factory UserMeResults.fromJson(Map<String, dynamic> json) =>
      _$UserMeResultsFromJson(json);
}

@freezed
abstract class UserMeData with _$UserMeData {
  const factory UserMeData({
    String? email,
    String? userId,
    String? firstname,
    String? lastname,
    String? username,
    String? name,
  }) = _UserMeData;

  factory UserMeData.fromJson(Map<String, dynamic> json) =>
      _$UserMeDataFromJson(json);
}

extension UserMeDataX on UserMeData {
  AuthUser toDomain() {
    final resolvedId = userId ?? email ?? username ?? '';
    final resolvedEmail = email ?? username ?? '';
    final resolvedName =
        name ??
        [
          firstname,
          lastname,
        ].where((part) => part != null && part.isNotEmpty).join(' ').trim();

    return AuthUser(
      id: resolvedId,
      email: resolvedEmail,
      displayName: resolvedName.isEmpty ? null : resolvedName,
      username: username,
    );
  }
}

extension UserMeResponseX on UserMeResponse {
  AuthUser toDomain() {
    final data = results?.data;
    if (data == null) {
      throw StateError('UserMeResponse.results.data is null');
    }
    return data.toDomain();
  }
}
