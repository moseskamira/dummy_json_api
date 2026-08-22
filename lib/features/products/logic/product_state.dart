import 'package:dummy_json_api/features/products/data/models/product.dart';
import 'package:equatable/equatable.dart';

class ProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends ProductState {}

class GPLoading extends ProductState {}

class GetSingleProductLoading extends ProductState {}

class GPSuccess extends ProductState {
  final List<Product> products;

  GPSuccess({required this.products});

  @override
  List<Object?> get props => [products];
}

class GetSingleProductSuccess extends ProductState {
  final dynamic product;

  GetSingleProductSuccess({required this.product});

  @override
  List<Object?> get props => [product];
}

class GPError extends ProductState {
  final String message;

  GPError({required this.message});

  @override
  List<Object?> get props => [message];
}

class GetSingleProductError extends ProductState {
  final String message;

  GetSingleProductError({required this.message});

  @override
  List<Object?> get props => [message];
}
