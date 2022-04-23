// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItem _$OrderItemFromJson(Map<String, dynamic> json) => OrderItem(
      orderID: json['orderID'] as String,
      pay: json['pay'] as int,
      total: json['total'] as int,
      change: json['change'] as int,
      itemIdList: (json['itemIdList'] as List<dynamic>)
          .map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateTime: json['dateTime'] as String,
    );

Map<String, dynamic> _$OrderItemToJson(OrderItem instance) => <String, dynamic>{
      'orderID': instance.orderID,
      'pay': instance.pay,
      'total': instance.total,
      'change': instance.change,
      'itemIdList': instance.itemIdList.map((e) => e.toJson()).toList(),
      'dateTime': instance.dateTime,
    };
