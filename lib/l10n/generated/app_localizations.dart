import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// Application title shown in the OS task switcher.
  ///
  /// In en, this message translates to:
  /// **'Ek-Shathe'**
  String get appTitle;

  /// No description provided for @errorUnexpected.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorUnexpected;

  /// No description provided for @errorNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network error. Please check your connection.'**
  String get errorNetwork;

  /// No description provided for @errorUnauthorized.
  ///
  /// In en, this message translates to:
  /// **'Session expired. Please sign in again.'**
  String get errorUnauthorized;

  /// No description provided for @errorNotFound.
  ///
  /// In en, this message translates to:
  /// **'Not found'**
  String get errorNotFound;

  /// No description provided for @errorNoConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Please check your network.'**
  String get errorNoConnection;

  /// No description provided for @errorTimeout.
  ///
  /// In en, this message translates to:
  /// **'Request timed out. Please try again.'**
  String get errorTimeout;

  /// No description provided for @errorServer.
  ///
  /// In en, this message translates to:
  /// **'Server error. Please try again later.'**
  String get errorServer;

  /// No description provided for @errorValidation.
  ///
  /// In en, this message translates to:
  /// **'Validation failed. Please check your input.'**
  String get errorValidation;

  /// No description provided for @errorRateLimit.
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Please wait a moment.'**
  String get errorRateLimit;

  /// No description provided for @errorCancelled.
  ///
  /// In en, this message translates to:
  /// **'Request was cancelled.'**
  String get errorCancelled;

  /// No description provided for @errorSerialization.
  ///
  /// In en, this message translates to:
  /// **'Failed to process response. Please try again.'**
  String get errorSerialization;

  /// No description provided for @errorInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid username or password'**
  String get errorInvalidCredentials;

  /// No description provided for @errorRequestFailed.
  ///
  /// In en, this message translates to:
  /// **'Request failed. Please try again.'**
  String get errorRequestFailed;

  /// No description provided for @errorNoRefreshToken.
  ///
  /// In en, this message translates to:
  /// **'Your session has expired. Please sign in again.'**
  String get errorNoRefreshToken;

  /// No description provided for @errorLoginFailed.
  ///
  /// In en, this message translates to:
  /// **'Sign in failed. Please try again.'**
  String get errorLoginFailed;

  /// No description provided for @errorTokenRefreshFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not refresh your session. Please sign in again.'**
  String get errorTokenRefreshFailed;

  /// No description provided for @errorLoadUserFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not load your profile. Please try again.'**
  String get errorLoadUserFailed;

  /// No description provided for @errorLoginMissingUser.
  ///
  /// In en, this message translates to:
  /// **'Sign in succeeded but your profile could not be loaded.'**
  String get errorLoginMissingUser;

  /// No description provided for @connectivityOffline.
  ///
  /// In en, this message translates to:
  /// **'You are offline'**
  String get connectivityOffline;

  /// No description provided for @connectivityRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get connectivityRetry;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get loginTitle;

  /// No description provided for @loginUsernameLabel.
  ///
  /// In en, this message translates to:
  /// **'Email or username'**
  String get loginUsernameLabel;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// No description provided for @loginUsernameRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your email or username'**
  String get loginUsernameRequired;

  /// No description provided for @loginPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get loginPasswordRequired;

  /// No description provided for @loginSubmit.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get loginSubmit;

  /// No description provided for @loginInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid username or password'**
  String get loginInvalidCredentials;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// No description provided for @homeWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get homeWelcome;

  /// No description provided for @logoutAction.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get logoutAction;

  /// No description provided for @flavorLabel.
  ///
  /// In en, this message translates to:
  /// **'Flavor'**
  String get flavorLabel;

  /// No description provided for @baseUrlLabel.
  ///
  /// In en, this message translates to:
  /// **'API base URL'**
  String get baseUrlLabel;

  /// No description provided for @splashNoInternetTitle.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect'**
  String get splashNoInternetTitle;

  /// No description provided for @splashNoInternetMessage.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection and try again.'**
  String get splashNoInternetMessage;

  /// No description provided for @splashErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get splashErrorTitle;

  /// No description provided for @splashErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Please try again.'**
  String get splashErrorMessage;

  /// No description provided for @splashOkAction.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get splashOkAction;

  /// No description provided for @splashForceUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Update Required'**
  String get splashForceUpdateTitle;

  /// No description provided for @splashForceUpdateMessage.
  ///
  /// In en, this message translates to:
  /// **'A new version of Ek-Shathe is available. Please update to the latest version to continue.'**
  String get splashForceUpdateMessage;

  /// No description provided for @splashUpdateAvailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Update Available'**
  String get splashUpdateAvailableTitle;

  /// No description provided for @splashUpdateAvailableMessage.
  ///
  /// In en, this message translates to:
  /// **'A new version of Ek-Shathe is available. Please update to the latest version now.'**
  String get splashUpdateAvailableMessage;

  /// No description provided for @splashUpdateAction.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get splashUpdateAction;

  /// No description provided for @splashLaterAction.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get splashLaterAction;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
