import 'package:dio/dio.dart';
import 'package:dummy_json_api/core/network/retrofit/logger_interceptor.dart';
import 'package:dummy_json_api/core/network/retrofit/token_interceptor.dart';

import 'api_client.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  late final ApiClient apiClient;
  late final Dio dio;

  factory ApiService() => _instance;

  ApiService._internal() {
    dio = Dio();
    dio.interceptors.add(LoggerInterceptor());
    dio.interceptors.add(TokenInterceptor());
    apiClient = ApiClient(dio);
  }
}
