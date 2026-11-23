import 'package:dio/dio.dart';
import 'package:ek_shathe_mobile/core/network/endpoints/config_endpoints.dart';
import 'package:ek_shathe_mobile/features/splash/data/models/app_update_response.dart';
import 'package:retrofit/retrofit.dart';

part 'config_api.g.dart';

@RestApi()
abstract class ConfigApi {
  factory ConfigApi(Dio dio, {String baseUrl}) = _ConfigApi;

  @GET(ConfigEndpoints.appUpdate)
  Future<AppUpdateResponse> checkAppUpdate({
    @Query('platform') required String platform,
    @Query('version') required int version,
    CancelToken? cancelToken,
  });
}
