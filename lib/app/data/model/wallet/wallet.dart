import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet(
      {required double performance,
      required String profit,
      required String date,
      required double total}) = _Wallet;

  factory Wallet.fromJson(Map<String, Object?> json) => _$WalletFromJson(json);
}
