// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Ek-Shathe';

  @override
  String get errorUnexpected => 'Algo salió mal';

  @override
  String get errorNetwork => 'Error de red. Verifica tu conexión.';

  @override
  String get errorUnauthorized => 'La sesión expiró. Inicia sesión de nuevo.';

  @override
  String get errorNotFound => 'No encontrado';

  @override
  String get errorNoConnection => 'Sin conexión a internet. Verifica tu red.';

  @override
  String get errorTimeout => 'La solicitud tardó demasiado. Intenta de nuevo.';

  @override
  String get errorServer => 'Error del servidor. Intenta más tarde.';

  @override
  String get errorValidation => 'Validación fallida. Revisa tu información.';

  @override
  String get errorRateLimit => 'Demasiadas solicitudes. Espera un momento.';

  @override
  String get errorCancelled => 'La solicitud fue cancelada.';

  @override
  String get errorSerialization =>
      'No se pudo procesar la respuesta. Intenta de nuevo.';

  @override
  String get errorInvalidCredentials => 'Correo o contraseña inválidos';

  @override
  String get errorRequestFailed => 'La solicitud falló. Intenta de nuevo.';

  @override
  String get errorNoRefreshToken => 'Tu sesión expiró. Inicia sesión de nuevo.';

  @override
  String get errorLoginFailed => 'No se pudo iniciar sesión. Intenta de nuevo.';

  @override
  String get errorTokenRefreshFailed =>
      'No se pudo renovar tu sesión. Inicia sesión de nuevo.';

  @override
  String get errorLoadUserFailed =>
      'No se pudo cargar tu perfil. Intenta de nuevo.';

  @override
  String get errorLoginMissingUser =>
      'Inicio de sesión exitoso, pero no se pudo cargar tu perfil.';

  @override
  String get connectivityOffline => 'Estás sin conexión';

  @override
  String get connectivityRetry => 'Reintentar';

  @override
  String get loginTitle => 'Iniciar sesión';

  @override
  String get loginPasswordLabel => 'Contraseña';

  @override
  String get loginPasswordRequired => 'Ingresa tu contraseña';

  @override
  String get loginSubmit => 'Iniciar sesión';

  @override
  String get loginInvalidCredentials => 'Correo o contraseña inválidos';

  @override
  String get homeTitle => 'Inicio';

  @override
  String get homeWelcome => 'Bienvenido';

  @override
  String get logoutAction => 'Cerrar sesión';

  @override
  String get flavorLabel => 'Entorno';

  @override
  String get baseUrlLabel => 'URL base de la API';

  @override
  String get splashNoInternetTitle => 'No se puede conectar';

  @override
  String get splashNoInternetMessage =>
      'Verifica tu conexión a internet e intenta de nuevo.';

  @override
  String get splashErrorTitle => 'Algo salió mal';

  @override
  String get splashErrorMessage => 'Intenta de nuevo.';

  @override
  String get splashOkAction => 'Aceptar';

  @override
  String get splashForceUpdateTitle => 'Actualización requerida';

  @override
  String get splashForceUpdateMessage =>
      'Hay una nueva versión de Ek-Shathe. Actualiza para continuar.';

  @override
  String get splashUpdateAvailableTitle => 'Actualización disponible';

  @override
  String get splashUpdateAvailableMessage =>
      'Hay una nueva versión de Ek-Shathe. Actualiza ahora.';

  @override
  String get splashUpdateAction => 'Actualizar';

  @override
  String get splashLaterAction => 'Más tarde';

  @override
  String get loginEmailLabel => 'Correo';

  @override
  String get loginEmailRequired => 'Ingresa tu correo';

  @override
  String get loginCreateAccount => 'Crear cuenta';

  @override
  String get registerTitle => 'Crear cuenta';

  @override
  String get registerNameLabel => 'Nombre';

  @override
  String get registerNameRequired => 'Ingresa tu nombre (mínimo 2 caracteres)';

  @override
  String get registerPasswordMin =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get registerSubmit => 'Registrarse';

  @override
  String get registerHaveAccount => '¿Ya tienes cuenta? Inicia sesión';

  @override
  String get registerSuccess => 'Cuenta creada. Inicia sesión.';
}
