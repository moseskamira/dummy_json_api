import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class LoggerInterceptor extends Interceptor {
  LoggerInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('METHOD: ${options.method}');
    debugPrint('PATH: ${options.path}');
    debugPrint('URL: ${options.uri}');
    debugPrint('REQUEST_HEADER: ${options.headers}');
    debugPrint('REQUESTDATA: ${options.data}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('RESPONSE_METHOD: ${response.requestOptions.method}');
    debugPrint('RESPONSE_PATH: ${response.requestOptions.path}');
    debugPrint('RESPONSE_URL: ${response.requestOptions.uri}');
    debugPrint('RESPONSE_DATA: ${response.data}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint("ERROR_METHOD: ${err.requestOptions.method}");
    debugPrint("ERROR_PATH: ${err.requestOptions.path}");
    debugPrint("ERROR_RESPONSE: ${err.response}");
    //Some Additional decisions that can be made
    final statusCode = err.response?.statusCode;
    final path = err.requestOptions.path;
    if ((statusCode == 401 || statusCode == 402 || statusCode == 403) &&
        (!path.contains('auth/login') || !path.contains('auth/register'))) {
      //Logout the use if it is a requirement
    }
    handler.next(err);
  }
}
