import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TickerRow extends StatelessWidget {
  const TickerRow(
      {Key? key, required this.title, required this.first, required this.second})
      : super(key: key);

  final String title;
  final String? first;
  final String second;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Text(title, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            Text(second, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 40),
            first != null
                ? Text(first!, style: const TextStyle(fontSize: 16))
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
