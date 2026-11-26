import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextEditingController? controller;
  final IconData? prefixIcon_;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.controller,
    this.prefixIcon_
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon_)
      ),
    );
  }
}
