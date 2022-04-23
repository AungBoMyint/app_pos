// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_and_total.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderAndTotal _$OrderAndTotalFromJson(Map<String, dynamic> json) {
  return _OrderAndTotal.fromJson(json);
}

/// @nodoc
class _$OrderAndTotalTearOff {
  const _$OrderAndTotalTearOff();

  _OrderAndTotal call(
      {@JsonKey(nullable: true) required List<OrderData>? orderDataList,
      required int totalOrder,
      required int originalTotalRevenue,
      required int totalRevenue}) {
    return _OrderAndTotal(
      orderDataList: orderDataList,
      totalOrder: totalOrder,
      originalTotalRevenue: originalTotalRevenue,
      totalRevenue: totalRevenue,
    );
  }

  OrderAndTotal fromJson(Map<String, Object?> json) {
    return OrderAndTotal.fromJson(json);
  }
}

/// @nodoc
const $OrderAndTotal = _$OrderAndTotalTearOff();

/// @nodoc
mixin _$OrderAndTotal {
  @JsonKey(nullable: true)
  List<OrderData>? get orderDataList => throw _privateConstructorUsedError;
  int get totalOrder => throw _privateConstructorUsedError;
  int get originalTotalRevenue => throw _privateConstructorUsedError;
  int get totalRevenue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderAndTotalCopyWith<OrderAndTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderAndTotalCopyWith<$Res> {
  factory $OrderAndTotalCopyWith(
          OrderAndTotal value, $Res Function(OrderAndTotal) then) =
      _$OrderAndTotalCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(nullable: true) List<OrderData>? orderDataList,
      int totalOrder,
      int originalTotalRevenue,
      int totalRevenue});
}

/// @nodoc
class _$OrderAndTotalCopyWithImpl<$Res>
    implements $OrderAndTotalCopyWith<$Res> {
  _$OrderAndTotalCopyWithImpl(this._value, this._then);

  final OrderAndTotal _value;
  // ignore: unused_field
  final $Res Function(OrderAndTotal) _then;

  @override
  $Res call({
    Object? orderDataList = freezed,
    Object? totalOrder = freezed,
    Object? originalTotalRevenue = freezed,
    Object? totalRevenue = freezed,
  }) {
    return _then(_value.copyWith(
      orderDataList: orderDataList == freezed
          ? _value.orderDataList
          : orderDataList // ignore: cast_nullable_to_non_nullable
              as List<OrderData>?,
      totalOrder: totalOrder == freezed
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int,
      originalTotalRevenue: originalTotalRevenue == freezed
          ? _value.originalTotalRevenue
          : originalTotalRevenue // ignore: cast_nullable_to_non_nullable
              as int,
      totalRevenue: totalRevenue == freezed
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OrderAndTotalCopyWith<$Res>
    implements $OrderAndTotalCopyWith<$Res> {
  factory _$OrderAndTotalCopyWith(
          _OrderAndTotal value, $Res Function(_OrderAndTotal) then) =
      __$OrderAndTotalCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(nullable: true) List<OrderData>? orderDataList,
      int totalOrder,
      int originalTotalRevenue,
      int totalRevenue});
}

/// @nodoc
class __$OrderAndTotalCopyWithImpl<$Res>
    extends _$OrderAndTotalCopyWithImpl<$Res>
    implements _$OrderAndTotalCopyWith<$Res> {
  __$OrderAndTotalCopyWithImpl(
      _OrderAndTotal _value, $Res Function(_OrderAndTotal) _then)
      : super(_value, (v) => _then(v as _OrderAndTotal));

  @override
  _OrderAndTotal get _value => super._value as _OrderAndTotal;

  @override
  $Res call({
    Object? orderDataList = freezed,
    Object? totalOrder = freezed,
    Object? originalTotalRevenue = freezed,
    Object? totalRevenue = freezed,
  }) {
    return _then(_OrderAndTotal(
      orderDataList: orderDataList == freezed
          ? _value.orderDataList
          : orderDataList // ignore: cast_nullable_to_non_nullable
              as List<OrderData>?,
      totalOrder: totalOrder == freezed
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int,
      originalTotalRevenue: originalTotalRevenue == freezed
          ? _value.originalTotalRevenue
          : originalTotalRevenue // ignore: cast_nullable_to_non_nullable
              as int,
      totalRevenue: totalRevenue == freezed
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderAndTotal implements _OrderAndTotal {
  _$_OrderAndTotal(
      {@JsonKey(nullable: true) required this.orderDataList,
      required this.totalOrder,
      required this.originalTotalRevenue,
      required this.totalRevenue});

  factory _$_OrderAndTotal.fromJson(Map<String, dynamic> json) =>
      _$$_OrderAndTotalFromJson(json);

  @override
  @JsonKey(nullable: true)
  final List<OrderData>? orderDataList;
  @override
  final int totalOrder;
  @override
  final int originalTotalRevenue;
  @override
  final int totalRevenue;

  @override
  String toString() {
    return 'OrderAndTotal(orderDataList: $orderDataList, totalOrder: $totalOrder, originalTotalRevenue: $originalTotalRevenue, totalRevenue: $totalRevenue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderAndTotal &&
            const DeepCollectionEquality()
                .equals(other.orderDataList, orderDataList) &&
            const DeepCollectionEquality()
                .equals(other.totalOrder, totalOrder) &&
            const DeepCollectionEquality()
                .equals(other.originalTotalRevenue, originalTotalRevenue) &&
            const DeepCollectionEquality()
                .equals(other.totalRevenue, totalRevenue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orderDataList),
      const DeepCollectionEquality().hash(totalOrder),
      const DeepCollectionEquality().hash(originalTotalRevenue),
      const DeepCollectionEquality().hash(totalRevenue));

  @JsonKey(ignore: true)
  @override
  _$OrderAndTotalCopyWith<_OrderAndTotal> get copyWith =>
      __$OrderAndTotalCopyWithImpl<_OrderAndTotal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderAndTotalToJson(this);
  }
}

abstract class _OrderAndTotal implements OrderAndTotal {
  factory _OrderAndTotal(
      {@JsonKey(nullable: true) required List<OrderData>? orderDataList,
      required int totalOrder,
      required int originalTotalRevenue,
      required int totalRevenue}) = _$_OrderAndTotal;

  factory _OrderAndTotal.fromJson(Map<String, dynamic> json) =
      _$_OrderAndTotal.fromJson;

  @override
  @JsonKey(nullable: true)
  List<OrderData>? get orderDataList;
  @override
  int get totalOrder;
  @override
  int get originalTotalRevenue;
  @override
  int get totalRevenue;
  @override
  @JsonKey(ignore: true)
  _$OrderAndTotalCopyWith<_OrderAndTotal> get copyWith =>
      throw _privateConstructorUsedError;
}
