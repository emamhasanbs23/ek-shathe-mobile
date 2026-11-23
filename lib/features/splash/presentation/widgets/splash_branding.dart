import 'package:ek_shathe_mobile/core/theme/app_assets.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:material_ui/material_ui.dart';

class SplashBranding extends StatelessWidget {
  const SplashBranding({
    required this.iconOpacity,
    required this.iconScale,
    required this.logoOpacity,
    super.key,
  });

  final double iconOpacity;
  final double iconScale;
  final double logoOpacity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.spaceLg),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Opacity(
                opacity: iconOpacity,
                child: Transform.scale(
                  scale: iconScale,
                  child: Image.asset(
                    AppAssets.appIcon,
                    height: AppSize.splashIconHeight,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: Opacity(
                opacity: logoOpacity,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: AppSize.splashLogoBottomMargin,
                  ),
                  child: Image.asset(
                    AppAssets.appLogo,
                    height: AppSize.splashLogoHeight,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
