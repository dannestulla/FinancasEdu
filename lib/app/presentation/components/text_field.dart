import 'package:flutter/material.dart';

class TextFieldFinance extends StatelessWidget {
  const TextFieldFinance(
      {Key? key,
      required this.controller,
      required this.label,
      this.enabled = true})
      : super(key: key);
  final TextEditingController controller;
  final String label;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        enabled: enabled,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return "Preencha o campo";
          }
          return null;
        },
        decoration: InputDecoration(
            border: const OutlineInputBorder(), label: Text(label)),
      ),
    );
  }
}
