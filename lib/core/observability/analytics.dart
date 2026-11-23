import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics.g.dart';

abstract interface class Analytics {
  void logEvent(String name, {Map<String, Object?>? parameters});

  void setUserId(String? userId);
}

class NoOpAnalytics implements Analytics {
  const NoOpAnalytics();

  @override
  void logEvent(String name, {Map<String, Object?>? parameters}) {}

  @override
  void setUserId(String? userId) {}
}

@Riverpod(keepAlive: true)
Analytics analytics(Ref ref) {
  return const NoOpAnalytics();
}
