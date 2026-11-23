import 'package:dart_mappable/dart_mappable.dart';

part 'auth_user.mapper.dart';

@MappableClass()
class AuthUser with AuthUserMappable {
  const AuthUser({
    required this.id,
    required this.email,
    this.displayName,
    this.username,
  });

  final String id;
  final String email;
  final String? displayName;
  final String? username;
}
