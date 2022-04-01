import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;

  const MyInputField({
    Key? key,
    required this.labelText,
    required this.obscureText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        validator: (input) {
          if (obscureText) {
            if (input!.length < 4) {
              return "Password should be at-least 4 characters";
            }
          } else if (input!.isEmpty) {
            return 'Enter $labelText';
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        controller: controller,
        obscureText: obscureText,
      ),
    );
  }
}
