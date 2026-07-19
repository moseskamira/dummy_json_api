import 'package:dummy_json_api/features/carts/data/models/carts_response.dart';
import 'package:equatable/equatable.dart';

class CartState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends CartState {}

class CartsLoading extends CartState {}

class CartsSuccess extends CartState {
  final CartsResponse? response;

  CartsSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class CartsError extends CartState {
  final String message;

  CartsError(this.message);

  @override
  List<Object?> get props => [message];
}
