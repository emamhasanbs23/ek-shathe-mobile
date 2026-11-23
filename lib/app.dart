import 'package:ek_shathe_mobile/core/config/flavor_providers.dart';
import 'package:ek_shathe_mobile/core/router/app_router.dart';
import 'package:ek_shathe_mobile/core/theme/app_theme.dart';
import 'package:ek_shathe_mobile/core/widgets/connectivity_banner.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/riverpod/splash_providers.dart';
import 'package:ek_shathe_mobile/l10n/generated/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final config = ref.watch(flavorConfigProvider);
    final splashReady = ref.watch(splashControllerProvider).isReady;

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          debugShowCheckedModeBanner: !config.isProd,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: ThemeMode.light,
          routerConfig: router,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          builder: (context, child) {
            return Column(
              children: [
                if (splashReady) const ConnectivityBanner(),
                Expanded(child: child ?? const SizedBox.shrink()),
              ],
            );
          },
        );
      },
    );
  }
}
