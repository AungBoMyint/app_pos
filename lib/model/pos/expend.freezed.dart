// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expend _$ExpendFromJson(Map<String, dynamic> json) {
  return _Expend.fromJson(json);
}

/// @nodoc
class _$ExpendTearOff {
  const _$ExpendTearOff();

  _Expend call(
      {required String description,
      required int cost,
      required String category,
      required String dateTime}) {
    return _Expend(
      description: description,
      cost: cost,
      category: category,
      dateTime: dateTime,
    );
  }

  Expend fromJson(Map<String, Object?> json) {
    return Expend.fromJson(json);
  }
}

/// @nodoc
const $Expend = _$ExpendTearOff();

/// @nodoc
mixin _$Expend {
  String get description => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpendCopyWith<Expend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpendCopyWith<$Res> {
  factory $ExpendCopyWith(Expend value, $Res Function(Expend) then) =
      _$ExpendCopyWithImpl<$Res>;
  $Res call({String description, int cost, String category, String dateTime});
}

/// @nodoc
class _$ExpendCopyWithImpl<$Res> implements $ExpendCopyWith<$Res> {
  _$ExpendCopyWithImpl(this._value, this._then);

  final Expend _value;
  // ignore: unused_field
  final $Res Function(Expend) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? cost = freezed,
    Object? category = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ExpendCopyWith<$Res> implements $ExpendCopyWith<$Res> {
  factory _$ExpendCopyWith(_Expend value, $Res Function(_Expend) then) =
      __$ExpendCopyWithImpl<$Res>;
  @override
  $Res call({String description, int cost, String category, String dateTime});
}

/// @nodoc
class __$ExpendCopyWithImpl<$Res> extends _$ExpendCopyWithImpl<$Res>
    implements _$ExpendCopyWith<$Res> {
  __$ExpendCopyWithImpl(_Expend _value, $Res Function(_Expend) _then)
      : super(_value, (v) => _then(v as _Expend));

  @override
  _Expend get _value => super._value as _Expend;

  @override
  $Res call({
    Object? description = freezed,
    Object? cost = freezed,
    Object? category = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_Expend(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Expend implements _Expend {
  _$_Expend(
      {required this.description,
      required this.cost,
      required this.category,
      required this.dateTime});

  factory _$_Expend.fromJson(Map<String, dynamic> json) =>
      _$$_ExpendFromJson(json);

  @override
  final String description;
  @override
  final int cost;
  @override
  final String category;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'Expend(description: $description, cost: $cost, category: $category, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Expend &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$ExpendCopyWith<_Expend> get copyWith =>
      __$ExpendCopyWithImpl<_Expend>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpendToJson(this);
  }
}

abstract class _Expend implements Expend {
  factory _Expend(
      {required String description,
      required int cost,
      required String category,
      required String dateTime}) = _$_Expend;

  factory _Expend.fromJson(Map<String, dynamic> json) = _$_Expend.fromJson;

  @override
  String get description;
  @override
  int get cost;
  @override
  String get category;
  @override
  String get dateTime;
  @override
  @JsonKey(ignore: true)
  _$ExpendCopyWith<_Expend> get copyWith => throw _privateConstructorUsedError;
}
