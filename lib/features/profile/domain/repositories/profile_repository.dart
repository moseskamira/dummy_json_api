import 'package:dummy_json_api/core/network/response/network_response.dart';

abstract class ProfileRepository {
  Future<NetworkResponse> getUserProfile();
}
