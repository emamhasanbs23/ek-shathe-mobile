import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class LogoutUseCase {
  LogoutUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<Failure, void>> call() => _repository.logout();
}
