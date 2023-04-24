import 'package:financas_edu/app/domain/state/wallet_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/wallet_repository.dart';

class WalletCubit extends Cubit {
  WalletRepository repository;

  WalletCubit({required this.repository}) : super(WalletState.initial()) {
    listenChanges();
  }

  void listenChanges() {
    repository.walletDB.snapshots().listen(
      (wallet) {
        emit(WalletState(wallet: wallet.docs.last.data()));
      },
    );
  }

  void rebalanceWallet() {}
}
