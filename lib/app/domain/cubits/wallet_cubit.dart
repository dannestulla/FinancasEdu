import 'package:financas_edu/app/domain/state/plan_wallet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/wallet_repository.dart';
import '../state/wallet_state.dart';

class WalletCubit extends Cubit {
  WalletCubit({required this.repository})
      : super(WalletState.initial()) {
    repository.getCurrentWallet().then((orders) {
      emit(WalletState(orders: orders.toString()));
    });
  }

  WalletRepository repository;
}