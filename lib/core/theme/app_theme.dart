import 'package:ek_shathe_mobile/core/theme/app_colors.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/app_text_styles.dart';
import 'package:material_ui/material_ui.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light() => _build(AppColors.light);

  static ThemeData dark() => _build(AppColors.dark);

  static ThemeData _build(AppColors colors) {
    const textStyles = AppTextStyles();

    final colorScheme = ColorScheme(
      brightness: colors.scaffold.computeLuminance() > 0.5
          ? Brightness.light
          : Brightness.dark,
      primary: colors.primary,
      onPrimary: colors.onPrimary,
      secondary: colors.info,
      onSecondary: colors.onPrimary,
      error: colors.error,
      onError: colors.onPrimary,
      surface: colors.surface,
      onSurface: colors.textPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colors.scaffold,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.scaffold,
        foregroundColor: colors.textPrimary,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: textStyles.headingSmall.copyWith(
          color: colors.textPrimary,
        ),
        iconTheme: IconThemeData(color: colors.icon),
      ),
      iconTheme: IconThemeData(color: colors.icon),
      dividerColor: colors.border,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surface,
        labelStyle: textStyles.bodyMedium.copyWith(color: colors.textSecondary),
        hintStyle: textStyles.bodyMedium.copyWith(color: colors.textTertiary),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSize.spaceLg,
          vertical: AppSize.spaceMd,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.radiusMd),
          borderSide: BorderSide(color: colors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.radiusMd),
          borderSide: BorderSide(color: colors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.radiusMd),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          minimumSize: Size.fromHeight(AppSize.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.radiusMd),
          ),
          textStyle: textStyles.button.copyWith(color: colors.onPrimary),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: textStyles.headingLarge.copyWith(
          color: colors.textPrimary,
        ),
        headlineMedium: textStyles.headingMedium.copyWith(
          color: colors.textPrimary,
        ),
        headlineSmall: textStyles.headingSmall.copyWith(
          color: colors.textPrimary,
        ),
        bodyLarge: textStyles.bodyLarge.copyWith(color: colors.textPrimary),
        bodyMedium: textStyles.bodyMedium.copyWith(color: colors.textPrimary),
        bodySmall: textStyles.bodySmall.copyWith(color: colors.textSecondary),
        labelLarge: textStyles.labelMedium.copyWith(color: colors.textPrimary),
      ),
      extensions: <ThemeExtension<dynamic>>[colors, textStyles],
    );
  }
}
