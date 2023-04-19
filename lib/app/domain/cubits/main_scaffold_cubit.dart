import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/main_scaffold_state.dart';

class MainScaffoldCubit extends Cubit<MainScaffoldState> {
  MainScaffoldCubit()
      : super(MainScaffoldState.initial());

  void changePage(int index) {
    emit(MainScaffoldState(bottomNavSelection: index));
  }
}