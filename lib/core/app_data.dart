import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String toCurrency(double amount) {
  return NumberFormat.simpleCurrency(locale: 'pt-BR').format(amount);
}

String toPercentage(double? amount) {
  return NumberFormat.percentPattern('pt-BR').format(amount ??= 0);
}

String removeCurrencySymbol(String string) {
  return string.replaceAll("R\$", "").replaceAll(",", "");
}
