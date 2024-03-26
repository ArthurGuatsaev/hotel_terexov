import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final TextInputType? type;
  final Function(String value) func;

  const MyTextField({
    super.key,
    this.type,
    required this.hint,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.only(
          left: 12,
          bottom: 5,
          top: 20,
        ),
      ),
      onChanged: func,
    );
  }
}
