import '../../data/model/wallet.dart';

class WalletState {
  const WalletState({required this.orders});

  WalletState.initial() : this(orders: "");

  final String orders;

}