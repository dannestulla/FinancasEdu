import '../../data/model/ticker/ticker.dart';

class TickerState {
  const TickerState({required this.tickers});

  final List<Ticker> tickers;

  TickerState.initial(List<Ticker> tickers) : this(tickers: []);
}
