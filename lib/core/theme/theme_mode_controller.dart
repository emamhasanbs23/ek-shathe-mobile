import 'package:material_ui/material_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_controller.g.dart';

@Riverpod(keepAlive: true)
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() => ThemeMode.light;

  // Notifier state updates intentionally bypass a setter-style API.
  // ignore: use_setters_to_change_properties
  void set(ThemeMode mode) => state = mode;
}
