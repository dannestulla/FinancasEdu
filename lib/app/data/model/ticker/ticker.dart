import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ticker.freezed.dart';
part 'ticker.g.dart';

@freezed
class Ticker with _$Ticker {
  const factory Ticker(
      {required String name,
      double? percentageCurrent,
      double? percentagePlanned,
      double? price,
      String? date,
      double? quantity,
      double? total}) = _Ticker;

  factory Ticker.fromJson(Map<String, Object?> json) => _$TickerFromJson(json);
}
