import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token_data.freezed.dart';
part 'auth_token_data.g.dart';

@freezed
abstract class AuthTokenData with _$AuthTokenData {
  const factory AuthTokenData({
    required String accessToken,
    required String refreshToken,
  }) = _AuthTokenData;

  factory AuthTokenData.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenDataFromJson(json);
}
