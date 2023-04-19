import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/wallet_repository.dart';
import '../state/plan_wallet_state.dart';

class PlanWalletCubit extends Cubit<PlanWalletState> {
  PlanWalletCubit({required this.repository})
      : super(PlanWalletState.initial([]));

  WalletRepository repository;
}