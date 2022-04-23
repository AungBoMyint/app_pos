// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_order_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyOrderData _$DailyOrderDataFromJson(Map<String, dynamic> json) {
  return _DailyOrderData.fromJson(json);
}

/// @nodoc
class _$DailyOrderDataTearOff {
  const _$DailyOrderDataTearOff();

  _DailyOrderData call({required Map<String, OrderAndTotal> dateTime}) {
    return _DailyOrderData(
      dateTime: dateTime,
    );
  }

  DailyOrderData fromJson(Map<String, Object?> json) {
    return DailyOrderData.fromJson(json);
  }
}

/// @nodoc
const $DailyOrderData = _$DailyOrderDataTearOff();

/// @nodoc
mixin _$DailyOrderData {
  Map<String, OrderAndTotal> get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyOrderDataCopyWith<DailyOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyOrderDataCopyWith<$Res> {
  factory $DailyOrderDataCopyWith(
          DailyOrderData value, $Res Function(DailyOrderData) then) =
      _$DailyOrderDataCopyWithImpl<$Res>;
  $Res call({Map<String, OrderAndTotal> dateTime});
}

/// @nodoc
class _$DailyOrderDataCopyWithImpl<$Res>
    implements $DailyOrderDataCopyWith<$Res> {
  _$DailyOrderDataCopyWithImpl(this._value, this._then);

  final DailyOrderData _value;
  // ignore: unused_field
  final $Res Function(DailyOrderData) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as Map<String, OrderAndTotal>,
    ));
  }
}

/// @nodoc
abstract class _$DailyOrderDataCopyWith<$Res>
    implements $DailyOrderDataCopyWith<$Res> {
  factory _$DailyOrderDataCopyWith(
          _DailyOrderData value, $Res Function(_DailyOrderData) then) =
      __$DailyOrderDataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, OrderAndTotal> dateTime});
}

/// @nodoc
class __$DailyOrderDataCopyWithImpl<$Res>
    extends _$DailyOrderDataCopyWithImpl<$Res>
    implements _$DailyOrderDataCopyWith<$Res> {
  __$DailyOrderDataCopyWithImpl(
      _DailyOrderData _value, $Res Function(_DailyOrderData) _then)
      : super(_value, (v) => _then(v as _DailyOrderData));

  @override
  _DailyOrderData get _value => super._value as _DailyOrderData;

  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_DailyOrderData(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as Map<String, OrderAndTotal>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DailyOrderData implements _DailyOrderData {
  _$_DailyOrderData({required this.dateTime});

  factory _$_DailyOrderData.fromJson(Map<String, dynamic> json) =>
      _$$_DailyOrderDataFromJson(json);

  @override
  final Map<String, OrderAndTotal> dateTime;

  @override
  String toString() {
    return 'DailyOrderData(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyOrderData &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$DailyOrderDataCopyWith<_DailyOrderData> get copyWith =>
      __$DailyOrderDataCopyWithImpl<_DailyOrderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyOrderDataToJson(this);
  }
}

abstract class _DailyOrderData implements DailyOrderData {
  factory _DailyOrderData({required Map<String, OrderAndTotal> dateTime}) =
      _$_DailyOrderData;

  factory _DailyOrderData.fromJson(Map<String, dynamic> json) =
      _$_DailyOrderData.fromJson;

  @override
  Map<String, OrderAndTotal> get dateTime;
  @override
  @JsonKey(ignore: true)
  _$DailyOrderDataCopyWith<_DailyOrderData> get copyWith =>
      throw _privateConstructorUsedError;
}
