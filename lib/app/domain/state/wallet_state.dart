import '../../data/model/wallet/wallet.dart';

class WalletState {
  WalletState({required this.wallet});

  final Wallet wallet;

  WalletState.initial()
      : this(wallet: const Wallet(performance: 12, profit: '', date: '', total: 32));
}
