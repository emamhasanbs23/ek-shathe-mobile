import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class LoginUseCase {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, AuthUser>> call({
    required String username,
    required String password,
  }) {
    return _repository.login(username: username, password: password);
  }
}
