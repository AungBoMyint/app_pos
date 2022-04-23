// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_order_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyOrderData _$$_DailyOrderDataFromJson(Map<String, dynamic> json) =>
    _$_DailyOrderData(
      dateTime: (json['dateTime'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, OrderAndTotal.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_DailyOrderDataToJson(_$_DailyOrderData instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.map((k, e) => MapEntry(k, e.toJson())),
    };
