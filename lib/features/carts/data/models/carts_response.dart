import 'package:json_annotation/json_annotation.dart';

import 'cart.dart';

part 'carts_response.g.dart';

@JsonSerializable()
class CartsResponse {
  final List<Cart> carts;
  final int total;
  final int skip;
  final int limit;

  const CartsResponse({
    required this.carts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory CartsResponse.fromJson(Map<String, dynamic> json) =>
      _$CartsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CartsResponseToJson(this);
}
