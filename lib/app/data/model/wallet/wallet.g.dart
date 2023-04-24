// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      performance: (json['performance'] as num).toDouble(),
      profit: json['profit'] as String,
      date: json['date'] as String,
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'performance': instance.performance,
      'profit': instance.profit,
      'date': instance.date,
      'total': instance.total,
    };
