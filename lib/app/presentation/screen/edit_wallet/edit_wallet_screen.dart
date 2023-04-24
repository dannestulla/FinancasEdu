import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app_data.dart';
import '../../../domain/cubits/ticker_cubit.dart';
import '../../../domain/state/ticker_state.dart';
import '../../components/ticker_row.dart';
import '../../components/ticker_row_editable.dart';


class EditWalletScreen extends StatefulWidget {
  const EditWalletScreen({super.key});

  @override
  State<EditWalletScreen> createState() => _EditWalletScreenState();
}

class _EditWalletScreenState extends State<EditWalletScreen> {
  @override
  Widget build(BuildContext context) {
    TickerState tickerState = context.watch<TickerCubit>().state;

    return SingleChildScrollView(
        child: Padding(padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: tickerState.tickers.length,
            itemBuilder: (BuildContext context, int index) {
              return TickerRowEditable(
                title: tickerState.tickers[index].name,
                second: toCurrency(tickerState.tickers[index].total!),
                first:
                    toPercentage(tickerState.tickers[index].percentagePlanned),
              );
            },
          )
        ],
      ),
        ));
  }
}
