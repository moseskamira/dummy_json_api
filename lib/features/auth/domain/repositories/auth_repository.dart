import 'package:dummy_json_api/core/network/response/network_response.dart';
import 'package:dummy_json_api/features/auth/data/models/login_request.dart';

abstract class AuthRepository {
  Future<NetworkResponse> login(LoginRequest request);
}
