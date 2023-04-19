import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/cubits/wallet_cubit.dart';

class CurrentWalletScreen extends StatelessWidget {
  const CurrentWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wallet = context.watch<WalletCubit>().state.orders;

    return Center(child: Text(wallet.toString()));
  }
}