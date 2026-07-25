import 'package:dummy_json_api/core/network/response/network_response.dart';

abstract class CartRepository {
  Future<NetworkResponse> getCarts();

  Future<NetworkResponse> getCart(String cartId);
}
