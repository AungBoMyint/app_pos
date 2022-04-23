// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coupon _$$_CouponFromJson(Map<String, dynamic> json) => _$_Coupon(
      documentID: json['documentID'] as String?,
      code: json['code'] as String,
      discountContent: json['discountContent'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      expireDate: DateTime.parse(json['expireDate'] as String),
      percentage: json['percentage'] as int,
    );

Map<String, dynamic> _$$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'documentID': instance.documentID,
      'code': instance.code,
      'discountContent': instance.discountContent,
      'startDate': instance.startDate.toIso8601String(),
      'expireDate': instance.expireDate.toIso8601String(),
      'percentage': instance.percentage,
    };
