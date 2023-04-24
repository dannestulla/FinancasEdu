import '../../data/model/wallet/wallet.dart';

class RebalanceWalletState {
  const RebalanceWalletState({required this.orders});

  final List<Wallet> orders;

  const RebalanceWalletState.initial(List<Wallet> orders)
      : this(orders: orders);
}
