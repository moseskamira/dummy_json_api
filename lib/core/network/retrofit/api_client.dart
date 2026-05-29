import 'package:dio/dio.dart';
import 'package:dummy_json_api/features/auth/data/models/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../features/auth/data/models/login_request.dart';
import 'apis.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Apis.BaseUrl)
abstract class ApiClient {
  //These two factory definitions below work but I prefer the second option
  //  factory ApiClient(Dio dio) = _ApiClient;
  factory ApiClient(Dio dio) => _ApiClient(dio);

  @POST(Apis.login)
  Future<LoginResponse> login(@Body() LoginRequest request);
}
