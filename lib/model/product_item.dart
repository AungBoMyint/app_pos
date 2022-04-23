import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item.freezed.dart';
part 'product_item.g.dart';

@freezed
class ProductItem with _$ProductItem{

  factory ProductItem({
    required String id,
    required String productName,
    required String image,
    required String size,
    required String color,
    required String category,
    required int price,
    required int originalQuantity,
    required int originalPrice,
    required int remainQuantity,
    @JsonKey(nullable: true,defaultValue: 0)
    int? count,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}
