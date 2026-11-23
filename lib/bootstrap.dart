import 'dart:async';
import 'dart:ui';

import 'package:ek_shathe_mobile/app.dart';
import 'package:ek_shathe_mobile/core/config/flavor.dart';
import 'package:ek_shathe_mobile/core/config/flavor_providers.dart';
import 'package:ek_shathe_mobile/core/logger/app_logger.dart';
import 'package:ek_shathe_mobile/core/network/dio_client.dart';
import 'package:ek_shathe_mobile/core/observability/analytics.dart';
import 'package:ek_shathe_mobile/core/observability/crash_reporter.dart';
import 'package:ek_shathe_mobile/core/session/session_expired.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/auth_providers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> bootstrap(Flavor flavor) async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      final config = FlavorConfig.fromFlavor(flavor);
      AppLogger.i('Bootstrapping app for flavor=${config.flavor.name}');

      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        const NoOpCrashReporter().reportError(
          details.exception,
          stackTrace: details.stack,
          reason: details.context?.toString(),
        );
      };
      PlatformDispatcher.instance.onError = (error, stack) {
        const NoOpCrashReporter().reportError(error, stackTrace: stack);
        return true;
      };

      runApp(
        ProviderScope(
          overrides: [
            flavorConfigProvider.overrideWithValue(config),
            dioAuthRepositoryBuilderProvider.overrideWith(
              (ref) =>
                  () => ref.read(authRepositoryProvider),
            ),
            sessionExpiredSignalProvider.overrideWith((ref) {
              return () {
                ref.read(sessionExpiredProvider.notifier).markExpired();
              };
            }),
            crashReporterProvider.overrideWithValue(const NoOpCrashReporter()),
            analyticsProvider.overrideWithValue(const NoOpAnalytics()),
          ],
          child: const App(),
        ),
      );
    },
    (error, stackTrace) {
      const NoOpCrashReporter().reportError(
        error,
        stackTrace: stackTrace,
        reason: 'runZonedGuarded',
      );
    },
  );
}
