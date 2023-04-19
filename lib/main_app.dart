import 'package:financas_edu/app/data/wallet_repository.dart';
import 'package:financas_edu/app/domain/cubits/main_scaffold_cubit.dart';
import 'package:financas_edu/app/domain/cubits/plan_wallet_cubit.dart';
import 'package:financas_edu/app/domain/cubits/wallet_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/domain/cubits/orders_cubit.dart';
import 'app/domain/cubits/rebalance_wallet_cubit.dart';
import 'app/presentation/main_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return RepositoryProvider<WalletRepository>(
      create: (context) => WalletRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MainScaffoldCubit>(
              create: (context) => MainScaffoldCubit()),
          BlocProvider<WalletCubit>(
            create: (context) => WalletCubit(
                repository: context.read<WalletRepository>()),
          ),
          BlocProvider<RebalanceWalletCubit>(
            create: (context) => RebalanceWalletCubit(
                repository: context.read<WalletRepository>()),
          ),
          BlocProvider<PlanWalletCubit>(
            create: (context) =>
                PlanWalletCubit(repository: context.read<WalletRepository>()),
          ),
          BlocProvider<OrdersCubit>(
            create: (context) =>
                OrdersCubit(repository: context.read<WalletRepository>()),
          ),
        ],
        child: MaterialApp(
            home: MainScaffold())
        ),
    );
  }
}
