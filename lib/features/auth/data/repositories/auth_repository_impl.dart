import 'package:dio/dio.dart';
import 'package:dummy_json_api/core/network/response/network_response.dart';
import 'package:dummy_json_api/core/network/retrofit/api_client.dart';
import 'package:dummy_json_api/core/network/retrofit/api_service.dart';
import 'package:dummy_json_api/features/auth/data/models/login_request.dart';
import 'package:dummy_json_api/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  late ApiClient apiClient;

  AuthRepositoryImpl() {
    apiClient = ApiService().apiClient;
  }

  @override
  Future<NetworkResponse> login(LoginRequest request) async {
    try {
      final response = await apiClient.login(request);
      return NetworkResponse(true, data: response);
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return NetworkResponse(false, error: message);
    } catch (e) {
      return NetworkResponse(false, error: e.toString());
    }
  }
}
