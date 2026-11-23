import 'package:ek_shathe_mobile/core/l10n/l10n_extension.dart';
import 'package:ek_shathe_mobile/core/theme/app_size.dart';
import 'package:ek_shathe_mobile/core/theme/theme_context_extension.dart';
import 'package:ek_shathe_mobile/features/splash/presentation/utils/app_store_launcher.dart';
import 'package:material_ui/material_ui.dart';

class SplashBlockingDialog extends StatelessWidget {
  const SplashBlockingDialog({
    required this.title,
    required this.message,
    required this.primaryLabel,
    required this.onPrimary,
    this.secondaryLabel,
    this.onSecondary,
    super.key,
  });

  final String title;
  final String message;
  final String primaryLabel;
  final VoidCallback onPrimary;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.color.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSize.radiusLg),
      ),
      title: Text(
        title,
        style: context.textStyle.headingSmall.copyWith(
          color: context.color.textPrimary,
        ),
      ),
      content: Text(
        message,
        style: context.textStyle.bodyMedium.copyWith(
          color: context.color.textSecondary,
        ),
      ),
      actions: [
        if (secondaryLabel != null && onSecondary != null)
          TextButton(onPressed: onSecondary, child: Text(secondaryLabel!)),
        TextButton(onPressed: onPrimary, child: Text(primaryLabel)),
      ],
    );
  }
}

Future<void> showSplashNoInternetDialog(
  BuildContext context, {
  required VoidCallback onRetry,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) => SplashBlockingDialog(
      title: context.language.splashNoInternetTitle,
      message: context.language.splashNoInternetMessage,
      primaryLabel: context.language.connectivityRetry,
      onPrimary: () {
        Navigator.of(context).pop();
        onRetry();
      },
    ),
  );
}

Future<void> showSplashErrorDialog(
  BuildContext context, {
  required VoidCallback onRetry,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) => SplashBlockingDialog(
      title: context.language.splashErrorTitle,
      message: context.language.splashErrorMessage,
      primaryLabel: context.language.splashOkAction,
      onPrimary: () {
        Navigator.of(context).pop();
        onRetry();
      },
    ),
  );
}

Future<void> showSplashForceUpdateDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (context) => SplashBlockingDialog(
      title: context.language.splashForceUpdateTitle,
      message: context.language.splashForceUpdateMessage,
      primaryLabel: context.language.splashUpdateAction,
      onPrimary: openAppStoreListing,
    ),
  );
}

Future<void> showSplashOptionalUpdateDialog(
  BuildContext context, {
  required VoidCallback onLater,
}) {
  return showDialog<void>(
    context: context,
    builder: (context) => SplashBlockingDialog(
      title: context.language.splashUpdateAvailableTitle,
      message: context.language.splashUpdateAvailableMessage,
      primaryLabel: context.language.splashUpdateAction,
      onPrimary: openAppStoreListing,
      secondaryLabel: context.language.splashLaterAction,
      onSecondary: () {
        Navigator.of(context).pop();
        onLater();
      },
    ),
  );
}
