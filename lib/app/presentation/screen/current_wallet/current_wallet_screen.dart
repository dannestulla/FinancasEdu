import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_data.dart';
import '../../../domain/cubits/ticker_cubit.dart';
import '../../../domain/state/ticker_state.dart';
import '../../components/ticker_row.dart';

class CurrentWalledScreen extends StatelessWidget {
  const CurrentWalledScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TickerState tickerState = context.watch<TickerCubit>().state;

    return SingleChildScrollView(
      child: Padding(padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: tickerState.tickers.length,
            itemBuilder: (BuildContext context, int index) {
              return TickerRow(
                title: tickerState.tickers[index].name,
                second: toCurrency(tickerState.tickers[index].total!),
                first:
                    toPercentage(tickerState.tickers[index].percentageCurrent),
              );
            },
          )
        ],
      ),
    ));
  }
}
