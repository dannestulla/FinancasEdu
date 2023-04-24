import 'package:financas_edu/app/domain/cubits/main_scaffold_cubit.dart';
import 'package:financas_edu/app/domain/state/ticker_state.dart';
import 'package:financas_edu/app/presentation/components/toast.dart';
import 'package:financas_edu/core/app_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/ticker/ticker.dart';
import '../../../domain/cubits/ticker_cubit.dart';
import '../../components/text_field.dart';

class ManageInvestmentScreen extends StatefulWidget {
  const ManageInvestmentScreen({super.key});

  @override
  State<ManageInvestmentScreen> createState() => _ManageInvestmentScreenState();
}

class _ManageInvestmentScreenState extends State<ManageInvestmentScreen> {
  int selection = 0;
  final ticker = TextEditingController();
  final quantity = TextEditingController();
  final price = TextEditingController();
  final total = TextEditingController();
  final tickerRemove = TextEditingController();
  bool textValidated = false;
  late List<Ticker> list;
  Ticker? dropdownValue;

  @override
  Widget build(BuildContext context) {
    TickerState tickerState = context.watch<TickerCubit>().state;
    TickerCubit tickerCubit = context.watch<TickerCubit>();
    MainScaffoldCubit mainScaffoldCubit = context.watch<MainScaffoldCubit>();

    list = tickerState.tickers.map((item) {
      return item;
    }).toList();

    if (dropdownValue == null) list.first;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Text("Deseja adicionar ou remover um ativo?",
              style: TextStyle(fontSize: 26), textAlign: TextAlign.center),
          const SizedBox(height: 50),
          SegmentedButton(
            segments: const <ButtonSegment>[
              ButtonSegment(value: 0, label: Text('Adicionar')),
              ButtonSegment(value: 1, label: Text('Remover')),
            ],
            selected: {selection},
            onSelectionChanged: (Set<dynamic> selected) {
              setState(() {
                selection = selected.last;
                price.text = "";
                ticker.text = "";
              });
            },
          ),
          const SizedBox(height: 30),
          selection == 0
              ? TextFieldFinance(controller: ticker, label: "Ativo")
              : DropdownButton<Ticker>(
                  hint: Text("Selecione um ticker"),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (Ticker? value) {
                    setState(() {
                      dropdownValue = value!;
                      quantity.text = value.quantity.toString();
                      total.text = toCurrency(value.total!);
                    });
                  },
                  items: list.map<DropdownMenuItem<Ticker>>((value) {
                    return DropdownMenuItem<Ticker>(
                      value: value,
                      child: Text(
                        value.name,
                        style: TextStyle(fontSize: 16),
                      ),
                    );
                  }).toList(),
                ),
          const SizedBox(height: 15),
          TextFieldFinance(controller: quantity, label: "Quantidade"),
          const SizedBox(height: 15),
          selection == 0
              ? TextFieldFinance(controller: price, label: "Preço do ativo")
              : const SizedBox.shrink(),
          const SizedBox(height: 15),
          TextFieldFinance(controller: total, label: "Total"),
          const SizedBox(height: 50),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                if (isValidated) {
                  tickerCubit.updateTicker(
                      Ticker(
                          name: ticker.text.isEmpty
                              ? dropdownValue!.name
                              : ticker.text,
                          total: double.parse(removeCurrencySymbol(total.text)),
                          quantity: double.parse(quantity.text),
                          price: double.tryParse(
                              removeCurrencySymbol(price.text))),
                      selection == 1 ? true : false);
                  mainScaffoldCubit.changePage(0);
                } else {
                  makeToast("Preencha todos os campos");
                }
              },
              child: const Text("Confirmar"),
            ),
          )
        ],
      ),
    );
  }

  bool get isValidated {
    if (selection == 0 &&
        ticker.text.isNotEmpty &&
        quantity.text.isNotEmpty &&
        price.text.isNotEmpty &&
        total.text.isNotEmpty) {
      return true;
    }
    if (selection == 1 &&
        dropdownValue != null &&
        quantity.text.isNotEmpty &&
        total.text.isNotEmpty) {
      return true;
    }
    return false;
  }
}
