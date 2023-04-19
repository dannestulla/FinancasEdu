import '../../data/model/wallet.dart';

class OrdersState {
  const OrdersState({required this.orders});

  final List<Wallet> orders;

  const OrdersState.initial(List<Wallet> orders) : this(orders: orders);
}