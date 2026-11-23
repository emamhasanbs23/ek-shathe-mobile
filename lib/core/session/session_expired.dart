import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Broadcast flag consumed by auth providers and the router when token refresh
/// is exhausted.
final sessionExpiredProvider = NotifierProvider<SessionExpiredNotifier, bool>(
  SessionExpiredNotifier.new,
);

class SessionExpiredNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void markExpired() => state = true;

  void clear() => state = false;
}
