// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticker _$$_TickerFromJson(Map<String, dynamic> json) => _$_Ticker(
      name: json['name'] as String,
      percentageCurrent: (json['percentageCurrent'] as num?)?.toDouble(),
      percentagePlanned: (json['percentagePlanned'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      date: json['date'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TickerToJson(_$_Ticker instance) => <String, dynamic>{
      'name': instance.name,
      'percentageCurrent': instance.percentageCurrent,
      'percentagePlanned': instance.percentagePlanned,
      'price': instance.price,
      'date': instance.date,
      'quantity': instance.quantity,
      'total': instance.total,
    };
