import 'package:financas_edu/app/domain/cubits/main_scaffold_cubit.dart';
import 'package:financas_edu/app/presentation/components/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/cubits/wallet_cubit.dart';
import '../../components/text_field.dart';

class RebalanceWalletScreen extends StatefulWidget {
  RebalanceWalletScreen({super.key});

  @override
  State<RebalanceWalletScreen> createState() => _RebalanceWalletScreenState();
}

class _RebalanceWalletScreenState extends State<RebalanceWalletScreen> {
  int selection = 0;
  final investment = TextEditingController();
  bool textValidated = false;
  List<String> label = [
    "Total que deseja investir",
    "Total que deseja resgatar",
  ];
  List<String> description = [
    "O dinheiro será investido nos ativos de acordo com a aba \"Editar carteira\". Ordens serão criadas para que você efetue o rebalanceamento da carteira",
    "O dinheiro será resgatado dos ativos de acordo com a aba \"Editar carteira\". Ordens serão criadas para que você efetue o rebalanceamento da carteira",
    "A carteira será rebalanceada de acordo com o planejamento da aba \"Editar carteira\""
  ];

  @override
  Widget build(BuildContext context) {
    WalletCubit walletCubit = context.watch<WalletCubit>();
    MainScaffoldCubit mainScaffoldCubit = context.watch<MainScaffoldCubit>();

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text("O que deseja fazer?",
                style: TextStyle(fontSize: 26), textAlign: TextAlign.center),
            const SizedBox(height: 50),
          SegmentedButton(
              segments: const <ButtonSegment>[
                ButtonSegment(value: 0, label: Text('Investir')),
                ButtonSegment(value: 1, label: Text('Resgatar')),
                ButtonSegment(value: 2, label: Text('Rebalancear')),
              ],
              selected: {selection},
              onSelectionChanged: (Set<dynamic> selected) {
                setState(() {
                  selection = selected.last;
                });
              },
            ),
            const SizedBox(height: 30),
            Text(description[selection],
                style: const TextStyle(fontSize: 16), textAlign: TextAlign.start),
            const SizedBox(height: 30),
            selection != 2 ? TextFieldFinance(
                controller: investment, label: label[selection]): SizedBox.shrink(),
            const SizedBox(height: 30),
            SizedBox(
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      if (isValidated) {
                        walletCubit.rebalanceWallet();
                        mainScaffoldCubit.changePage(1);
                      } else {
                        makeToast("Preencha todos os campos");
                      }
                    },
                    child: const Text("Confirmar")))
          ],
        ),
      ),
    );
  }

  bool get isValidated {
    return true;
  }
}
