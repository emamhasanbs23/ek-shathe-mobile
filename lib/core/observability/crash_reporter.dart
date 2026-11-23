import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'crash_reporter.g.dart';

abstract interface class CrashReporter {
  void reportError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    Map<String, Object?>? context,
  });

  void setUserContext({String? userId, String? email});

  void clearUserContext();
}

class NoOpCrashReporter implements CrashReporter {
  const NoOpCrashReporter();

  @override
  void reportError(
    Object error, {
    StackTrace? stackTrace,
    String? reason,
    Map<String, Object?>? context,
  }) {
    debugPrint('NoOpCrashReporter: ${reason ?? 'uncaught error'} — $error');
    if (stackTrace != null) debugPrint(stackTrace.toString());
  }

  @override
  void setUserContext({String? userId, String? email}) {}

  @override
  void clearUserContext() {}
}

@Riverpod(keepAlive: true)
CrashReporter crashReporter(Ref ref) {
  return const NoOpCrashReporter();
}
