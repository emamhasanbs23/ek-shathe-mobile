// Default entrypoint. Kept for `flutter test` and tooling that expects
// `lib/main.dart`. Real dev/staging/prod runs use `main_dev.dart`, etc.

import 'dart:async';

import 'package:ek_shathe_mobile/bootstrap.dart';
import 'package:ek_shathe_mobile/core/config/flavor.dart';

void main() {
  unawaited(bootstrap(Flavor.dev));
}
