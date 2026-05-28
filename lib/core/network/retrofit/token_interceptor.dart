import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final String? token =
        'testing-token-hghgythtyghghghghghghhghghgh'; // get the token from where it is saved on login
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
