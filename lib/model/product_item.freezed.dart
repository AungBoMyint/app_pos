// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
class _$ProductItemTearOff {
  const _$ProductItemTearOff();

  _ProductItem call(
      {required String id,
      required String productName,
      required String image,
      required String size,
      required String color,
      required String category,
      required int price,
      required int originalQuantity,
      required int originalPrice,
      required int remainQuantity,
      @JsonKey(nullable: true, defaultValue: 0) int? count}) {
    return _ProductItem(
      id: id,
      productName: productName,
      image: image,
      size: size,
      color: color,
      category: category,
      price: price,
      originalQuantity: originalQuantity,
      originalPrice: originalPrice,
      remainQuantity: remainQuantity,
      count: count,
    );
  }

  ProductItem fromJson(Map<String, Object?> json) {
    return ProductItem.fromJson(json);
  }
}

/// @nodoc
const $ProductItem = _$ProductItemTearOff();

/// @nodoc
mixin _$ProductItem {
  String get id => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get originalQuantity => throw _privateConstructorUsedError;
  int get originalPrice => throw _privateConstructorUsedError;
  int get remainQuantity => throw _privateConstructorUsedError;
  @JsonKey(nullable: true, defaultValue: 0)
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String productName,
      String image,
      String size,
      String color,
      String category,
      int price,
      int originalQuantity,
      int originalPrice,
      int remainQuantity,
      @JsonKey(nullable: true, defaultValue: 0) int? count});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res> implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

  final ProductItem _value;
  // ignore: unused_field
  final $Res Function(ProductItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? image = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? originalQuantity = freezed,
    Object? originalPrice = freezed,
    Object? remainQuantity = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      originalQuantity: originalQuantity == freezed
          ? _value.originalQuantity
          : originalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      remainQuantity: remainQuantity == freezed
          ? _value.remainQuantity
          : remainQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ProductItemCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$ProductItemCopyWith(
          _ProductItem value, $Res Function(_ProductItem) then) =
      __$ProductItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String productName,
      String image,
      String size,
      String color,
      String category,
      int price,
      int originalQuantity,
      int originalPrice,
      int remainQuantity,
      @JsonKey(nullable: true, defaultValue: 0) int? count});
}

/// @nodoc
class __$ProductItemCopyWithImpl<$Res> extends _$ProductItemCopyWithImpl<$Res>
    implements _$ProductItemCopyWith<$Res> {
  __$ProductItemCopyWithImpl(
      _ProductItem _value, $Res Function(_ProductItem) _then)
      : super(_value, (v) => _then(v as _ProductItem));

  @override
  _ProductItem get _value => super._value as _ProductItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? image = freezed,
    Object? size = freezed,
    Object? color = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? originalQuantity = freezed,
    Object? originalPrice = freezed,
    Object? remainQuantity = freezed,
    Object? count = freezed,
  }) {
    return _then(_ProductItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      originalQuantity: originalQuantity == freezed
          ? _value.originalQuantity
          : originalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      remainQuantity: remainQuantity == freezed
          ? _value.remainQuantity
          : remainQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductItem implements _ProductItem {
  _$_ProductItem(
      {required this.id,
      required this.productName,
      required this.image,
      required this.size,
      required this.color,
      required this.category,
      required this.price,
      required this.originalQuantity,
      required this.originalPrice,
      required this.remainQuantity,
      @JsonKey(nullable: true, defaultValue: 0) this.count});

  factory _$_ProductItem.fromJson(Map<String, dynamic> json) =>
      _$$_ProductItemFromJson(json);

  @override
  final String id;
  @override
  final String productName;
  @override
  final String image;
  @override
  final String size;
  @override
  final String color;
  @override
  final String category;
  @override
  final int price;
  @override
  final int originalQuantity;
  @override
  final int originalPrice;
  @override
  final int remainQuantity;
  @override
  @JsonKey(nullable: true, defaultValue: 0)
  final int? count;

  @override
  String toString() {
    return 'ProductItem(id: $id, productName: $productName, image: $image, size: $size, color: $color, category: $category, price: $price, originalQuantity: $originalQuantity, originalPrice: $originalPrice, remainQuantity: $remainQuantity, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.originalQuantity, originalQuantity) &&
            const DeepCollectionEquality()
                .equals(other.originalPrice, originalPrice) &&
            const DeepCollectionEquality()
                .equals(other.remainQuantity, remainQuantity) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(originalQuantity),
      const DeepCollectionEquality().hash(originalPrice),
      const DeepCollectionEquality().hash(remainQuantity),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$ProductItemCopyWith<_ProductItem> get copyWith =>
      __$ProductItemCopyWithImpl<_ProductItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductItemToJson(this);
  }
}

abstract class _ProductItem implements ProductItem {
  factory _ProductItem(
      {required String id,
      required String productName,
      required String image,
      required String size,
      required String color,
      required String category,
      required int price,
      required int originalQuantity,
      required int originalPrice,
      required int remainQuantity,
      @JsonKey(nullable: true, defaultValue: 0) int? count}) = _$_ProductItem;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$_ProductItem.fromJson;

  @override
  String get id;
  @override
  String get productName;
  @override
  String get image;
  @override
  String get size;
  @override
  String get color;
  @override
  String get category;
  @override
  int get price;
  @override
  int get originalQuantity;
  @override
  int get originalPrice;
  @override
  int get remainQuantity;
  @override
  @JsonKey(nullable: true, defaultValue: 0)
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$ProductItemCopyWith<_ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}
