import 'package:dummy_json_api/features/products/domain/repositories/product_repository.dart';
import 'package:dummy_json_api/features/products/logic/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/product_response.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository repository;

  ProductCubit(this.repository) : super(Initial());

  Future<void> getProducts() async {
    emit(GPLoading());
    final response = await repository.getProducts();
    if (response.success) {
      final responseData = response.data as ProductsResponse;
      final products = responseData.products ?? [];
      emit(GPSuccess(products: products));
    } else {
      final message = response.error ?? 'Something went wrong';
      emit(GPError(message: message));
    }
  }
}
