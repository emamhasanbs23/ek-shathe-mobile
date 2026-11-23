import 'package:ek_shathe_mobile/l10n/generated/app_localizations.dart';
import 'package:flutter/widgets.dart';

/// Convenience extension so call sites can write `context.language.homeTitle`
/// instead of the verbose `AppLocalizations.of(context)`.
extension LanguageExtension on BuildContext {
  AppLocalizations get language => AppLocalizations.of(this);
}
