import 'package:dummy_json_api/features/products/data/models/product.dart';
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

  Future<void> getProduct(String prodId) async {
    emit(GetSingleProductLoading());
    final response = await repository.getProduct(prodId);
    if (response.success) {
      final product = response.data as Product;
      emit(GetSingleProductSuccess(product: product));
    } else {
      final message = response.error ?? 'Something went wrong';
      emit(GetSingleProductError(message: message));
    }
  }

  Future<void> getProductsCategories() async {
    emit(GetProductsCategoriesLoading());
    final response = await repository.getProductsCategories();
    if (response.success) {
      final categories = response.data;
      emit(GetProductsCategoriesSuccess(categories: categories));
    } else {
      final message = response.error ?? 'Something went wrong';
      emit(GetProductsCategoriesError(message: message));
    }
  }
}
