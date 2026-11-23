import 'package:ek_shathe_mobile/core/config/flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Exposes the active [FlavorConfig] to the widget tree.
///
/// Overridden in `bootstrap` with the value resolved from the launched
/// entrypoint (`main_dev.dart`, `main_staging.dart`, `main_prod.dart`).
/// It intentionally throws if read without an override so a mis-wired
/// bootstrap fails loudly instead of silently using dev defaults.
final flavorConfigProvider = Provider<FlavorConfig>(
  (ref) => throw UnimplementedError(
    'flavorConfigProvider must be overridden in bootstrap()',
  ),
);
