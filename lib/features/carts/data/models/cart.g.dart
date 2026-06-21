// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
  id: (json['id'] as num).toInt(),
  products: (json['products'] as List<dynamic>)
      .map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: json['total'] as num,
  discountedTotal: json['discountedTotal'] as num,
  userId: (json['userId'] as num).toInt(),
  totalProducts: (json['totalProducts'] as num).toInt(),
  totalQuantity: (json['totalQuantity'] as num).toInt(),
);

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
  'id': instance.id,
  'products': instance.products,
  'total': instance.total,
  'discountedTotal': instance.discountedTotal,
  'userId': instance.userId,
  'totalProducts': instance.totalProducts,
  'totalQuantity': instance.totalQuantity,
};
