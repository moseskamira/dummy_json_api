import 'package:dio/dio.dart';
import 'package:dummy_json_api/features/auth/data/models/login_response.dart';
import 'package:dummy_json_api/features/carts/data/models/carts_response.dart';
import 'package:dummy_json_api/features/products/data/models/product_response.dart';
import 'package:dummy_json_api/features/profile/data/models/user_profile_dto.dart';
import 'package:dummy_json_api/features/users/data/models/users_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../features/auth/data/models/login_request.dart';
import 'apis.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: Apis.BaseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio) => _ApiClient(dio);

  @POST(Apis.login)
  Future<LoginResponse> login(@Body() LoginRequest request);

  @GET(Apis.profile)
  Future<UserProfileDto> profile();

  @GET(Apis.users)
  Future<UsersResponse> getUsers();

  @GET(Apis.user)
  Future<dynamic> getUserInfo(@Path("id") String userId);

  @GET(Apis.products)
  Future<ProductsResponse> getProducts();

  @GET(Apis.carts)
  Future<CartsResponse> getCarts();
}
