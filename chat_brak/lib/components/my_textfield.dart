import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final TextEditingController control;
  const MyTextField(
      {super.key,
      required this.hint,
      required this.obscure,
      required this.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
          obscureText: obscure,
          controller: control,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary)),
              fillColor: Theme.of(context).colorScheme.secondary,
              filled: true,
              hintText: hint,
              hintStyle:
                  TextStyle(color: Theme.of(context).colorScheme.primary))),
    );
  }
}
