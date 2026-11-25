// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Ek-Shathe';

  @override
  String get errorUnexpected => 'Something went wrong';

  @override
  String get errorNetwork => 'Network error. Please check your connection.';

  @override
  String get errorUnauthorized => 'Session expired. Please sign in again.';

  @override
  String get errorNotFound => 'Not found';

  @override
  String get errorNoConnection =>
      'No internet connection. Please check your network.';

  @override
  String get errorTimeout => 'Request timed out. Please try again.';

  @override
  String get errorServer => 'Server error. Please try again later.';

  @override
  String get errorValidation => 'Validation failed. Please check your input.';

  @override
  String get errorRateLimit => 'Too many requests. Please wait a moment.';

  @override
  String get errorCancelled => 'Request was cancelled.';

  @override
  String get errorSerialization =>
      'Failed to process response. Please try again.';

  @override
  String get errorInvalidCredentials => 'Invalid email or password';

  @override
  String get errorRequestFailed => 'Request failed. Please try again.';

  @override
  String get errorNoRefreshToken =>
      'Your session has expired. Please sign in again.';

  @override
  String get errorLoginFailed => 'Sign in failed. Please try again.';

  @override
  String get errorTokenRefreshFailed =>
      'Could not refresh your session. Please sign in again.';

  @override
  String get errorLoadUserFailed =>
      'Could not load your profile. Please try again.';

  @override
  String get errorLoginMissingUser =>
      'Sign in succeeded but your profile could not be loaded.';

  @override
  String get connectivityOffline => 'You are offline';

  @override
  String get connectivityRetry => 'Retry';

  @override
  String get loginTitle => 'Sign in';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordRequired => 'Enter your password';

  @override
  String get loginSubmit => 'Sign in';

  @override
  String get loginInvalidCredentials => 'Invalid email or password';

  @override
  String get homeTitle => 'Home';

  @override
  String get homeWelcome => 'Welcome';

  @override
  String get logoutAction => 'Sign out';

  @override
  String get flavorLabel => 'Flavor';

  @override
  String get baseUrlLabel => 'API base URL';

  @override
  String get splashNoInternetTitle => 'Unable to connect';

  @override
  String get splashNoInternetMessage =>
      'Please check your internet connection and try again.';

  @override
  String get splashErrorTitle => 'Something went wrong';

  @override
  String get splashErrorMessage => 'Please try again.';

  @override
  String get splashOkAction => 'OK';

  @override
  String get splashForceUpdateTitle => 'Update Required';

  @override
  String get splashForceUpdateMessage =>
      'A new version of Ek-Shathe is available. Please update to the latest version to continue.';

  @override
  String get splashUpdateAvailableTitle => 'Update Available';

  @override
  String get splashUpdateAvailableMessage =>
      'A new version of Ek-Shathe is available. Please update to the latest version now.';

  @override
  String get splashUpdateAction => 'Update';

  @override
  String get splashLaterAction => 'Later';

  @override
  String get loginEmailLabel => 'Email';

  @override
  String get loginEmailRequired => 'Enter your email';

  @override
  String get loginCreateAccount => 'Create account';

  @override
  String get registerTitle => 'Create account';

  @override
  String get registerNameLabel => 'Name';

  @override
  String get registerNameRequired => 'Enter your name (at least 2 characters)';

  @override
  String get registerPasswordMin => 'Password must be at least 8 characters';

  @override
  String get registerSubmit => 'Sign up';

  @override
  String get registerHaveAccount => 'Already have an account? Sign in';

  @override
  String get registerSuccess => 'Account created. Please sign in.';
}
