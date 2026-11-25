import 'package:ek_shathe_mobile/core/theme/app_assets.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:material_ui/material_ui.dart';

/// Matches the native launch splash: centered symbol on white.
class SplashBranding extends StatelessWidget {
  const SplashBranding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppAssets.appSymbol,
        height: AppSize.splashIconHeight,
        fit: BoxFit.contain,
      ),
    );
  }
}
