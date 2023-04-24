import 'package:flutter/material.dart';

class MainScaffoldState {
  MainScaffoldState(
      {required this.navSelection,
      required this.fabSelection,
      required this.isFabClicked});

  MainScaffoldState.initial()
      : this(navSelection: 0, fabSelection: 0, isFabClicked: false);

  final int navSelection;
  final int fabSelection;
  final bool isFabClicked;

}

FloatingActionButton? selectCorrectFab(int fabSelection, Function() onPressed) {
  switch (fabSelection) {
    case 0:
      {
        return FloatingActionButton(
            onPressed: onPressed, child: const Icon(Icons.add));
      }
    case 1:
      {
        return FloatingActionButton(
            onPressed: onPressed, child: const Icon(Icons.attach_money));
      }
    case 2:
      {
        return FloatingActionButton(
            onPressed: onPressed, child: const Icon(Icons.edit));
      }
  }
  return null;
}
