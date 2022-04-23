// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
class _$CouponTearOff {
  const _$CouponTearOff();

  _Coupon call(
      {@JsonKey(nullable: true) String? documentID,
      required String code,
      required String discountContent,
      required DateTime startDate,
      required DateTime expireDate,
      required int percentage}) {
    return _Coupon(
      documentID: documentID,
      code: code,
      discountContent: discountContent,
      startDate: startDate,
      expireDate: expireDate,
      percentage: percentage,
    );
  }

  Coupon fromJson(Map<String, Object?> json) {
    return Coupon.fromJson(json);
  }
}

/// @nodoc
const $Coupon = _$CouponTearOff();

/// @nodoc
mixin _$Coupon {
  @JsonKey(nullable: true)
  String? get documentID => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get discountContent => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get expireDate => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(nullable: true) String? documentID,
      String code,
      String discountContent,
      DateTime startDate,
      DateTime expireDate,
      int percentage});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res> implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  final Coupon _value;
  // ignore: unused_field
  final $Res Function(Coupon) _then;

  @override
  $Res call({
    Object? documentID = freezed,
    Object? code = freezed,
    Object? discountContent = freezed,
    Object? startDate = freezed,
    Object? expireDate = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      documentID: documentID == freezed
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      discountContent: discountContent == freezed
          ? _value.discountContent
          : discountContent // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponCopyWith(_Coupon value, $Res Function(_Coupon) then) =
      __$CouponCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(nullable: true) String? documentID,
      String code,
      String discountContent,
      DateTime startDate,
      DateTime expireDate,
      int percentage});
}

/// @nodoc
class __$CouponCopyWithImpl<$Res> extends _$CouponCopyWithImpl<$Res>
    implements _$CouponCopyWith<$Res> {
  __$CouponCopyWithImpl(_Coupon _value, $Res Function(_Coupon) _then)
      : super(_value, (v) => _then(v as _Coupon));

  @override
  _Coupon get _value => super._value as _Coupon;

  @override
  $Res call({
    Object? documentID = freezed,
    Object? code = freezed,
    Object? discountContent = freezed,
    Object? startDate = freezed,
    Object? expireDate = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_Coupon(
      documentID: documentID == freezed
          ? _value.documentID
          : documentID // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      discountContent: discountContent == freezed
          ? _value.discountContent
          : discountContent // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupon implements _Coupon {
  _$_Coupon(
      {@JsonKey(nullable: true) this.documentID,
      required this.code,
      required this.discountContent,
      required this.startDate,
      required this.expireDate,
      required this.percentage});

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$$_CouponFromJson(json);

  @override
  @JsonKey(nullable: true)
  final String? documentID;
  @override
  final String code;
  @override
  final String discountContent;
  @override
  final DateTime startDate;
  @override
  final DateTime expireDate;
  @override
  final int percentage;

  @override
  String toString() {
    return 'Coupon(documentID: $documentID, code: $code, discountContent: $discountContent, startDate: $startDate, expireDate: $expireDate, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coupon &&
            const DeepCollectionEquality()
                .equals(other.documentID, documentID) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.discountContent, discountContent) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate) &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(documentID),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(discountContent),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(expireDate),
      const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$CouponCopyWith<_Coupon> get copyWith =>
      __$CouponCopyWithImpl<_Coupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponToJson(this);
  }
}

abstract class _Coupon implements Coupon {
  factory _Coupon(
      {@JsonKey(nullable: true) String? documentID,
      required String code,
      required String discountContent,
      required DateTime startDate,
      required DateTime expireDate,
      required int percentage}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  @JsonKey(nullable: true)
  String? get documentID;
  @override
  String get code;
  @override
  String get discountContent;
  @override
  DateTime get startDate;
  @override
  DateTime get expireDate;
  @override
  int get percentage;
  @override
  @JsonKey(ignore: true)
  _$CouponCopyWith<_Coupon> get copyWith => throw _privateConstructorUsedError;
}
