import 'package:dio/dio.dart';
import 'package:ek_shathe_mobile/core/config/flavor.dart';
import 'package:ek_shathe_mobile/core/config/flavor_providers.dart';
import 'package:ek_shathe_mobile/core/network/auth_interceptor.dart';
import 'package:ek_shathe_mobile/core/storage/secure_storage_service.dart';
import 'package:ek_shathe_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

/// Builds a configured [Dio] instance for the active [FlavorConfig].
class DioClient {
  static Dio create({
    required FlavorConfig config,
    required SecureStorageService storage,
    required DioAuthRepositoryBuilder authRepositoryBuilder,
    void Function()? onSessionExpired,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 15),
        headers: const {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.add(
      AuthInterceptor(
        dio,
        storage,
        authRepositoryBuilder: authRepositoryBuilder,
        onSessionExpired: onSessionExpired,
      ),
    );

    if (config.enableDioLogging) {
      dio.interceptors.add(PrettyDioLogger(requestBody: true));
    }

    return dio;
  }
}

typedef DioAuthRepositoryBuilder = AuthRepository Function();

@Riverpod(keepAlive: true)
DioAuthRepositoryBuilder dioAuthRepositoryBuilder(Ref ref) {
  throw UnimplementedError(
    'dioAuthRepositoryBuilderProvider must be overridden in bootstrap().',
  );
}

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final flavor = ref.watch(flavorConfigProvider);
  final storage = ref.watch(secureStorageServiceProvider);
  final onSessionExpired = ref.watch(sessionExpiredSignalProvider);
  return DioClient.create(
    config: flavor,
    storage: storage,
    authRepositoryBuilder: ref.watch(dioAuthRepositoryBuilderProvider),
    onSessionExpired: onSessionExpired,
  );
}

@Riverpod(keepAlive: true)
void Function() sessionExpiredSignal(Ref ref) {
  return () {};
}
