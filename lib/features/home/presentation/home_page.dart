import 'package:ek_shathe_mobile/core/config/flavor_providers.dart';
import 'package:ek_shathe_mobile/core/error/failures.dart';
import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:ek_shathe_mobile/core/router/app_routes.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/theme_context_extension.dart';
import 'package:ek_shathe_mobile/features/auth/presentation/riverpod/auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(flavorConfigProvider);
    final userAsync = ref.watch(currentUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.language.homeTitle),
        actions: [
          IconButton(
            tooltip: context.language.logoutAction,
            onPressed: () async {
              await ref.read(logoutControllerProvider)();
              if (context.mounted) context.go(AppRoutePaths.login);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: AppSize.pagePadding,
        child: userAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Text(
            error is Failure
                ? error.toMessage(context)
                : context.language.errorUnexpected,
          ),
          data: (user) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.language.homeWelcome,
                  style: context.textStyle.headingSmall.copyWith(
                    color: context.color.textPrimary,
                  ),
                ),
                SizedBox(height: AppSize.spaceMd),
                if (user != null) ...[
                  Text(user.displayName ?? user.email),
                  Text(
                    user.email,
                    style: context.textStyle.bodyMedium.copyWith(
                      color: context.color.textSecondary,
                    ),
                  ),
                ],
                SizedBox(height: AppSize.spaceLg),
                Text('${context.language.flavorLabel}: ${config.flavor.name}'),
                Text('${context.language.baseUrlLabel}: ${config.baseUrl}'),
              ],
            );
          },
        ),
      ),
    );
  }
}
