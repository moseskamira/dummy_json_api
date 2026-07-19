import 'package:dummy_json_api/core/network/response/network_response.dart';

abstract class UserRepository {
  Future<NetworkResponse> getUsers();

  Future<NetworkResponse> getUserInfo(String id);
}
