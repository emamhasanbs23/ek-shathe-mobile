import 'package:ek_shathe_mobile/core/theme/app_palette.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:material_ui/material_ui.dart';

class SplashLoadingIndicator extends StatelessWidget {
  const SplashLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.iconLg,
      height: AppSize.iconLg,
      child: const CircularProgressIndicator(
        strokeWidth: 3,
        valueColor: AlwaysStoppedAnimation<Color>(AppPalette.progressTint),
      ),
    );
  }
}
