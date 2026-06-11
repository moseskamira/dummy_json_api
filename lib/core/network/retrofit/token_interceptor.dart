import 'package:dio/dio.dart';
import 'package:dummy_json_api/core/utils/session_manager.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? token = await SessionManager().getUserToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
