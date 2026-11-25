import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, AuthUser>> register({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthUser>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, void>> logout();

  Future<bool> isAuthenticated();

  Future<Either<Failure, AuthUser?>> getCurrentUser();

  Future<Either<Failure, String>> refreshAccessToken();
}
