import 'package:financas_edu/app/domain/cubits/main_scaffold_cubit.dart';
import 'package:financas_edu/app/presentation/screen/current_wallet/current_wallet_screen.dart';
import 'package:financas_edu/app/presentation/screen/current_wallet/rebalance_wallet_screen.dart';
import 'package:financas_edu/app/presentation/screen/orders/orders_screen.dart';
import 'package:financas_edu/app/presentation/screen/property/manage_investment_screen.dart';
import 'package:financas_edu/app/presentation/screen/edit_wallet/edit_wallet_screen.dart';
import 'package:financas_edu/app/presentation/screen/property/property_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/state/main_scaffold_state.dart';
import 'components/app_bar.dart';
import 'components/bottom_bar.dart';

class MainScaffold extends StatelessWidget {
  MainScaffold({super.key});

  final List<Widget> screens = [
    const PropertyScreen(),
    const CurrentWalledScreen(),
    const EditWalletScreen(),
    const OrdersScreen(),
  ];

  final List<Widget> fabScreens = [
    const ManageInvestmentScreen(),
    RebalanceWalletScreen(),
    EditWalletScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final mainScaffoldCubit = context.watch<MainScaffoldCubit>();
    final screenSelection = mainScaffoldCubit.state.navSelection;
    final fabSelection = mainScaffoldCubit.state.fabSelection;
    final fabClicked = mainScaffoldCubit.state.isFabClicked;
    return Scaffold(
      body: fabClicked ? fabScreens[fabSelection] : screens[screenSelection],
      appBar: appBarList[screenSelection],
      floatingActionButton: selectCorrectFab(fabSelection,
          () => mainScaffoldCubit.changePage(fabSelection, isFabClicked: true)),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: screenSelection,
        onTap: (int index) => mainScaffoldCubit.changePage(index),
        items: bottomNavList,
      ),
    );
  }
}
