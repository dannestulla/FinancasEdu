import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavList = const [
  BottomNavigationBarItem(
    label: "Patrimonio",
    activeIcon: Icon(Icons.home),
    icon: Icon(Icons.home),
  ),
  BottomNavigationBarItem(
    label: "Carteira atual",
    icon: Icon(Icons.swap_vert),
  ),
  BottomNavigationBarItem(
    label: "Editar carteira",
    icon: Icon(Icons.create_new_folder),
  ),
  BottomNavigationBarItem(
    label: "Ordens",
    icon: Icon(Icons.menu_open),
  )
];