import 'package:financas_edu/app/domain/cubits/ticker_cubit.dart';
import 'package:financas_edu/app/domain/state/wallet_state.dart';
import 'package:financas_edu/app/presentation/components/ticker_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_data.dart';
import '../../../domain/cubits/wallet_cubit.dart';
import '../../../domain/state/ticker_state.dart';

class PropertyScreen extends StatelessWidget {
  const PropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WalletState walletState = context.watch<WalletCubit>().state;
    TickerState tickerState = context.watch<TickerCubit>().state;
    return SingleChildScrollView(
        child: Padding(padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Column(
        children: [
          TickerRow(
            title: "Patrimonio atual",
            second: toCurrency(walletState.wallet.total),
            first: '',
          ),
          TickerRow(
            title: "Rentabilidade bruta",
            second: toCurrency(walletState.wallet.total),
            first: '',
          ),
          TickerRow(
            title: "Variação da rentabilidade",
            second: toPercentage(walletState.wallet.performance),
            first: '',
          ),
          TickerRow(
            title: "Total investido",
            second: toCurrency(walletState.wallet.total),
            first: '',
          ),
          const SizedBox(height: 30),
          ListView.builder(
            shrinkWrap: true,
            itemCount: tickerState.tickers.length,
            itemBuilder: (BuildContext context, int index) {
              return TickerRow(
                title: tickerState.tickers[index].name,
                second: toCurrency(tickerState.tickers[index].total!),
                first: '',
              );
            },
          )
        ],
      ),
    ));
  }
}
