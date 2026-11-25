import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/logger/app_logger.dart';
import 'package:ek_shathe_mobile/core/network/api/config_api.dart';
import 'package:ek_shathe_mobile/core/network/network_guard.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/core/storage/storage_keys.dart';
import 'package:ek_shathe_mobile/features/splash/data/models/app_update_response.dart';
import 'package:ek_shathe_mobile/features/splash/domain/repositories/splash_repository.dart';
import 'package:fpdart/fpdart.dart';

class SplashRepositoryImpl implements SplashRepository {
  SplashRepositoryImpl({
    required this._api,
    required this._storage,
  });

  final ConfigApi _api;
  final SecureStorageService _storage;

  static const _optionalUpdateCooldown = Duration(hours: 24);

  @override
  Future<Either<Failure, AppUpdateData?>> checkAppUpdate({
    required String platform,
    required int buildNumber,
  }) async {
    try {
      // Config/update API is not on Ek-Shathe backend yet — treat failures as
      // "no update required" so splash can proceed to auth.
      final response = await guard(
        'SplashRepository.checkAppUpdate',
        () => _api.checkAppUpdate(platform: platform, version: buildNumber),
      );
      return Right(response.results?.data);
    } on Failure catch (failure) {
      AppLogger.w(
        'SplashRepository.checkAppUpdate skipped: ${failure.message}',
      );
      return const Right(null);
    } on Object catch (error, stackTrace) {
      AppLogger.e(
        'SplashRepository.checkAppUpdate failed',
        error: error,
        stackTrace: stackTrace,
      );
      return const Right(null);
    }
  }

  @override
  Future<bool> shouldShowOptionalUpdateDialog() async {
    final raw = await _storage.read(StorageKeys.optionalUpdateShownAt);
    if (raw == null || raw.isEmpty) return true;

    final shownAt = DateTime.tryParse(raw);
    if (shownAt == null) return true;

    return DateTime.now().difference(shownAt) >= _optionalUpdateCooldown;
  }

  @override
  Future<void> markOptionalUpdateDialogShown() {
    return _storage.write(
      StorageKeys.optionalUpdateShownAt,
      DateTime.now().toIso8601String(),
    );
  }
}
