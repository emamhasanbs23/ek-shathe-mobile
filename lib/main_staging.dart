import 'dart:async';

import 'package:ek_shathe_mobile/bootstrap.dart';
import 'package:ek_shathe_mobile/core/config/flavor.dart';

/// Staging entrypoint. Run with:
///   fvm flutter run --flavor staging -t lib/main_staging.dart
void main() {
  unawaited(bootstrap(Flavor.staging));
}
