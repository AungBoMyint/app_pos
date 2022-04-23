// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_and_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderAndTotal _$$_OrderAndTotalFromJson(Map<String, dynamic> json) =>
    _$_OrderAndTotal(
      orderDataList: (json['orderDataList'] as List<dynamic>?)
          ?.map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalOrder: json['totalOrder'] as int,
      originalTotalRevenue: json['originalTotalRevenue'] as int,
      totalRevenue: json['totalRevenue'] as int,
    );

Map<String, dynamic> _$$_OrderAndTotalToJson(_$_OrderAndTotal instance) =>
    <String, dynamic>{
      'orderDataList': instance.orderDataList?.map((e) => e.toJson()).toList(),
      'totalOrder': instance.totalOrder,
      'originalTotalRevenue': instance.originalTotalRevenue,
      'totalRevenue': instance.totalRevenue,
    };
