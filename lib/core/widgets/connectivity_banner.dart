import 'package:ek_shathe_mobile/core/connectivity/connectivity_service.dart';
import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/theme_context_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

class ConnectivityBanner extends ConsumerWidget {
  const ConnectivityBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncStatus = ref.watch(connectivityStreamProvider);
    final isOnline = asyncStatus.maybeWhen(
      data: (online) => online,
      orElse: () => true,
    );

    if (isOnline) {
      return const SizedBox.shrink();
    }

    final dangerColor = context.color.error;

    return Material(
      color: dangerColor,
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.spaceLg,
            vertical: AppSize.spaceSm,
          ),
          child: Row(
            children: [
              const Icon(Icons.wifi_off, color: Colors.white, size: 18),
              SizedBox(width: AppSize.spaceSm),
              Expanded(
                child: Text(
                  context.language.connectivityOffline,
                  style: context.textStyle.bodySmall.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => ref.invalidate(connectivityStreamProvider),
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: Text(context.language.connectivityRetry),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
