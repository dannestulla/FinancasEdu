import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/wallet_repository.dart';
import '../state/rebalance_wallet_state.dart';

class RebalanceWalletCubit extends Cubit<RebalanceWalletState> {
  RebalanceWalletCubit({required this.repository})
      : super(RebalanceWalletState.initial([]));

  WalletRepository repository;
}