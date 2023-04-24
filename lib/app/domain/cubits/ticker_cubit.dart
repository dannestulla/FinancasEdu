import 'package:financas_edu/app/data/model/ticker/ticker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/wallet_repository.dart';
import '../state/ticker_state.dart';

class TickerCubit extends Cubit {
  WalletRepository repository;

  TickerCubit({required this.repository}) : super(TickerState.initial([])) {
    listenChanges();
  }

  void listenChanges() {
    repository.tickerDB.snapshots().listen(
      (ticker) {
        emit(
          TickerState(
            tickers: ticker.docs.map((element) {
              final ticker = element.data();
              return Ticker(
                  name: ticker.name,
                  percentageCurrent: ticker.percentageCurrent,
                  price: ticker.price,
                  date: ticker.date,
                  quantity: ticker.quantity,
                  total: ticker.total);
            }).toList(),
          ),
        );
      },
    );
  }

  updateTicker(Ticker ticker, bool remove) {
    repository.updateTicker(ticker, remove);
  }
}
