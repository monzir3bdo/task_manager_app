import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      required this.controller,
      this.validator,
      this.hintText,
      this.maxLines});
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
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
