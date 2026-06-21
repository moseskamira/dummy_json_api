import 'package:dio/dio.dart';
import 'package:dummy_json_api/core/network/response/network_response.dart';
import 'package:dummy_json_api/core/network/retrofit/api_client.dart';
import 'package:dummy_json_api/core/network/retrofit/api_service.dart';
import 'package:dummy_json_api/features/users/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  late ApiClient apiClient;

  UserRepositoryImpl() {
    apiClient = ApiService().apiClient;
  }

  @override
  Future<NetworkResponse> getUserInfo(String id) async {
    try {
      final response = await apiClient.getUserInfo(id);
      return NetworkResponse(true, data: response);
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return NetworkResponse(false, error: message);
    } catch (e) {
      final error = e.toString();
      return NetworkResponse(false, error: error);
    }
  }

  @override
  Future<NetworkResponse> getUsers() async {
    try {
      final response = await apiClient.getUsers();
      return NetworkResponse(true, data: response);
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return NetworkResponse(false, error: message);
    } catch (e) {
      final error = e.toString();
      return NetworkResponse(false, error: error);
    }
  }
}
