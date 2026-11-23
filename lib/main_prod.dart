import 'dart:async';

import 'package:ek_shathe_mobile/bootstrap.dart';
import 'package:ek_shathe_mobile/core/config/flavor.dart';

/// Production entrypoint. Run with:
///   fvm flutter run --flavor prod -t lib/main_prod.dart
void main() {
  unawaited(bootstrap(Flavor.prod));
}
