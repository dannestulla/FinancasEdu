import 'package:financas_edu/app/data/wallet_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit({required this.repository})
      : super(OrdersState.initial([]));

  WalletRepository repository;
}