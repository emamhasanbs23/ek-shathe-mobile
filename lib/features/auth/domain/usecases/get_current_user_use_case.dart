import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/features/auth/domain/entities/auth_user.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetCurrentUserUseCase {
  GetCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, AuthUser?>> call() => _repository.getCurrentUser();
}
