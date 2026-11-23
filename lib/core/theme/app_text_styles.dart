import 'package:material_ui/material_ui.dart';

/// Shared font family for the app. Set when a custom font is bundled in
/// `pubspec.yaml`; `null` uses the platform default.
abstract final class AppFonts {
  static const String? family = null;
}

/// Typography scale — sizes and weights only. Apply colors with
/// `.copyWith(color: context.color.textPrimary)` at the call site.
@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles();

  TextStyle get headingLarge => _base(
    fontSize: 24,
    height: 1.33,
    fontWeight: FontWeight.w600,
  );

  TextStyle get headingMedium => _base(
    fontSize: 20,
    height: 1.4,
    fontWeight: FontWeight.w600,
  );

  TextStyle get headingSmall => _base(
    fontSize: 18,
    height: 1.33,
    fontWeight: FontWeight.w500,
  );

  TextStyle get bodyLarge => _base(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  TextStyle get bodyMedium => _base(
    fontSize: 14,
    height: 1.43,
    fontWeight: FontWeight.w400,
  );

  TextStyle get bodySmall => _base(
    fontSize: 12,
    height: 1.33,
    fontWeight: FontWeight.w400,
  );

  TextStyle get labelMedium =>
      _base(fontSize: 14, height: 1.15, fontWeight: FontWeight.w500).copyWith(
        letterSpacing: 0.5,
      );

  TextStyle get button => _base(
    fontSize: 16,
    height: 1.25,
    fontWeight: FontWeight.w600,
  );

  TextStyle get link => _base(
    fontSize: 14,
    height: 1.43,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.underline,
  );

  TextStyle _base({
    required double fontSize,
    required double height,
    required FontWeight fontWeight,
    TextDecoration? decoration,
  }) {
    final style = TextStyle(
      fontSize: fontSize,
      height: height,
      fontWeight: fontWeight,
      decoration: decoration,
    );
    const family = AppFonts.family;
    return family == null ? style : style.copyWith();
  }

  @override
  AppTextStyles copyWith() => const AppTextStyles();

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    return const AppTextStyles();
  }
}
