import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

/// Centralised spacing, radii, and sizing constants.
class AppSize {
  AppSize._();

  static double get spaceXxs => 2.sp;
  static double get spaceXs => 4.sp;
  static double get spaceSm => 8.sp;
  static double get spaceMd => 12.sp;
  static double get spaceLg => 16.sp;
  static double get spaceXl => 20.sp;
  static double get space2xl => 24.sp;
  static double get space3xl => 32.sp;
  static double get space4xl => 48.sp;

  static double get radiusSm => 4.r;
  static double get radiusMd => 8.r;
  static double get radiusLg => 12.r;
  static double get radiusXl => 20.r;

  static EdgeInsets get pagePadding =>
      EdgeInsets.symmetric(horizontal: spaceLg, vertical: spaceMd);

  static double get iconLg => 32.sp;
  static double get buttonHeight => 48.sp;
  static double get maxContentWidth => 480.w;

  /// Splash branding — mirrors `activity_splash.xml`.
  static double get splashIconHeight => 96.h;
  static double get splashLogoHeight => 32.h;
  static double get splashLogoBottomMargin => 40.h;
}
