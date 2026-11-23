import 'dart:async';

import 'package:ek_shathe_mobile/bootstrap.dart';
import 'package:ek_shathe_mobile/core/config/flavor.dart';

/// Dev entrypoint. Run with:
///   fvm flutter run --flavor dev -t lib/main_dev.dart
void main() {
  unawaited(bootstrap(Flavor.dev));
}
