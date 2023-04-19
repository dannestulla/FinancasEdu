import '../../data/model/wallet.dart';

class PlanWalletState {
  const PlanWalletState({required this.orders});

  final List<Wallet> orders;

  const PlanWalletState.initial(List<Wallet> orders) : this(orders: orders);
}