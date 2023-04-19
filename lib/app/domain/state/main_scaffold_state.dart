import '../../data/model/wallet.dart';

class MainScaffoldState {
  MainScaffoldState({required this.bottomNavSelection});

  final int bottomNavSelection;

  MainScaffoldState.initial() : this(bottomNavSelection: 1);
}