import 'dart:convert';

/// Decodes a JWT payload without verifying the signature.
/// Used only to read claims like `sub` after the server issued the token.
Map<String, dynamic>? decodeJwtPayload(String token) {
  final parts = token.split('.');
  if (parts.length < 2) return null;
  try {
    final normalized = base64Url.normalize(parts[1]);
    final decoded = utf8.decode(base64Url.decode(normalized));
    final json = jsonDecode(decoded);
    if (json is Map<String, dynamic>) return json;
    if (json is Map) return Map<String, dynamic>.from(json);
    return null;
  } on Object {
    return null;
  }
}

String? subjectFromAccessToken(String accessToken) {
  final payload = decodeJwtPayload(accessToken);
  final sub = payload?['sub'];
  if (sub == null) return null;
  return sub.toString();
}
