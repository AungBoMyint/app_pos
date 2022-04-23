// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductItem _$$_ProductItemFromJson(Map<String, dynamic> json) =>
    _$_ProductItem(
      id: json['id'] as String,
      productName: json['productName'] as String,
      image: json['image'] as String,
      size: json['size'] as String,
      color: json['color'] as String,
      category: json['category'] as String,
      price: json['price'] as int,
      originalQuantity: json['originalQuantity'] as int,
      originalPrice: json['originalPrice'] as int,
      remainQuantity: json['remainQuantity'] as int,
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductItemToJson(_$_ProductItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'image': instance.image,
      'size': instance.size,
      'color': instance.color,
      'category': instance.category,
      'price': instance.price,
      'originalQuantity': instance.originalQuantity,
      'originalPrice': instance.originalPrice,
      'remainQuantity': instance.remainQuantity,
      'count': instance.count,
    };
