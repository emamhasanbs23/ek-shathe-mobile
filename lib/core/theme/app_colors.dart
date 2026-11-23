import 'package:ek_shathe_mobile/core/theme/app_palette.dart';
import 'package:material_ui/material_ui.dart';

/// App colors for light and dark mode. Access via `context.color`.
@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.primary,
    required this.onPrimary,
    required this.scaffold,
    required this.surface,
    required this.border,
    required this.icon,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.success,
    required this.error,
    required this.warning,
    required this.info,
    required this.disabled,
  });

  static const light = AppColors(
    primary: AppPalette.brand,
    onPrimary: AppPalette.white,
    scaffold: AppPalette.white,
    surface: AppPalette.neutral10,
    border: AppPalette.neutral20,
    icon: AppPalette.neutral60,
    textPrimary: AppPalette.neutral80,
    textSecondary: AppPalette.neutral60,
    textTertiary: AppPalette.neutral40,
    success: AppPalette.success,
    error: AppPalette.error,
    warning: AppPalette.warning,
    info: AppPalette.info,
    disabled: AppPalette.neutral40,
  );

  static const dark = AppColors(
    primary: AppPalette.brandDark,
    onPrimary: AppPalette.neutral90,
    scaffold: AppPalette.neutral90,
    surface: AppPalette.neutral80,
    border: AppPalette.neutral60,
    icon: AppPalette.neutral20,
    textPrimary: AppPalette.white,
    textSecondary: AppPalette.neutral20,
    textTertiary: AppPalette.neutral40,
    success: AppPalette.success,
    error: AppPalette.error,
    warning: AppPalette.warning,
    info: AppPalette.info,
    disabled: AppPalette.neutral60,
  );

  final Color primary;
  final Color onPrimary;
  final Color scaffold;
  final Color surface;
  final Color border;
  final Color icon;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color success;
  final Color error;
  final Color warning;
  final Color info;
  final Color disabled;

  @override
  AppColors copyWith({
    Color? primary,
    Color? onPrimary,
    Color? scaffold,
    Color? surface,
    Color? border,
    Color? icon,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? success,
    Color? error,
    Color? warning,
    Color? info,
    Color? disabled,
  }) {
    return AppColors(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      scaffold: scaffold ?? this.scaffold,
      surface: surface ?? this.surface,
      border: border ?? this.border,
      icon: icon ?? this.icon,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      success: success ?? this.success,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      disabled: disabled ?? this.disabled,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      scaffold: Color.lerp(scaffold, other.scaffold, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      border: Color.lerp(border, other.border, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
      disabled: Color.lerp(disabled, other.disabled, t)!,
    );
  }
}
