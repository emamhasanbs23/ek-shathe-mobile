import 'package:material_ui/material_ui.dart';

/// Raw palette — tweak brand and neutrals here only.
abstract final class AppPalette {
  /// Splash progress indicator tint (brand orange).
  static const progressTint = Color(0xFFFF7900);

  /// Primary navy.
  static const brand = Color(0xFF0B2455);

  /// Accent orange (also usable as secondary emphasis).
  static const accent = Color(0xFFFF7900);

  /// Dark-theme primary stays navy for brand consistency.
  static const brandDark = Color(0xFF0B2455);

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const neutral10 = Color(0xFFF5F5F7);
  static const neutral20 = Color(0xFFE8E8ED);
  static const neutral40 = Color(0xFF9E9EA7);
  static const neutral60 = Color(0xFF5C5C66);
  static const neutral80 = Color(0xFF313137);
  static const neutral90 = Color(0xFF1B1B1F);

  static const success = Color(0xFF2E7D32);
  static const error = Color(0xFFC62828);
  static const warning = Color(0xFFF9A825);
  static const info = Color(0xFF0277BD);
}
