import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TickerRowEditable extends StatelessWidget {
  const TickerRowEditable(
      {Key? key, required this.title, required this.first, required this.second,  this.enabled = true})
      : super(key: key);

  final String title;
  final String? first;
  final String second;
  final bool enabled;

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
            //Text(total, style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 40),
            Spacer(),
            SizedBox(width: 50,child: TextFormField(
                decoration: InputDecoration(

                    border: const OutlineInputBorder()),
                enabled: enabled,
                initialValue: first!.replaceAll("%", "")),
            ),
            Text("%", style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}
