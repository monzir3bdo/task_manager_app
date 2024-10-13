import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key, required this.controller, this.validator, this.hintText});
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
      ),
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
    );
  }
}
