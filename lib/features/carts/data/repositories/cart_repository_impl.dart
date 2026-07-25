import 'package:dio/dio.dart';
import 'package:dummy_json_api/core/network/response/network_response.dart';
import 'package:dummy_json_api/core/network/retrofit/api_client.dart';
import 'package:dummy_json_api/core/network/retrofit/api_service.dart';
import 'package:dummy_json_api/features/carts/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  late ApiClient apiClient;

  CartRepositoryImpl() {
    apiClient = ApiService().apiClient;
  }

  @override
  Future<NetworkResponse> getCarts() async {
    try {
      final response = await apiClient.getCarts();
      return NetworkResponse(true, data: response);
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return NetworkResponse(false, error: message);
    } catch (e) {
      final message = e.toString();
      return NetworkResponse(false, error: message);
    }
  }

  @override
  Future<NetworkResponse> getCart(String cartId) async {
    try {
      final response = await apiClient.getCart(cartId);
      return NetworkResponse(true, data: response);
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return NetworkResponse(false, error: message);
    } catch (e) {
      final message = e.toString();
      return NetworkResponse(false, error: message);
    }
  }
}
