import 'package:financas_edu/app/domain/cubits/main_scaffold_cubit.dart';
import 'package:financas_edu/app/presentation/screen/current_wallet_screen.dart';
import 'package:financas_edu/app/presentation/screen/orders_screen.dart';
import 'package:financas_edu/app/presentation/screen/planned_wallet_screen.dart';
import 'package:financas_edu/app/presentation/screen/rebalance_wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScaffold extends StatelessWidget{
  MainScaffold({super.key});

  final List<Widget> screens = [
    const CurrentWalletScreen(),
    const RebalanceWalledScreen(),
    const PlannedWalletScreen(),
    const OrdersScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final bottomNavSelection = context.watch<MainScaffoldCubit>();
    final currentPage = bottomNavSelection.state.bottomNavSelection;
    return Scaffold(
      body: screens[currentPage],
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
        onTap: (int index) => bottomNavSelection.changePage(index),
        items: const [
          BottomNavigationBarItem(
            label: "Carteira atual",
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Rebalancear carteira",
            icon: Icon(Icons.swap_vert),
          ),
          BottomNavigationBarItem(
            label: "Planejar carteira",
            icon: Icon(Icons.create_new_folder),
          ),
          BottomNavigationBarItem(
            label: "Ordens",
            icon: Icon(Icons.menu_open),
          )
        ],
      ),
    );
  }
}