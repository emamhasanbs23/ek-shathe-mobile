import 'package:ek_shathe_mobile/core/theme/app_colors.dart';
import 'package:ek_shathe_mobile/core/theme/app_text_styles.dart';
import 'package:material_ui/material_ui.dart';

/// Theme accessors — same idea as the template's `context.color` /
/// `context.textStyle`, without the multi-file `part` setup.
extension ThemeContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  /// Material [ColorScheme] (for widgets that still read Material roles).
  ColorScheme get colors => theme.colorScheme;

  /// App palette for the active brightness.
  AppColors get color =>
      theme.extension<AppColors>() ??
      (theme.brightness == Brightness.dark ? AppColors.dark : AppColors.light);

  /// Shared typography scale (apply [AppColors] for text color).
  AppTextStyles get textStyle =>
      theme.extension<AppTextStyles>() ?? const AppTextStyles();

  TextTheme get textTheme => theme.textTheme;

  bool get isDarkMode => theme.brightness == Brightness.dark;
}
