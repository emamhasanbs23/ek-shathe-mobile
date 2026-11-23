import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/features/splash/data/models/app_update_response.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class SplashRepository {
  Future<Either<Failure, AppUpdateData?>> checkAppUpdate({
    required String platform,
    required int buildNumber,
  });

  Future<bool> shouldShowOptionalUpdateDialog();

  Future<void> markOptionalUpdateDialogShown();
}
